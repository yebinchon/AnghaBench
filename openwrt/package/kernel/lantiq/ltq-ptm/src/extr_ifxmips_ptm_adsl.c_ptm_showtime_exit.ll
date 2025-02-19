; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_showtime_exit.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_showtime_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_showtime = common dso_local global i64 0, align 8
@g_net_dev = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"leave showtime\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ptm_showtime_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_showtime_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @g_showtime, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %24

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %19, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32*, i32** @g_net_dev, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32*, i32** @g_net_dev, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_carrier_off(i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %7

22:                                               ; preds = %7
  store i64 0, i64* @g_showtime, align 8
  %23 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
