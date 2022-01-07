; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_set_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_set_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }

@RTL8366RB_NUM_VLANS = common dso_local global i64 0, align 8
@RTL8366RB_NUM_VIDS = common dso_local global i64 0, align 8
@RTL8366RB_PRIORITYMAX = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_UNTAG_MASK = common dso_local global i64 0, align 8
@RTL8366RB_FIDMAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_VID_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_PRIORITY_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_PRIORITY_SHIFT = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_UNTAG_SHIFT = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_FID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, %struct.rtl8366_vlan_mc*)* @rtl8366rb_set_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_set_vlan_mc(%struct.rtl8366_smi* %0, i64 %1, %struct.rtl8366_vlan_mc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_mc*, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_mc* %2, %struct.rtl8366_vlan_mc** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @RTL8366RB_NUM_VLANS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %44, label %14

14:                                               ; preds = %3
  %15 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %16 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTL8366RB_NUM_VIDS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %22 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTL8366RB_PRIORITYMAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %28 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RTL8366RB_VLAN_MEMBER_MASK, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %34 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RTL8366RB_VLAN_UNTAG_MASK, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %40 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTL8366RB_FIDMAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32, %26, %20, %14, %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %106

47:                                               ; preds = %38
  %48 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %49 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RTL8366RB_VLAN_VID_MASK, align 8
  %52 = and i64 %50, %51
  %53 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %54 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTL8366RB_VLAN_PRIORITY_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @RTL8366RB_VLAN_PRIORITY_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = or i64 %52, %59
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %60, i64* %61, align 16
  %62 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %63 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTL8366RB_VLAN_MEMBER_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %68 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RTL8366RB_VLAN_UNTAG_MASK, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* @RTL8366RB_VLAN_UNTAG_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = or i64 %66, %73
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %74, i64* %75, align 8
  %76 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %77 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTL8366RB_VLAN_FID_MASK, align 8
  %80 = and i64 %78, %79
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %80, i64* %81, align 16
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %102, %47
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @RTL8366RB_VLAN_MC_BASE(i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %86, i64 %91, i64 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %106

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %82

105:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %99, %44
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i64, i64) #1

declare dso_local i64 @RTL8366RB_VLAN_MC_BASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
