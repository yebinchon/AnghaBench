; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_exists.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_option = type { i32 }
%struct.section = type { i32 }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"request to get config in section '%s', name '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appconfig_exists(%struct.config* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_option*, align 8
  %9 = alloca %struct.section*, align 8
  store %struct.config* %0, %struct.config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @D_CONFIG, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @debug(i32 %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load %struct.config*, %struct.config** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.section* @appconfig_section_find(%struct.config* %14, i8* %15)
  store %struct.section* %16, %struct.section** %9, align 8
  %17 = load %struct.section*, %struct.section** %9, align 8
  %18 = icmp ne %struct.section* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.section*, %struct.section** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %21, i8* %22, i32 0)
  store %struct.config_option* %23, %struct.config_option** %8, align 8
  %24 = load %struct.config_option*, %struct.config_option** %8, align 8
  %25 = icmp ne %struct.config_option* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %28

27:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %26, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*) #1

declare dso_local %struct.section* @appconfig_section_find(%struct.config*, i8*) #1

declare dso_local %struct.config_option* @appconfig_option_index_find(%struct.section*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
