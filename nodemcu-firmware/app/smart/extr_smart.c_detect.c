
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16_t ;
typedef int uint16 ;
struct RxControl {int dummy; } ;
typedef int int16_t ;
typedef int buf ;
struct TYPE_5__ {int flag_match_num; int base_len; int* flag; int cur_base_seq; int base_seq_valid; int ssid_len; int pwd_len; int addr; } ;
struct TYPE_4__ {int password; int ssid; } ;


 int ADDR_MAP_NUM ;
 int ADDR_MATCH_LENGTH ;
 size_t ADDR_MATCH_START ;
 int BASE_LENGTH ;
 size_t BSSID_ADDR ;
 int C_FLAG ;
 size_t DEST_ADDR ;
 int DS_RETRY_MASK ;
 size_t FLAG_MATCH_NUM ;
 int FLAG_NUM ;
 int L_FLAG ;
 int MAC2STR (int*) ;
 char* MACSTR ;
 int NIBBLE_PER_BYTE ;
 int NODE_DBG (char*,...) ;
 int NODE_ERR (char*,...) ;
 int NO_RETRY ;
 int PWD_FLAG ;
 int SEP_1_INDEX ;
 int SEP_NUM ;
 size_t SEQ_ADDR ;
 int SEQ_MAX ;
 size_t SOURCE_ADDR ;
 int SSID_FLAG ;
 int TYPE_SUBTYPE_MASK ;
 int * TYPE_SUBTYPE_QOS_DATA ;
 int alldone ;
 TYPE_2__** am ;
 int* got_password ;
 int* got_ssid ;
 TYPE_2__* matched ;
 scalar_t__ memcmp (int ,int*,int ) ;
 int memcpy (int ,int*,int ) ;
 int os_timer_disarm (int *) ;
 int* password_nibble ;
 scalar_t__ smart_check (int*,int,int ,int*) ;
 int smart_end () ;
 int smart_timer ;
 int* ssid_nibble ;
 TYPE_1__* sta_conf ;

