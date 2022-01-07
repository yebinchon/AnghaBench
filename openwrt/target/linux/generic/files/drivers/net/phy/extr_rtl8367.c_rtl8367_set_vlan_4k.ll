; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_set_vlan_4k.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_set_vlan_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_4k = type { i32, i32, i32, i32 }

@RTL8367_TA_VLAN_DATA_SIZE = common dso_local global i32 0, align 4
@RTL8367_NUM_VIDS = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_MEMBER_MASK = common dso_local global i32 0, align 4
@RTL8367_UNTAG_MASK = common dso_local global i32 0, align 4
@RTL8367_FIDMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_MEMBER_SHIFT = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_FID_MASK = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_FID_SHIFT = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_UNTAG1_MASK = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_UNTAG1_SHIFT = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_UNTAG2_MASK = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_UNTAG2_SHIFT = common dso_local global i32 0, align 4
@RTL8367_TA_ADDR_REG = common dso_local global i32 0, align 4
@RTL8367_TA_VLAN_VID_MASK = common dso_local global i32 0, align 4
@RTL8367_TA_CTRL_REG = common dso_local global i32 0, align 4
@RTL8367_TA_CTRL_CVLAN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)* @rtl8367_set_vlan_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_set_vlan_4k(%struct.rtl8366_smi* %0, %struct.rtl8366_vlan_4k* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca %struct.rtl8366_vlan_4k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store %struct.rtl8366_vlan_4k* %1, %struct.rtl8366_vlan_4k** %5, align 8
  %11 = load i32, i32* @RTL8367_TA_VLAN_DATA_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %16 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTL8367_NUM_VIDS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %2
  %21 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTL8367_TA_VLAN_MEMBER_MASK, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %28 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RTL8367_UNTAG_MASK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RTL8367_FIDMAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26, %20, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %104

41:                                               ; preds = %32
  %42 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %43 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RTL8367_TA_VLAN_MEMBER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @RTL8367_TA_VLAN_MEMBER_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %51 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RTL8367_TA_VLAN_FID_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @RTL8367_TA_VLAN_FID_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %59 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RTL8367_TA_VLAN_UNTAG1_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @RTL8367_TA_VLAN_UNTAG1_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %64, i32* %65, align 8
  %66 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %67 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 2
  %70 = load i32, i32* @RTL8367_TA_VLAN_UNTAG2_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @RTL8367_TA_VLAN_UNTAG2_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %88, %41
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ARRAY_SIZE(i32* %14)
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @RTL8367_TA_DATA_REG(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %14, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @REG_WR(%struct.rtl8366_smi* %80, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %75

91:                                               ; preds = %75
  %92 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %93 = load i32, i32* @RTL8367_TA_ADDR_REG, align 4
  %94 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %95 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RTL8367_TA_VLAN_VID_MASK, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @REG_WR(%struct.rtl8366_smi* %92, i32 %93, i32 %98)
  %100 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %101 = load i32, i32* @RTL8367_TA_CTRL_REG, align 4
  %102 = load i32, i32* @RTL8367_TA_CTRL_CVLAN_WRITE, align 4
  %103 = call i32 @REG_WR(%struct.rtl8366_smi* %100, i32 %101, i32 %102)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %91, %38
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #2

declare dso_local i32 @RTL8367_TA_DATA_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
