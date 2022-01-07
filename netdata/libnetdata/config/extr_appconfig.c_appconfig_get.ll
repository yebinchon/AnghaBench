; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_option = type { i32, i8* }
%struct.section = type { i32 }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"request to get config in section '%s', name '%s', default_value '%s'\00", align 1
@CONFIG_VALUE_USED = common dso_local global i32 0, align 4
@CONFIG_VALUE_LOADED = common dso_local global i32 0, align 4
@CONFIG_VALUE_CHANGED = common dso_local global i32 0, align 4
@CONFIG_VALUE_CHECKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @appconfig_get(%struct.config* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.config_option*, align 8
  %11 = alloca %struct.section*, align 8
  store %struct.config* %0, %struct.config** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @D_CONFIG, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @debug(i32 %12, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14, i8* %15)
  %17 = load %struct.config*, %struct.config** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.section* @appconfig_section_find(%struct.config* %17, i8* %18)
  store %struct.section* %19, %struct.section** %11, align 8
  %20 = load %struct.section*, %struct.section** %11, align 8
  %21 = icmp ne %struct.section* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.config*, %struct.config** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.section* @appconfig_section_create(%struct.config* %23, i8* %24)
  store %struct.section* %25, %struct.section** %11, align 8
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.section*, %struct.section** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %27, i8* %28, i32 0)
  store %struct.config_option* %29, %struct.config_option** %10, align 8
  %30 = load %struct.config_option*, %struct.config_option** %10, align 8
  %31 = icmp ne %struct.config_option* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.section*, %struct.section** %11, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call %struct.config_option* @appconfig_value_create(%struct.section* %33, i8* %34, i8* %35)
  store %struct.config_option* %36, %struct.config_option** %10, align 8
  %37 = load %struct.config_option*, %struct.config_option** %10, align 8
  %38 = icmp ne %struct.config_option* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %91

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* @CONFIG_VALUE_USED, align 4
  %43 = load %struct.config_option*, %struct.config_option** %10, align 8
  %44 = getelementptr inbounds %struct.config_option, %struct.config_option* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.config_option*, %struct.config_option** %10, align 8
  %48 = getelementptr inbounds %struct.config_option, %struct.config_option* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CONFIG_VALUE_LOADED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.config_option*, %struct.config_option** %10, align 8
  %55 = getelementptr inbounds %struct.config_option, %struct.config_option* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CONFIG_VALUE_CHANGED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %53, %41
  %61 = load %struct.config_option*, %struct.config_option** %10, align 8
  %62 = getelementptr inbounds %struct.config_option, %struct.config_option* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CONFIG_VALUE_CHECKED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %60
  %68 = load %struct.config_option*, %struct.config_option** %10, align 8
  %69 = getelementptr inbounds %struct.config_option, %struct.config_option* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @strcmp(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @CONFIG_VALUE_CHANGED, align 4
  %76 = load %struct.config_option*, %struct.config_option** %10, align 8
  %77 = getelementptr inbounds %struct.config_option, %struct.config_option* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* @CONFIG_VALUE_CHECKED, align 4
  %82 = load %struct.config_option*, %struct.config_option** %10, align 8
  %83 = getelementptr inbounds %struct.config_option, %struct.config_option* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %60
  br label %87

87:                                               ; preds = %86, %53
  %88 = load %struct.config_option*, %struct.config_option** %10, align 8
  %89 = getelementptr inbounds %struct.config_option, %struct.config_option* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %5, align 8
  br label %91

91:                                               ; preds = %87, %39
  %92 = load i8*, i8** %5, align 8
  ret i8* %92
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.section* @appconfig_section_find(%struct.config*, i8*) #1

declare dso_local %struct.section* @appconfig_section_create(%struct.config*, i8*) #1

declare dso_local %struct.config_option* @appconfig_option_index_find(%struct.section*, i8*, i32) #1

declare dso_local %struct.config_option* @appconfig_value_create(%struct.section*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
