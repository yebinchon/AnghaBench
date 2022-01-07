; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"using GPIO pins %u (SDA) and %u (SCK)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"using MDIO bus '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"chip detection failed, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"chip setup failed, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"VLAN initialization failed, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_smi_init(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %5 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %6 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %119

12:                                               ; preds = %1
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_name(i32 %16)
  %18 = call i32 @__rtl8366_smi_init(%struct.rtl8366_smi* %13, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %117

22:                                               ; preds = %12
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %24 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %29 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %35 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %48

38:                                               ; preds = %22
  %39 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %40 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %43 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %38, %27
  %49 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %50 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.rtl8366_smi*)**
  %54 = load i32 (%struct.rtl8366_smi*)*, i32 (%struct.rtl8366_smi*)** %53, align 8
  %55 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %56 = call i32 %54(%struct.rtl8366_smi* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %61 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %114

65:                                               ; preds = %48
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %67 = call i32 @rtl8366_reset(%struct.rtl8366_smi* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %114

71:                                               ; preds = %65
  %72 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %73 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = bitcast {}** %75 to i32 (%struct.rtl8366_smi*)**
  %77 = load i32 (%struct.rtl8366_smi*)*, i32 (%struct.rtl8366_smi*)** %76, align 8
  %78 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %79 = call i32 %77(%struct.rtl8366_smi* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %84 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %114

88:                                               ; preds = %71
  %89 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %90 = call i32 @rtl8366_init_vlan(%struct.rtl8366_smi* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %95 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %114

99:                                               ; preds = %88
  %100 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %101 = call i32 @rtl8366_enable_all_ports(%struct.rtl8366_smi* %100, i32 1)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %114

105:                                              ; preds = %99
  %106 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %107 = call i32 @rtl8366_smi_mii_init(%struct.rtl8366_smi* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %114

111:                                              ; preds = %105
  %112 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %113 = call i32 @rtl8366_debugfs_init(%struct.rtl8366_smi* %112)
  store i32 0, i32* %2, align 4
  br label %119

114:                                              ; preds = %110, %104, %93, %82, %70, %59
  %115 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %116 = call i32 @__rtl8366_smi_cleanup(%struct.rtl8366_smi* %115)
  br label %117

117:                                              ; preds = %114, %21
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %111, %9
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @__rtl8366_smi_init(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rtl8366_reset(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_init_vlan(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_enable_all_ports(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8366_smi_mii_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_debugfs_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @__rtl8366_smi_cleanup(%struct.rtl8366_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
