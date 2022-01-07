
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int member_0; } ;
struct PayloadsUDP {int dummy; } ;
typedef int ports ;
typedef int line ;
typedef int buf ;
typedef int FILE ;


 int fprintf (int ,char*,char const*,unsigned int) ;
 int get_next_line (int *,unsigned int*,char*,int) ;
 int isdigit (char) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memmove (char*,char const*,scalar_t__) ;
 int memset (struct RangeList*,int ,int) ;
 char* parse_c_string (unsigned char*,size_t*,int,char*) ;
 int payloads_datagram_add (struct PayloadsUDP*,unsigned char*,size_t,struct RangeList*,unsigned int,int ) ;
 char* rangelist_parse_ports (struct RangeList*,char*,unsigned int*,int ) ;
 int rangelist_remove_all (struct RangeList*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strtoul (char*,int ,int ) ;
 int trim (char*,int) ;

void
payloads_udp_readfile(FILE *fp, const char *filename,
                   struct PayloadsUDP *payloads)
{
    char line[16384];
    unsigned line_number = 0;


    line[0] = '\0';

    for (;;) {
        unsigned is_error = 0;
        const char *p;
        struct RangeList ports[1] = {{0}};
        unsigned source_port = 0x10000;
        unsigned char buf[1500] = {0};
        size_t buf_length = 0;

        memset(ports, 0, sizeof(ports[0]));


        if (!get_next_line(fp, &line_number, line, sizeof(line)))
            break;

        if (memcmp(line, "udp", 3) != 0) {
            fprintf(stderr, "%s:%u: syntax error, expected \"udp\".\n",
                filename, line_number);
            goto end;
        } else
            memmove(line, line+3, strlen(line));
        trim(line, sizeof(line));



        if (!get_next_line(fp, &line_number, line, sizeof(line)))
            break;
        p = rangelist_parse_ports(ports, line, &is_error, 0);
        if (is_error) {
            fprintf(stderr, "%s:%u: syntax error, expected ports\n",
                filename, line_number);
            goto end;
        }
        memmove(line, p, strlen(p)+1);
        trim(line, sizeof(line));


        for (;;) {
            trim(line, sizeof(line));
            if (!get_next_line(fp, &line_number, line, sizeof(line)))
                break;
            if (line[0] != '\"')
                break;

            p = parse_c_string(buf, &buf_length, sizeof(buf), line);
            memmove(line, p, strlen(p)+1);
            trim(line, sizeof(line));
        }


        if (memcmp(line, "source", 6) == 0) {
            memmove(line, line+6, strlen(line+5));
            trim(line, sizeof(line));
            if (!isdigit(line[0])) {
                fprintf(stderr, "%s:%u: expected source port\n",
                        filename, line_number);
                goto end;
            }
            source_port = (unsigned)strtoul(line, 0, 0);
            line[0] = '\0';
        }





  if (buf_length)
   payloads_datagram_add(payloads, buf, buf_length, ports, source_port, 0);

        rangelist_remove_all(ports);
    }

end:
    ;
}
