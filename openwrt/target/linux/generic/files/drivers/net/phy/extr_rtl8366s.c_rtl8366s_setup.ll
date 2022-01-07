; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node*, %struct.rtl8366_platform_data* }
%struct.device_node = type { i32 }
%struct.rtl8366_platform_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"applying initvals\0A\00", align 1
@RTL8366S_SGCR = common dso_local global i32 0, align 4
@RTL8366S_SGCR_MAX_LENGTH_MASK = common dso_local global i32 0, align 4
@RTL8366S_SGCR_MAX_LENGTH_1536 = common dso_local global i32 0, align 4
@RTL8366S_SSCR0 = common dso_local global i32 0, align 4
@RTL8366S_SSCR1 = common dso_local global i32 0, align 4
@RTL8366S_VLAN_MEMBERINGRESS_REG = common dso_local global i32 0, align 4
@RTL8366S_PORT_ALL = common dso_local global i32 0, align 4
@RTL8366S_SSCR2 = common dso_local global i32 0, align 4
@RTL8366S_SSCR2_DROP_UNKNOWN_DA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366S_PHY_NO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8366s_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366s_setup(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca %struct.rtl8366_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %6 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %7 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %9, align 8
  store %struct.rtl8366_platform_data* %10, %struct.rtl8366_platform_data** %3, align 8
  %11 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %12 = icmp ne %struct.rtl8366_platform_data* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %18
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %25 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @dev_info(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %53, %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %31 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %36 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @REG_WR(%struct.rtl8366_smi* %35, i32 %43, i32 %51)
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56, %18, %13, %1
  %58 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %59 = load i32, i32* @RTL8366S_SGCR, align 4
  %60 = load i32, i32* @RTL8366S_SGCR_MAX_LENGTH_MASK, align 4
  %61 = load i32, i32* @RTL8366S_SGCR_MAX_LENGTH_1536, align 4
  %62 = call i32 @REG_RMW(%struct.rtl8366_smi* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %64 = load i32, i32* @RTL8366S_SSCR0, align 4
  %65 = call i32 @REG_WR(%struct.rtl8366_smi* %63, i32 %64, i32 0)
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %67 = load i32, i32* @RTL8366S_SSCR1, align 4
  %68 = call i32 @REG_WR(%struct.rtl8366_smi* %66, i32 %67, i32 0)
  %69 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %70 = load i32, i32* @RTL8366S_VLAN_MEMBERINGRESS_REG, align 4
  %71 = load i32, i32* @RTL8366S_PORT_ALL, align 4
  %72 = call i32 @REG_WR(%struct.rtl8366_smi* %69, i32 %70, i32 %71)
  %73 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %74 = load i32, i32* @RTL8366S_SSCR2, align 4
  %75 = load i32, i32* @RTL8366S_SSCR2_DROP_UNKNOWN_DA, align 4
  %76 = call i32 @REG_RMW(%struct.rtl8366_smi* %73, i32 %74, i32 %75, i32 0)
  ret i32 0
}

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
