; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.rtl8367_platform_data* }
%struct.rtl8367_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"realtek,extif0\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realtek,extif1\00", align 1
@RTL8367_SWC0_REG = common dso_local global i32 0, align 4
@RTL8367_SWC0_MAX_LENGTH_MASK = common dso_local global i32 0, align 4
@RTL8367_SWC0_MAX_LENGTH_1536 = common dso_local global i32 0, align 4
@RTL8367_VLAN_INGRESS_REG = common dso_local global i32 0, align 4
@RTL8367_PORTS_ALL = common dso_local global i32 0, align 4
@RTL8367_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8367_PORT_CFG_EGRESS_MODE_MASK = common dso_local global i32 0, align 4
@RTL8367_PORT_CFG_EGRESS_MODE_SHIFT = common dso_local global i32 0, align 4
@RTL8367_PORT_CFG_EGRESS_MODE_ORIGINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_setup(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca %struct.rtl8367_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.rtl8367_platform_data*, %struct.rtl8367_platform_data** %10, align 8
  store %struct.rtl8367_platform_data* %11, %struct.rtl8367_platform_data** %4, align 8
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %13 = call i32 @rtl8367_init_regs(%struct.rtl8366_smi* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %27 = call i32 @rtl8367_extif_init_of(%struct.rtl8366_smi* %26, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %126

32:                                               ; preds = %25
  %33 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %34 = call i32 @rtl8367_extif_init_of(%struct.rtl8366_smi* %33, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %126

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %18
  %41 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %42 = load %struct.rtl8367_platform_data*, %struct.rtl8367_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.rtl8367_platform_data, %struct.rtl8367_platform_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rtl8367_extif_init(%struct.rtl8366_smi* %41, i32 0, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %126

50:                                               ; preds = %40
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %52 = load %struct.rtl8367_platform_data*, %struct.rtl8367_platform_data** %4, align 8
  %53 = getelementptr inbounds %struct.rtl8367_platform_data, %struct.rtl8367_platform_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rtl8367_extif_init(%struct.rtl8366_smi* %51, i32 1, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %126

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %63 = load i32, i32* @RTL8367_SWC0_REG, align 4
  %64 = load i32, i32* @RTL8367_SWC0_MAX_LENGTH_MASK, align 4
  %65 = load i32, i32* @RTL8367_SWC0_MAX_LENGTH_1536, align 4
  %66 = call i32 @REG_RMW(%struct.rtl8366_smi* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %68 = load i32, i32* @RTL8367_VLAN_INGRESS_REG, align 4
  %69 = load i32, i32* @RTL8367_PORTS_ALL, align 4
  %70 = call i32 @REG_WR(%struct.rtl8366_smi* %67, i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %86, %61
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @RTL8367_NUM_PORTS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @RTL8367_PORT_CFG_REG(i32 %77)
  %79 = load i32, i32* @RTL8367_PORT_CFG_EGRESS_MODE_MASK, align 4
  %80 = load i32, i32* @RTL8367_PORT_CFG_EGRESS_MODE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @RTL8367_PORT_CFG_EGRESS_MODE_ORIGINAL, align 4
  %83 = load i32, i32* @RTL8367_PORT_CFG_EGRESS_MODE_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @REG_RMW(%struct.rtl8366_smi* %76, i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %71

89:                                               ; preds = %71
  %90 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %91 = load i32, i32* @RTL8367_PORTS_ALL, align 4
  %92 = call i32 @rtl8367_led_group_set_ports(%struct.rtl8366_smi* %90, i32 0, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %126

97:                                               ; preds = %89
  %98 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %99 = call i32 @rtl8367_led_group_set_mode(%struct.rtl8366_smi* %98, i32 0)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %126

104:                                              ; preds = %97
  %105 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %106 = call i32 @rtl8367_led_op_select_parallel(%struct.rtl8366_smi* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %126

111:                                              ; preds = %104
  %112 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %113 = call i32 @rtl8367_led_blinkrate_set(%struct.rtl8366_smi* %112, i32 1)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %126

118:                                              ; preds = %111
  %119 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %120 = call i32 @rtl8367_led_group_set_config(%struct.rtl8366_smi* %119, i32 0, i32 2)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %123, %116, %109, %102, %95, %58, %48, %37, %30, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @rtl8367_init_regs(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8367_extif_init_of(%struct.rtl8366_smi*, i32, i8*) #1

declare dso_local i32 @rtl8367_extif_init(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @RTL8367_PORT_CFG_REG(i32) #1

declare dso_local i32 @rtl8367_led_group_set_ports(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8367_led_group_set_mode(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8367_led_op_select_parallel(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8367_led_blinkrate_set(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8367_led_group_set_config(%struct.rtl8366_smi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
