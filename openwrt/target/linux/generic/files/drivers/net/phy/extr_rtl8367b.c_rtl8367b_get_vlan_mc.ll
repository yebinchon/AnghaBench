; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_get_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_get_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_mc = type { i64, i64, i64 }

@RTL8367B_VLAN_MC_NUM_WORDS = common dso_local global i32 0, align 4
@RTL8367B_NUM_VLANS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_VLAN_MC0_MEMBER_SHIFT = common dso_local global i64 0, align 8
@RTL8367B_VLAN_MC0_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8367B_VLAN_MC1_FID_SHIFT = common dso_local global i64 0, align 8
@RTL8367B_VLAN_MC1_FID_MASK = common dso_local global i64 0, align 8
@RTL8367B_VLAN_MC3_EVID_SHIFT = common dso_local global i64 0, align 8
@RTL8367B_VLAN_MC3_EVID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, %struct.rtl8366_vlan_mc*)* @rtl8367b_get_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_get_vlan_mc(%struct.rtl8366_smi* %0, i64 %1, %struct.rtl8366_vlan_mc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_mc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_mc* %2, %struct.rtl8366_vlan_mc** %7, align 8
  %13 = load i32, i32* @RTL8367B_VLAN_MC_NUM_WORDS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %18 = call i32 @memset(%struct.rtl8366_vlan_mc* %17, i8 signext 0, i32 24)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RTL8367B_NUM_VLANS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ARRAY_SIZE(i64* %16)
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @RTL8367B_VLAN_MC_BASE(i64 %32)
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %16, i64 %38
  %40 = call i32 @REG_RD(%struct.rtl8366_smi* %31, i64 %36, i64* %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %26

44:                                               ; preds = %26
  %45 = getelementptr inbounds i64, i64* %16, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = load i64, i64* @RTL8367B_VLAN_MC0_MEMBER_SHIFT, align 8
  %48 = ashr i64 %46, %47
  %49 = load i64, i64* @RTL8367B_VLAN_MC0_MEMBER_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %52 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds i64, i64* %16, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RTL8367B_VLAN_MC1_FID_SHIFT, align 8
  %56 = ashr i64 %54, %55
  %57 = load i64, i64* @RTL8367B_VLAN_MC1_FID_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %60 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = getelementptr inbounds i64, i64* %16, i64 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTL8367B_VLAN_MC3_EVID_SHIFT, align 8
  %64 = ashr i64 %62, %63
  %65 = load i64, i64* @RTL8367B_VLAN_MC3_EVID_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %68 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %44, %22
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.rtl8366_vlan_mc*, i8 signext, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i64, i64*) #2

declare dso_local i64 @RTL8367B_VLAN_MC_BASE(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
