; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_write_vlan_entry.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_write_vlan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i32 }

@REG_ESW_VLAN_VAWD1 = common dso_local global i32 0, align 4
@REG_ESW_VLAN_VAWD1_IVL_MAC = common dso_local global i32 0, align 4
@REG_ESW_VLAN_VAWD1_VTAG_EN = common dso_local global i32 0, align 4
@REG_ESW_VLAN_VAWD1_VALID = common dso_local global i32 0, align 4
@MT7530_NUM_PORTS = common dso_local global i32 0, align 4
@ETAG_CTRL_TAG = common dso_local global i32 0, align 4
@ETAG_CTRL_UNTAG = common dso_local global i32 0, align 4
@REG_ESW_VLAN_VAWD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, i32, i32, i32, i32)* @mt7530_write_vlan_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_write_vlan_entry(%struct.mt7530_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mt7530_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REG_ESW_VLAN_VTIM(i32 %14)
  %16 = call i32 @mt7530_r32(%struct.mt7530_priv* %13, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 16773120
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %12, align 4
  br label %33

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, 4095
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 12
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @REG_ESW_VLAN_VTIM(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @mt7530_w32(%struct.mt7530_priv* %34, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %43 = load i32, i32* @REG_ESW_VLAN_VAWD1, align 4
  %44 = load i32, i32* @REG_ESW_VLAN_VAWD1_IVL_MAC, align 4
  %45 = load i32, i32* @REG_ESW_VLAN_VAWD1_VTAG_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = load i32, i32* @REG_ESW_VLAN_VAWD1_VALID, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mt7530_w32(%struct.mt7530_priv* %42, i32 %43, i32 %51)
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %55 = load i32, i32* @REG_ESW_VLAN_VAWD1, align 4
  %56 = call i32 @mt7530_w32(%struct.mt7530_priv* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %41
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MT7530_NUM_PORTS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @ETAG_CTRL_TAG, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 2
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %82

75:                                               ; preds = %62
  %76 = load i32, i32* @ETAG_CTRL_UNTAG, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 2
  %79 = shl i32 %76, %78
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %88 = load i32, i32* @REG_ESW_VLAN_VAWD2, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @mt7530_w32(%struct.mt7530_priv* %87, i32 %88, i32 %89)
  %91 = load %struct.mt7530_priv*, %struct.mt7530_priv** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @mt7530_vtcr(%struct.mt7530_priv* %91, i32 1, i32 %92)
  ret void
}

declare dso_local i32 @mt7530_r32(%struct.mt7530_priv*, i32) #1

declare dso_local i32 @REG_ESW_VLAN_VTIM(i32) #1

declare dso_local i32 @mt7530_w32(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7530_vtcr(%struct.mt7530_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
