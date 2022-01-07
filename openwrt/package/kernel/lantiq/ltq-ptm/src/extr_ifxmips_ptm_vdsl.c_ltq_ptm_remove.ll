; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ltq_ptm_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ltq_ptm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@ifx_mei_atm_showtime_enter = common dso_local global i32* null, align 8
@ifx_mei_atm_showtime_exit = common dso_local global i32* null, align 8
@PPE_MAILBOX_IGU1_INT = common dso_local global i32 0, align 4
@g_ptm_priv_data = common dso_local global i32 0, align 4
@g_net_dev = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_ptm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_ptm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32* null, i32** @ifx_mei_atm_showtime_enter, align 8
  store i32* null, i32** @ifx_mei_atm_showtime_exit, align 8
  %4 = call i32 @ifx_pp32_stop(i32 0)
  %5 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %6 = call i32 @free_irq(i32 %5, i32* @g_ptm_priv_data)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32**, i32*** @g_net_dev, align 8
  %10 = call i32 @ARRAY_SIZE(i32** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32**, i32*** @g_net_dev, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @unregister_netdev(i32* %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %7

22:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32**, i32*** @g_net_dev, align 8
  %26 = call i32 @ARRAY_SIZE(i32** %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i32**, i32*** @g_net_dev, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @free_netdev(i32* %33)
  %35 = load i32**, i32*** @g_net_dev, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %23

42:                                               ; preds = %23
  %43 = call i32 (...) @clear_tables()
  %44 = call i32 (...) @ifx_ptm_uninit_chip()
  %45 = call i32 (...) @clear_priv_data()
  ret i32 0
}

declare dso_local i32 @ifx_pp32_stop(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @clear_tables(...) #1

declare dso_local i32 @ifx_ptm_uninit_chip(...) #1

declare dso_local i32 @clear_priv_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
