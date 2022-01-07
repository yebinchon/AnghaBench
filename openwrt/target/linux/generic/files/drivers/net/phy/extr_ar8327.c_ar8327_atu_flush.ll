; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_atu_flush.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_atu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8327_REG_ATU_FUNC = common dso_local global i32 0, align 4
@AR8327_ATU_FUNC_BUSY = common dso_local global i32 0, align 4
@AR8327_ATU_FUNC_OP_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8327_atu_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_atu_flush(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %4 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %5 = load i32, i32* @AR8327_REG_ATU_FUNC, align 4
  %6 = load i32, i32* @AR8327_ATU_FUNC_BUSY, align 4
  %7 = call i32 @ar8216_wait_bit(%struct.ar8xxx_priv* %4, i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %12 = load i32, i32* @AR8327_REG_ATU_FUNC, align 4
  %13 = load i32, i32* @AR8327_ATU_FUNC_OP_FLUSH, align 4
  %14 = load i32, i32* @AR8327_ATU_FUNC_BUSY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %11, i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @ar8216_wait_bit(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
