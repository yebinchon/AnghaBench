; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_set_default.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_option = type { i32, i8* }
%struct.section = type { i32 }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"request to set default config in section '%s', name '%s', value '%s'\00", align 1
@CONFIG_VALUE_USED = common dso_local global i32 0, align 4
@CONFIG_VALUE_LOADED = common dso_local global i32 0, align 4
@CONFIG_VALUE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @appconfig_set_default(%struct.config* %0, i8* %1, i8* %2, i8* %3) #0 {
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
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.config*, %struct.config** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @appconfig_set(%struct.config* %23, i8* %24, i8* %25, i8* %26)
  store i8* %27, i8** %5, align 8
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.section*, %struct.section** %11, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %29, i8* %30, i32 0)
  store %struct.config_option* %31, %struct.config_option** %10, align 8
  %32 = load %struct.config_option*, %struct.config_option** %10, align 8
  %33 = icmp ne %struct.config_option* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.config*, %struct.config** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @appconfig_set(%struct.config* %35, i8* %36, i8* %37, i8* %38)
  store i8* %39, i8** %5, align 8
  br label %81

40:                                               ; preds = %28
  %41 = load i32, i32* @CONFIG_VALUE_USED, align 4
  %42 = load %struct.config_option*, %struct.config_option** %10, align 8
  %43 = getelementptr inbounds %struct.config_option, %struct.config_option* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.config_option*, %struct.config_option** %10, align 8
  %47 = getelementptr inbounds %struct.config_option, %struct.config_option* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CONFIG_VALUE_LOADED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.config_option*, %struct.config_option** %10, align 8
  %54 = getelementptr inbounds %struct.config_option, %struct.config_option* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %5, align 8
  br label %81

56:                                               ; preds = %40
  %57 = load %struct.config_option*, %struct.config_option** %10, align 8
  %58 = getelementptr inbounds %struct.config_option, %struct.config_option* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @strcmp(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load i32, i32* @CONFIG_VALUE_CHANGED, align 4
  %65 = load %struct.config_option*, %struct.config_option** %10, align 8
  %66 = getelementptr inbounds %struct.config_option, %struct.config_option* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.config_option*, %struct.config_option** %10, align 8
  %70 = getelementptr inbounds %struct.config_option, %struct.config_option* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @freez(i8* %71)
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @strdupz(i8* %73)
  %75 = load %struct.config_option*, %struct.config_option** %10, align 8
  %76 = getelementptr inbounds %struct.config_option, %struct.config_option* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %63, %56
  %78 = load %struct.config_option*, %struct.config_option** %10, align 8
  %79 = getelementptr inbounds %struct.config_option, %struct.config_option* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %77, %52, %34, %22
  %82 = load i8*, i8** %5, align 8
  ret i8* %82
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.section* @appconfig_section_find(%struct.config*, i8*) #1

declare dso_local i8* @appconfig_set(%struct.config*, i8*, i8*, i8*) #1

declare dso_local %struct.config_option* @appconfig_option_index_find(%struct.section*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
