
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct cns3xxx_spi {int dummy; } ;


 struct cns3xxx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline struct cns3xxx_spi *to_hw(struct spi_device *sdev)
{
 return spi_master_get_devdata(sdev->master);
}
