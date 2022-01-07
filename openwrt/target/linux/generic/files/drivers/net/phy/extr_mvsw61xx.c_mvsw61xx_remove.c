
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mvsw61xx_state {int dev; scalar_t__ registered; } ;


 int kfree (struct mvsw61xx_state*) ;
 struct mvsw61xx_state* platform_get_drvdata (struct platform_device*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static int
mvsw61xx_remove(struct platform_device *pdev)
{
 struct mvsw61xx_state *state = platform_get_drvdata(pdev);

 if (state->registered)
  unregister_switch(&state->dev);

 kfree(state);

 return 0;
}