void detect(uint8 *arg, uint16 len){
  uint16_t seq;
  int16_t seq_delta = 0;
  uint16_t byte_num = 0, bit_num = 0;
  int16_t c = 0;
  uint8 *buf = ((void*)0);
  if( len == 12 ){
    return;
  } else if (len >= 64){
    buf = arg + sizeof(struct RxControl);
  } else {
    return;
  }
  if( ( (buf[0]) & TYPE_SUBTYPE_MASK) != TYPE_SUBTYPE_QOS_DATA){
    return;
  }
  if( (buf[1] & DS_RETRY_MASK) != NO_RETRY )
    return;
  if( buf[SEQ_ADDR] & 0xF != 0 )
    return;

  seq = buf[SEQ_ADDR+1];
  seq = seq<<4;
  seq += buf[SEQ_ADDR]>>4;

  if(!matched){
    int i;
    for (i = 0; i < ADDR_MAP_NUM; i++)
    {
      if ( am[i]->flag_match_num == 0 ){
        if ( len - am[i]->base_len == am[i]->flag[0])
        {

          memcpy(am[i]->addr, &buf[ADDR_MATCH_START], ADDR_MATCH_LENGTH);
          am[i]->flag_match_num++;
          am[i]->cur_base_seq = seq;
          am[i]->base_seq_valid = 1;

        }
        break;
      }
      else if(0 == memcmp(am[i]->addr, &buf[ADDR_MATCH_START], ADDR_MATCH_LENGTH)){
        if(am[i]->base_seq_valid == 0){
          if ( len - am[i]->base_len == am[i]->flag[0]) {

            am[i]->cur_base_seq = seq;
            am[i]->base_seq_valid = 1;

          }
          break;
        }


        if(seq >= am[i]->cur_base_seq){
          seq_delta = seq - am[i]->cur_base_seq;
        } else {
          seq_delta = SEQ_MAX - am[i]->cur_base_seq + seq;
        }

        if(seq_delta < 0){
          am[i]->base_seq_valid = 0;
          break;
        }

        if(seq_delta == 0){
          if ( len - am[i]->base_len != am[i]->flag[0]) {
            am[i]->base_seq_valid = 0;
          }
          break;
        }


        if (seq_delta>=FLAG_NUM){
          am[i]->flag_match_num = 1;
          if ( len - am[i]->base_len == am[i]->flag[0]) {

            am[i]->cur_base_seq = seq;
            am[i]->base_seq_valid = 1;
          } else {
            am[i]->base_seq_valid = 0;
          }
          break;
        }




        if ( (am[i]->flag_match_num==seq_delta) && ( (am[i]->flag[am[i]->flag_match_num]==len-am[i]->base_len) || (am[i]->flag[am[i]->flag_match_num]==0) ) ){

          am[i]->flag_match_num++;
          if(am[i]->flag_match_num == FLAG_MATCH_NUM){
            NODE_ERR("Smart: got matched sender\n");
            matched = am[i];
            matched->base_seq_valid = 0;
            os_timer_disarm(&smart_timer);
          }
          break;
        }


        am[i]->flag_match_num = 1;
        am[i]->base_seq_valid = 0;
        break;
      }
    }

    goto end;
  } else {
    if(0 != memcmp(matched->addr, &buf[ADDR_MATCH_START], ADDR_MATCH_LENGTH)){
      return;
    }
    if (matched->base_seq_valid == 0){

      if (len - matched->base_len == SSID_FLAG){
        matched->cur_base_seq = seq;
        matched->base_seq_valid = 1;
      }
      goto end;
    }

    if(seq >= matched->cur_base_seq){
      seq_delta = seq - matched->cur_base_seq;
    } else {
      seq_delta = SEQ_MAX - matched->cur_base_seq + seq;
    }

    if(seq_delta < 0){
      matched->base_seq_valid = 0;
      goto end;
    }

    if(seq_delta == 0){
      if ( len - matched->base_len != SSID_FLAG) {
        matched->base_seq_valid = 0;
      }
      goto end;
    }

    if ( seq_delta > (SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) + 1 + (SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->pwd_len) ){


      if (len - matched->base_len == SSID_FLAG){
        matched->cur_base_seq = seq;
        matched->base_seq_valid = 1;
      } else {
        matched->base_seq_valid = 0;
      }
      goto end;
    }


    if (seq_delta==1){
      int16_t ssid_len = len - matched->base_len - L_FLAG;
      if ( matched->ssid_len == 0 ){
        if ( (ssid_len <=32) && (ssid_len >0) ){
          matched->ssid_len = ssid_len;
          NODE_DBG("Smart: found the ssid_len %d\n", matched->ssid_len);
        }
        goto end;
      }
      if (ssid_len != matched->ssid_len){
        matched->base_seq_valid = 0;

        matched->ssid_len = ssid_len;
        NODE_DBG("Smart: ssid_len not match\n");
      }
      goto end;
    }

    if( (SEP_NUM==2)&&(seq_delta==2 || seq_delta==3) ) {
      if (len - matched->base_len != matched->flag[seq_delta-2+SEP_1_INDEX]){
        matched->base_seq_valid = 0;
        NODE_DBG("Smart: SEP-L not match\n");
      }
      goto end;
    }

    if( seq_delta==(SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) + 1) {
      if (len - matched->base_len != PWD_FLAG){
        matched->base_seq_valid = 0;
        NODE_DBG("Smart: PWD_FLAG not match\n");
      }
      goto end;
    }

    if (seq_delta==(SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) + 1 + 1){
      int16_t pwd_len = len - matched->base_len - L_FLAG;
      if ( matched->pwd_len == 0){
        if ( (pwd_len <=64) && (pwd_len>0)){
          matched->pwd_len = pwd_len;
          NODE_DBG("Smart: found the pwd_len %d\n", matched->pwd_len);
        }
        goto end;
      }
      if (pwd_len != matched->pwd_len){
        matched->base_seq_valid = 0;

        matched->pwd_len = pwd_len;
        NODE_DBG("Smart: pwd_len not match\n");
      }
      goto end;
    }

    if (seq_delta <= (SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) ){
      uint16_t it = (seq_delta-1-SEP_NUM-1) / (SEP_NUM + 1);
      uint16_t m = (seq_delta-1-SEP_NUM-1) % (SEP_NUM + 1);
      switch(m){
        case 0:
          c = (int16_t)(len - matched->base_len - C_FLAG);
          if (c>255 || c<0){
            matched->base_seq_valid = 0;
            NODE_DBG("Smart: wrong ssid nibble\n");
            goto end;
          }
          byte_num = it / 8;
          bit_num = it % 8;
          if( (got_ssid[byte_num] & (0x1 << bit_num)) == 0){
            got_ssid[byte_num] |= 0x1 << bit_num;
            ssid_nibble[it] = c;
          }
          break;
        case 1:
        case 2:
          if(len - matched->base_len != matched->flag[m-1+SEP_1_INDEX]){
            NODE_DBG("Smart: SEP-S not match\n");
            matched->base_seq_valid = 0;
            goto end;
          }
          break;
        default:
          break;
      }
    } else {
      uint16_t it = (seq_delta -1 -(SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) - 2 - SEP_NUM) / (SEP_NUM + 1);
      uint16_t m = (seq_delta -1 -(SEP_NUM + 1)*(1+NIBBLE_PER_BYTE*matched->ssid_len) - 2 - SEP_NUM) % (SEP_NUM + 1);
      switch(m){
        case 0:
          c = (int16_t)(len - matched->base_len - C_FLAG);
          if (c>255 || c<0){
            matched->base_seq_valid = 0;
            NODE_DBG("Smart: wrong password nibble\n");
            goto end;
          }
          byte_num = it / 8;
          bit_num = it % 8;
          if( (got_password[byte_num] & (0x1 << bit_num)) == 0){
            got_password[byte_num] |= 0x1 << bit_num;
            password_nibble[it] = c;
          }
          break;
        case 1:
        case 2:
          if(len - matched->base_len != matched->flag[m-1+SEP_1_INDEX]){
            NODE_DBG("Smart: SEP-P not match\n");
            matched->base_seq_valid = 0;
            goto end;
          }
          break;
        default:
          break;
      }
    }



    int i,j;
    for(i=0;i<NIBBLE_PER_BYTE*matched->ssid_len;i++){
      byte_num = (i) / 8;
      bit_num = (i) % 8;
      if( (got_ssid[byte_num] & (0x1 << bit_num) ) != (0x1 << bit_num) ){
        break;
      }
    }
    for(j=0;j<NIBBLE_PER_BYTE*matched->pwd_len;j++){
      byte_num = (j) / 8;
      bit_num = (j) % 8;
      if( (got_password[byte_num] & (0x1 << bit_num) ) != (0x1 << bit_num) ){
        break;
      }
    }
    if(matched->ssid_len > 0 && matched->pwd_len > 0 && i==NIBBLE_PER_BYTE*matched->ssid_len && j==NIBBLE_PER_BYTE*matched->pwd_len){
      if( smart_check(ssid_nibble, NIBBLE_PER_BYTE*matched->ssid_len, sta_conf->ssid, got_ssid) && smart_check(password_nibble, NIBBLE_PER_BYTE*matched->pwd_len, sta_conf->password, got_password) ){


        alldone = 1;
        NODE_ERR(sta_conf->ssid);
        NODE_ERR(" %d\n", matched->ssid_len);
        NODE_ERR(sta_conf->password);
        NODE_ERR(" %d\n", matched->pwd_len);
        smart_end();





        return;
      }
    }
  }

end:
  return;
}
