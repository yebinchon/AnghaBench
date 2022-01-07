; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ltq_ptm_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ltq_ptm_remove.c"
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
  %4 = call i32 (...) @proc_file_delete()
  %5 = call i32 @ifx_pp32_stop(i32 0)
  %6 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %7 = call i32 @free_irq(i32 %6, i32* @g_ptm_priv_data)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32**, i32*** @g_net_dev, align 8
  %11 = call i32 @ARRAY_SIZE(i32** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32**, i32*** @g_net_dev, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @unregister_netdev(i32* %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32**, i32*** @g_net_dev, align 8
  %27 = call i32 @ARRAY_SIZE(i32** %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32**, i32*** @g_net_dev, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free_netdev(i32* %34)
  %36 = load i32**, i32*** @g_net_dev, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %24

43:                                               ; preds = %24
  %44 = call i32 (...) @ifx_ptm_uninit_chip()
  %45 = call i32 (...) @clear_priv_data()
  ret i32 0
}

declare dso_local i32 @proc_file_delete(...) #1

declare dso_local i32 @ifx_pp32_stop(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @ifx_ptm_uninit_chip(...) #1

declare dso_local i32 @clear_priv_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
