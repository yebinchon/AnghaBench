; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_vtu_op.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_vtu_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8327_REG_VTU_FUNC1 = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_BUSY = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_OP = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_OP_LOAD = common dso_local global i32 0, align 4
@AR8327_REG_VTU_FUNC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8327_vtu_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_vtu_op(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %8 = load i32, i32* @AR8327_REG_VTU_FUNC1, align 4
  %9 = load i32, i32* @AR8327_VTU_FUNC1_BUSY, align 4
  %10 = call i64 @ar8216_wait_bit(%struct.ar8xxx_priv* %7, i32 %8, i32 %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AR8327_VTU_FUNC1_OP, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @AR8327_VTU_FUNC1_OP_LOAD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %21 = load i32, i32* @AR8327_REG_VTU_FUNC0, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* @AR8327_VTU_FUNC1_BUSY, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %29 = load i32, i32* @AR8327_REG_VTU_FUNC1, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %12
  ret void
}

declare dso_local i64 @ar8216_wait_bit(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
