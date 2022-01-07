; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_section_create.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_section_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { %struct.section*, i32, i32, i32, i32 }
%struct.config = type { %struct.section* }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Creating section '%s'.\00", align 1
@appconfig_option_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"INTERNAL ERROR: indexing of section '%s', already exists.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section* (%struct.config*, i8*)* @appconfig_section_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section* @appconfig_section_create(%struct.config* %0, i8* %1) #0 {
  %3 = alloca %struct.config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.section*, align 8
  store %struct.config* %0, %struct.config** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @D_CONFIG, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @debug(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call %struct.section* @callocz(i32 1, i32 24)
  store %struct.section* %10, %struct.section** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strdupz(i8* %11)
  %13 = load %struct.section*, %struct.section** %5, align 8
  %14 = getelementptr inbounds %struct.section, %struct.section* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.section*, %struct.section** %5, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @simple_hash(i32 %17)
  %19 = load %struct.section*, %struct.section** %5, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.section*, %struct.section** %5, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 3
  %23 = call i32 @netdata_mutex_init(i32* %22)
  %24 = load %struct.section*, %struct.section** %5, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 2
  %26 = load i32, i32* @appconfig_option_compare, align 4
  %27 = call i32 @avl_init_lock(i32* %25, i32 %26)
  %28 = load %struct.config*, %struct.config** %3, align 8
  %29 = load %struct.section*, %struct.section** %5, align 8
  %30 = call %struct.section* @appconfig_index_add(%struct.config* %28, %struct.section* %29)
  %31 = load %struct.section*, %struct.section** %5, align 8
  %32 = icmp ne %struct.section* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.section*, %struct.section** %5, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.config*, %struct.config** %3, align 8
  %43 = call i32 @appconfig_wrlock(%struct.config* %42)
  %44 = load %struct.config*, %struct.config** %3, align 8
  %45 = getelementptr inbounds %struct.config, %struct.config* %44, i32 0, i32 0
  %46 = load %struct.section*, %struct.section** %45, align 8
  store %struct.section* %46, %struct.section** %6, align 8
  %47 = load %struct.section*, %struct.section** %6, align 8
  %48 = icmp ne %struct.section* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %55, %49
  %51 = load %struct.section*, %struct.section** %6, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 0
  %53 = load %struct.section*, %struct.section** %52, align 8
  %54 = icmp ne %struct.section* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.section*, %struct.section** %6, align 8
  %57 = getelementptr inbounds %struct.section, %struct.section* %56, i32 0, i32 0
  %58 = load %struct.section*, %struct.section** %57, align 8
  store %struct.section* %58, %struct.section** %6, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load %struct.section*, %struct.section** %5, align 8
  %61 = load %struct.section*, %struct.section** %6, align 8
  %62 = getelementptr inbounds %struct.section, %struct.section* %61, i32 0, i32 0
  store %struct.section* %60, %struct.section** %62, align 8
  br label %67

63:                                               ; preds = %41
  %64 = load %struct.section*, %struct.section** %5, align 8
  %65 = load %struct.config*, %struct.config** %3, align 8
  %66 = getelementptr inbounds %struct.config, %struct.config* %65, i32 0, i32 0
  store %struct.section* %64, %struct.section** %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.config*, %struct.config** %3, align 8
  %69 = call i32 @appconfig_unlock(%struct.config* %68)
  %70 = load %struct.section*, %struct.section** %5, align 8
  ret %struct.section* %70
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local %struct.section* @callocz(i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

declare dso_local i32 @simple_hash(i32) #1

declare dso_local i32 @netdata_mutex_init(i32*) #1

declare dso_local i32 @avl_init_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.section* @appconfig_index_add(%struct.config*, %struct.section*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @appconfig_wrlock(%struct.config*) #1

declare dso_local i32 @appconfig_unlock(%struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
