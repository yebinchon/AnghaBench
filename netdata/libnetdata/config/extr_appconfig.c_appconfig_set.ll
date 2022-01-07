; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_set.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_option = type { i32, i32 }
%struct.section = type { i32 }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"request to set config in section '%s', name '%s', value '%s'\00", align 1
@CONFIG_VALUE_USED = common dso_local global i32 0, align 4
@CONFIG_VALUE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @appconfig_set(%struct.config* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.config_option*, align 8
  %10 = alloca %struct.section*, align 8
  store %struct.config* %0, %struct.config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @D_CONFIG, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @debug(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i8* %14)
  %16 = load %struct.config*, %struct.config** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.section* @appconfig_section_find(%struct.config* %16, i8* %17)
  store %struct.section* %18, %struct.section** %10, align 8
  %19 = load %struct.section*, %struct.section** %10, align 8
  %20 = icmp ne %struct.section* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load %struct.config*, %struct.config** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.section* @appconfig_section_create(%struct.config* %22, i8* %23)
  store %struct.section* %24, %struct.section** %10, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.section*, %struct.section** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %26, i8* %27, i32 0)
  store %struct.config_option* %28, %struct.config_option** %9, align 8
  %29 = load %struct.config_option*, %struct.config_option** %9, align 8
  %30 = icmp ne %struct.config_option* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.section*, %struct.section** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.config_option* @appconfig_value_create(%struct.section* %32, i8* %33, i8* %34)
  store %struct.config_option* %35, %struct.config_option** %9, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @CONFIG_VALUE_USED, align 4
  %38 = load %struct.config_option*, %struct.config_option** %9, align 8
  %39 = getelementptr inbounds %struct.config_option, %struct.config_option* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.config_option*, %struct.config_option** %9, align 8
  %43 = getelementptr inbounds %struct.config_option, %struct.config_option* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load i32, i32* @CONFIG_VALUE_CHANGED, align 4
  %50 = load %struct.config_option*, %struct.config_option** %9, align 8
  %51 = getelementptr inbounds %struct.config_option, %struct.config_option* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.config_option*, %struct.config_option** %9, align 8
  %55 = getelementptr inbounds %struct.config_option, %struct.config_option* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @freez(i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strdupz(i8* %58)
  %60 = load %struct.config_option*, %struct.config_option** %9, align 8
  %61 = getelementptr inbounds %struct.config_option, %struct.config_option* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %48, %36
  %63 = load i8*, i8** %8, align 8
  ret i8* %63
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.section* @appconfig_section_find(%struct.config*, i8*) #1

declare dso_local %struct.section* @appconfig_section_create(%struct.config*, i8*) #1

declare dso_local %struct.config_option* @appconfig_option_index_find(%struct.section*, i8*, i32) #1

declare dso_local %struct.config_option* @appconfig_value_create(%struct.section*, i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @freez(i32) #1

declare dso_local i32 @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
