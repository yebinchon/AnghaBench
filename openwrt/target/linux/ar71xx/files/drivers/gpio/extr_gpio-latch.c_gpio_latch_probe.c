
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_latch_platform_data {size_t le_gpio_index; size_t num_gpios; int* gpios; int base; int le_active_low; } ;
struct gpio_chip {int can_sleep; int ngpio; int direction_output; int direction_input; int set; int get; int base; int label; } ;
struct gpio_latch_chip {struct gpio_chip gc; int le_active_low; int * gpios; int le_gpio; int latch_mutex; int mutex; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_LATCH_DRIVER_NAME ;
 struct gpio_latch_platform_data* dev_get_platdata (int *) ;
 int devm_gpio_request (int *,int,int ) ;
 void* devm_kzalloc (int *,int,int ) ;
 int gpio_latch_direction_input ;
 int gpio_latch_direction_output ;
 int gpio_latch_get ;
 int gpio_latch_set ;
 int gpiochip_add (struct gpio_chip*) ;
 int memcpy (int *,int*,int) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_latch_chip*) ;

__attribute__((used)) static int gpio_latch_probe(struct platform_device *pdev)
{
 struct gpio_latch_chip *glc;
 struct gpio_latch_platform_data *pdata;
 struct gpio_chip *gc;
 int size;
 int ret;
 int i;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata)
  return -EINVAL;

 if (pdata->le_gpio_index >= pdata->num_gpios ||
     !pdata->num_gpios ||
     !pdata->gpios)
  return -EINVAL;

 for (i = 0; i < pdata->num_gpios; i++) {
  int gpio = pdata->gpios[i];

  ret = devm_gpio_request(&pdev->dev, gpio,
     GPIO_LATCH_DRIVER_NAME);
  if (ret)
   return ret;
 }

 glc = devm_kzalloc(&pdev->dev, sizeof(*glc), GFP_KERNEL);
 if (!glc)
  return -ENOMEM;

 mutex_init(&glc->mutex);
 mutex_init(&glc->latch_mutex);

 size = pdata->num_gpios * sizeof(glc->gpios[0]);
 glc->gpios = devm_kzalloc(&pdev->dev, size , GFP_KERNEL);
 if (!glc->gpios)
  return -ENOMEM;

 memcpy(glc->gpios, pdata->gpios, size);

 glc->le_gpio = glc->gpios[pdata->le_gpio_index];
 glc->le_active_low = pdata->le_active_low;

 gc = &glc->gc;

 gc->label = GPIO_LATCH_DRIVER_NAME;
 gc->base = pdata->base;
 gc->can_sleep = 1;
 gc->ngpio = pdata->num_gpios;
 gc->get = gpio_latch_get;
 gc->set = gpio_latch_set;
 gc->direction_input = gpio_latch_direction_input,
 gc->direction_output = gpio_latch_direction_output;

 platform_set_drvdata(pdev, glc);

 ret = gpiochip_add(&glc->gc);
 if (ret)
  return ret;

 return 0;
}
