
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t line_position; char* line; int done; int len; int prmt; } ;
typedef TYPE_1__ lua_Load ;


 scalar_t__ end_char ;
 char last_nl_char ;
 size_t need_len ;
 int puts (int ) ;
 scalar_t__ run_input ;
 scalar_t__ uart0_echo ;
 scalar_t__ uart_getc (char*) ;
 int uart_on_data_cb (char*,size_t) ;
 int uart_putc (char) ;

__attribute__((used)) static bool readline(lua_Load *load){

  bool need_dojob = 0;
  char ch;
  while (uart_getc(&ch))
  {
    if(run_input)
    {
      char tmp_last_nl_char = last_nl_char;

      last_nl_char = '\0';



      if ((ch == '\r' && tmp_last_nl_char == '\n') ||
          (ch == '\n' && tmp_last_nl_char == '\r'))
      {
        continue;
      }


      else if (ch == 0x7f || ch == 0x08)
      {
        if (load->line_position > 0)
        {
          if(uart0_echo) uart_putc(0x08);
          if(uart0_echo) uart_putc(' ');
          if(uart0_echo) uart_putc(0x08);
          load->line_position--;
        }
        load->line[load->line_position] = 0;
        continue;
      }
      if (ch == '\r' || ch == '\n')
      {
        last_nl_char = ch;

        load->line[load->line_position] = 0;
        if(uart0_echo) uart_putc('\n');
        uart_on_data_cb(load->line, load->line_position);
        if (load->line_position == 0)
        {

          puts(load->prmt);
          continue;
        } else {
          load->done = 1;
          need_dojob = 1;
          break;
        }
      }
      if(uart0_echo) uart_putc(ch);


      if ( load->line_position + 1 >= load->len ){
        load->line_position = 0;
      }
    }

    load->line[load->line_position] = ch;
    load->line_position++;

    if(!run_input)
    {
      if( ((need_len!=0) && (load->line_position >= need_len)) || (load->line_position >= load->len) || ((end_char>=0) && ((unsigned char)ch==(unsigned char)end_char)) )


      {
        uart_on_data_cb(load->line, load->line_position);
        load->line_position = 0;
      }
    }

    ch = 0;
  }

  if( (load->line_position > 0) && (!run_input) && (need_len==0) && (end_char<0) )
  {
    uart_on_data_cb(load->line, load->line_position);
    load->line_position = 0;
  }

  return need_dojob;
}
