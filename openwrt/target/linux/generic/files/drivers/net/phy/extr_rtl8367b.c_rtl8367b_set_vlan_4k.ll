; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_set_vlan_4k.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_set_vlan_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_4k = type { i32, i32, i32, i32 }

@RTL8367B_TA_VLAN_NUM_WORDS = common dso_local global i32 0, align 4
@RTL8367B_NUM_VIDS = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN0_MEMBER_MASK = common dso_local global i32 0, align 4
@RTL8367B_UNTAG_MASK = common dso_local global i32 0, align 4
@RTL8367B_FIDMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN0_MEMBER_SHIFT = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN0_UNTAG_MASK = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN0_UNTAG_SHIFT = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN1_FID_MASK = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN1_FID_SHIFT = common dso_local global i32 0, align 4
@RTL8367B_TA_ADDR_REG = common dso_local global i32 0, align 4
@RTL8367B_TA_VLAN_VID_MASK = common dso_local global i32 0, align 4
@RTL8367B_TA_CTRL_REG = common dso_local global i32 0, align 4
@RTL8367B_TA_CTRL_CVLAN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)* @rtl8367b_set_vlan_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_set_vlan_4k(%struct.rtl8366_smi* %0, %struct.rtl8366_vlan_4k* %1) #0 {
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
  %11 = load i32, i32* @RTL8367B_TA_VLAN_NUM_WORDS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %16 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTL8367B_NUM_VIDS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %2
  %21 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTL8367B_TA_VLAN0_MEMBER_MASK, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %28 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RTL8367B_UNTAG_MASK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RTL8367B_FIDMAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26, %20, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %100

41:                                               ; preds = %32
  %42 = mul nuw i64 4, %12
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %14, i32 0, i32 %43)
  %45 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %46 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RTL8367B_TA_VLAN0_MEMBER_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @RTL8367B_TA_VLAN0_MEMBER_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %54 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RTL8367B_TA_VLAN0_UNTAG_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @RTL8367B_TA_VLAN0_UNTAG_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = getelementptr inbounds i32, i32* %14, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 16
  %63 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %64 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RTL8367B_TA_VLAN1_FID_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @RTL8367B_TA_VLAN1_FID_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %84, %41
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ARRAY_SIZE(i32* %14)
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @RTL8367B_TA_WRDATA_REG(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %14, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REG_WR(%struct.rtl8366_smi* %76, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %89 = load i32, i32* @RTL8367B_TA_ADDR_REG, align 4
  %90 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %91 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RTL8367B_TA_VLAN_VID_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @REG_WR(%struct.rtl8366_smi* %88, i32 %89, i32 %94)
  %96 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %97 = load i32, i32* @RTL8367B_TA_CTRL_REG, align 4
  %98 = load i32, i32* @RTL8367B_TA_CTRL_CVLAN_WRITE, align 4
  %99 = call i32 @REG_WR(%struct.rtl8366_smi* %96, i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %87, %38
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #2

declare dso_local i32 @RTL8367B_TA_WRDATA_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
