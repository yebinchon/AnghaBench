; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_load_module_exports.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_load_module_exports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_module = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"obs_module_load\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"obs_module_set_pointer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"obs_module_ver\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"obs_module_unload\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"obs_module_post_load\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"obs_module_set_locale\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"obs_module_free_locale\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"obs_module_name\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"obs_module_description\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"obs_module_author\00", align 1
@MODULE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_module*, i8*)* @load_module_exports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_module_exports(%struct.obs_module* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.obs_module*, align 8
  %5 = alloca i8*, align 8
  store %struct.obs_module* %0, %struct.obs_module** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %7 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @os_dlsym(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %11 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %10, i32 0, i32 10
  store i8* %9, i8** %11, align 8
  %12 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %13 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %12, i32 0, i32 10
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @req_func_not_found(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %3, align 4
  br label %91

19:                                               ; preds = %2
  %20 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %21 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @os_dlsym(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %25 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %27 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %26, i32 0, i32 9
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @req_func_not_found(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %19
  %34 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %35 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @os_dlsym(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %39 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %41 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %40, i32 0, i32 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @req_func_not_found(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %3, align 4
  br label %91

47:                                               ; preds = %33
  %48 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %49 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @os_dlsym(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %53 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %55 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @os_dlsym(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %59 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %61 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @os_dlsym(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %65 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %67 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @os_dlsym(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %71 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %73 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @os_dlsym(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %76 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %77 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %79 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @os_dlsym(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %82 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %83 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %85 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @os_dlsym(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.obs_module*, %struct.obs_module** %4, align 8
  %89 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @MODULE_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %47, %44, %30, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @os_dlsym(i32, i8*) #1

declare dso_local i32 @req_func_not_found(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
