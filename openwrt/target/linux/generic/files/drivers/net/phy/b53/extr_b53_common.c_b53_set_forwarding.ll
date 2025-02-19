; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_set_forwarding.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_set_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_SWITCH_MODE = common dso_local global i32 0, align 4
@SM_SW_FWD_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_set_forwarding(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %7 = load i32, i32* @B53_CTRL_PAGE, align 4
  %8 = load i32, i32* @B53_SWITCH_MODE, align 4
  %9 = call i32 @b53_read8(%struct.b53_device* %6, i32 %7, i32 %8, i32* %5)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @SM_SW_FWD_EN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @SM_SW_FWD_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = load i32, i32* @B53_CTRL_PAGE, align 4
  %24 = load i32, i32* @B53_SWITCH_MODE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @b53_write8(%struct.b53_device* %22, i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
