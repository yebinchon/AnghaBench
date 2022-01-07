
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ AR71XX_GPIO_BASE ;
 int AR71XX_GPIO_FUNC_UART_EN ;
 int AR91XX_GPIO_FUNC_UART_EN ;
 int CONFIG_BAUDRATE ;
 scalar_t__ GPIO_REG_FUNC ;
 int KSEG1ADDR (scalar_t__) ;
 int OFS_DATA_FORMAT ;
 int OFS_DIVISOR_LSB ;
 int OFS_DIVISOR_MSB ;
 int OFS_INTR_ENABLE ;
 int OFS_LINE_CONTROL ;
 int UART16550_WRITE (int ,int) ;
 int ar71xx_sys_frequency (int ,int ,int*) ;
 int writel (int ,int ) ;

int serial_init(void)
{
    u32 div;
    u32 ahb_freq = 100000000;

    ar71xx_sys_frequency (0, 0, &ahb_freq);
    div = ahb_freq/(16 * CONFIG_BAUDRATE);



    writel(AR71XX_GPIO_FUNC_UART_EN, KSEG1ADDR(AR71XX_GPIO_BASE + GPIO_REG_FUNC));





    UART16550_WRITE(OFS_LINE_CONTROL, 0x80);


    UART16550_WRITE(OFS_DIVISOR_LSB, (div & 0xff));
    UART16550_WRITE(OFS_DIVISOR_MSB, ((div >> 8) & 0xff));


    UART16550_WRITE(OFS_LINE_CONTROL, 0x00);


    UART16550_WRITE(OFS_DATA_FORMAT, 0x3);

    UART16550_WRITE(OFS_INTR_ENABLE, 0);

 return 0;
}
