; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_write_vlan_entry.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_write_vlan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@VAWD1 = common dso_local global i32 0, align 4
@IVL_MAC = common dso_local global i32 0, align 4
@VTAG_EN = common dso_local global i32 0, align 4
@VENTRY_VALID = common dso_local global i32 0, align 4
@PORT_MEM_S = common dso_local global i32 0, align 4
@PORT_MEM_M = common dso_local global i32 0, align 4
@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@ETAG_CTRL_TAG = common dso_local global i32 0, align 4
@ETAG_CTRL_UNTAG = common dso_local global i32 0, align 4
@VAWD2 = common dso_local global i32 0, align 4
@VTCR_WRITE_VLAN_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32, i32, i32, i32)* @mt753x_write_vlan_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt753x_write_vlan_entry(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gsw_mt753x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %17 = load i32, i32* @VAWD1, align 4
  %18 = load i32, i32* @IVL_MAC, align 4
  %19 = load i32, i32* @VTAG_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VENTRY_VALID, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PORT_MEM_S, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @PORT_MEM_M, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %22, %27
  %29 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %16, i32 %17, i32 %28)
  br label %34

30:                                               ; preds = %5
  %31 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %32 = load i32, i32* @VAWD1, align 4
  %33 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %15
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @ETAG_CTRL_TAG, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PORT_ETAG_S(i32 %47)
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @ETAG_CTRL_UNTAG, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @PORT_ETAG_S(i32 %54)
  %56 = shl i32 %53, %55
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %35

63:                                               ; preds = %35
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %65 = load i32, i32* @VAWD2, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %64, i32 %65, i32 %66)
  %68 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %69 = load i32, i32* @VTCR_WRITE_VLAN_ENTRY, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @mt753x_vlan_ctrl(%struct.gsw_mt753x* %68, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PORT_ETAG_S(i32) #1

declare dso_local i32 @mt753x_vlan_ctrl(%struct.gsw_mt753x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
