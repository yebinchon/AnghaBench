; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_value_create.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_value_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_option = type { %struct.config_option*, %struct.config_option*, %struct.config_option*, i32 }
%struct.section = type { i8*, %struct.config_option* }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Creating config entry for name '%s', value '%s', in section '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"indexing of config '%s' in section '%s': already exists - using the existing one.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_option* (%struct.section*, i8*, i8*)* @appconfig_value_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_option* @appconfig_value_create(%struct.section* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.config_option*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_option*, align 8
  %9 = alloca %struct.config_option*, align 8
  %10 = alloca %struct.config_option*, align 8
  store %struct.section* %0, %struct.section** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @D_CONFIG, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.section*, %struct.section** %5, align 8
  %15 = getelementptr inbounds %struct.section, %struct.section* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @debug(i32 %11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i8* %16)
  %18 = call %struct.config_option* @callocz(i32 1, i32 32)
  store %struct.config_option* %18, %struct.config_option** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strdupz(i8* %19)
  %21 = bitcast i8* %20 to %struct.config_option*
  %22 = load %struct.config_option*, %struct.config_option** %8, align 8
  %23 = getelementptr inbounds %struct.config_option, %struct.config_option* %22, i32 0, i32 1
  store %struct.config_option* %21, %struct.config_option** %23, align 8
  %24 = load %struct.config_option*, %struct.config_option** %8, align 8
  %25 = getelementptr inbounds %struct.config_option, %struct.config_option* %24, i32 0, i32 1
  %26 = load %struct.config_option*, %struct.config_option** %25, align 8
  %27 = call i32 @simple_hash(%struct.config_option* %26)
  %28 = load %struct.config_option*, %struct.config_option** %8, align 8
  %29 = getelementptr inbounds %struct.config_option, %struct.config_option* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strdupz(i8* %30)
  %32 = bitcast i8* %31 to %struct.config_option*
  %33 = load %struct.config_option*, %struct.config_option** %8, align 8
  %34 = getelementptr inbounds %struct.config_option, %struct.config_option* %33, i32 0, i32 2
  store %struct.config_option* %32, %struct.config_option** %34, align 8
  %35 = load %struct.section*, %struct.section** %5, align 8
  %36 = load %struct.config_option*, %struct.config_option** %8, align 8
  %37 = call %struct.config_option* @appconfig_option_index_add(%struct.section* %35, %struct.config_option* %36)
  store %struct.config_option* %37, %struct.config_option** %9, align 8
  %38 = load %struct.config_option*, %struct.config_option** %9, align 8
  %39 = load %struct.config_option*, %struct.config_option** %8, align 8
  %40 = icmp ne %struct.config_option* %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %3
  %42 = load %struct.config_option*, %struct.config_option** %8, align 8
  %43 = getelementptr inbounds %struct.config_option, %struct.config_option* %42, i32 0, i32 1
  %44 = load %struct.config_option*, %struct.config_option** %43, align 8
  %45 = load %struct.section*, %struct.section** %5, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @error(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), %struct.config_option* %44, i8* %47)
  %49 = load %struct.config_option*, %struct.config_option** %8, align 8
  %50 = getelementptr inbounds %struct.config_option, %struct.config_option* %49, i32 0, i32 2
  %51 = load %struct.config_option*, %struct.config_option** %50, align 8
  %52 = call i32 @freez(%struct.config_option* %51)
  %53 = load %struct.config_option*, %struct.config_option** %8, align 8
  %54 = getelementptr inbounds %struct.config_option, %struct.config_option* %53, i32 0, i32 1
  %55 = load %struct.config_option*, %struct.config_option** %54, align 8
  %56 = call i32 @freez(%struct.config_option* %55)
  %57 = load %struct.config_option*, %struct.config_option** %8, align 8
  %58 = call i32 @freez(%struct.config_option* %57)
  %59 = load %struct.config_option*, %struct.config_option** %9, align 8
  store %struct.config_option* %59, %struct.config_option** %4, align 8
  br label %90

60:                                               ; preds = %3
  %61 = load %struct.section*, %struct.section** %5, align 8
  %62 = call i32 @config_section_wrlock(%struct.section* %61)
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 1
  %65 = load %struct.config_option*, %struct.config_option** %64, align 8
  store %struct.config_option* %65, %struct.config_option** %10, align 8
  %66 = load %struct.config_option*, %struct.config_option** %10, align 8
  %67 = icmp ne %struct.config_option* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %74, %68
  %70 = load %struct.config_option*, %struct.config_option** %10, align 8
  %71 = getelementptr inbounds %struct.config_option, %struct.config_option* %70, i32 0, i32 0
  %72 = load %struct.config_option*, %struct.config_option** %71, align 8
  %73 = icmp ne %struct.config_option* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.config_option*, %struct.config_option** %10, align 8
  %76 = getelementptr inbounds %struct.config_option, %struct.config_option* %75, i32 0, i32 0
  %77 = load %struct.config_option*, %struct.config_option** %76, align 8
  store %struct.config_option* %77, %struct.config_option** %10, align 8
  br label %69

78:                                               ; preds = %69
  %79 = load %struct.config_option*, %struct.config_option** %8, align 8
  %80 = load %struct.config_option*, %struct.config_option** %10, align 8
  %81 = getelementptr inbounds %struct.config_option, %struct.config_option* %80, i32 0, i32 0
  store %struct.config_option* %79, %struct.config_option** %81, align 8
  br label %86

82:                                               ; preds = %60
  %83 = load %struct.config_option*, %struct.config_option** %8, align 8
  %84 = load %struct.section*, %struct.section** %5, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 1
  store %struct.config_option* %83, %struct.config_option** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.section*, %struct.section** %5, align 8
  %88 = call i32 @config_section_unlock(%struct.section* %87)
  %89 = load %struct.config_option*, %struct.config_option** %8, align 8
  store %struct.config_option* %89, %struct.config_option** %4, align 8
  br label %90

90:                                               ; preds = %86, %41
  %91 = load %struct.config_option*, %struct.config_option** %4, align 8
  ret %struct.config_option* %91
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.config_option* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @simple_hash(%struct.config_option*) #1

declare dso_local %struct.config_option* @appconfig_option_index_add(%struct.section*, %struct.config_option*) #1

declare dso_local i32 @error(i8*, %struct.config_option*, i8*) #1

declare dso_local i32 @freez(%struct.config_option*) #1

declare dso_local i32 @config_section_wrlock(%struct.section*) #1

declare dso_local i32 @config_section_unlock(%struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
