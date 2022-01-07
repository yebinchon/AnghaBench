; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_vtu_op.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_vtu_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_REG_VTU = common dso_local global i32 0, align 4
@AR7240_VTU_ACTIVE = common dso_local global i32 0, align 4
@AR7240_VTU_OP = common dso_local global i32 0, align 4
@AR7240_VTU_OP_LOAD = common dso_local global i32 0, align 4
@AR7240_VTUDATA_MEMBER = common dso_local global i32 0, align 4
@AR7240_VTUDATA_VALID = common dso_local global i32 0, align 4
@AR7240_REG_VTU_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar7240sw*, i32, i32)* @ar7240_vtu_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar7240_vtu_op(%struct.ar7240sw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar7240sw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  store %struct.ar7240sw* %0, %struct.ar7240sw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %9 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %8, i32 0, i32 0
  %10 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  store %struct.mii_bus* %10, %struct.mii_bus** %7, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %12 = load i32, i32* @AR7240_REG_VTU, align 4
  %13 = load i32, i32* @AR7240_VTU_ACTIVE, align 4
  %14 = call i64 @ar7240sw_reg_wait(%struct.mii_bus* %11, i32 %12, i32 %13, i32 0, i32 5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AR7240_VTU_OP, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @AR7240_VTU_OP_LOAD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32, i32* @AR7240_VTUDATA_MEMBER, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @AR7240_VTUDATA_VALID, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %31 = load i32, i32* @AR7240_REG_VTU_DATA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %23, %17
  %35 = load i32, i32* @AR7240_VTU_ACTIVE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %39 = load i32, i32* @AR7240_REG_VTU, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %16
  ret void
}

declare dso_local i64 @ar7240sw_reg_wait(%struct.mii_bus*, i32, i32, i32, i32) #1

declare dso_local i32 @ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
