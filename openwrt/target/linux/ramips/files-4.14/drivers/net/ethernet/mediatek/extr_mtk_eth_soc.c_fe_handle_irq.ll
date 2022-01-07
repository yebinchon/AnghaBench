; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_handle_irq.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FE_REG_FE_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fe_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fe_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.fe_priv* @netdev_priv(i8* %9)
  store %struct.fe_priv* %10, %struct.fe_priv** %6, align 8
  %11 = load i32, i32* @FE_REG_FE_INT_STATUS, align 4
  %12 = call i32 @fe_reg_r32(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %28 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %40 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %39, i32 0, i32 0
  %41 = call i32 @napi_schedule_prep(i32* %40)
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @fe_int_disable(i32 %45)
  %47 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %47, i32 0, i32 0
  %49 = call i32 @__napi_schedule(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %55

51:                                               ; preds = %21
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FE_REG_FE_INT_STATUS, align 4
  %54 = call i32 @fe_reg_w32(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.fe_priv* @netdev_priv(i8*) #1

declare dso_local i32 @fe_reg_r32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @fe_int_disable(i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @fe_reg_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
