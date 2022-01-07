; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_initialize_version_functions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_initialize_version_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i32] [i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@ver_initialized = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to load windows version library\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GetFileVersionInfoSizeW\00", align 1
@get_file_version_info_size = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"GetFileVersionInfoW\00", align 1
@get_file_version_info = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"VerQueryValueW\00", align 1
@ver_query_value = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to load windows version functions\00", align 1
@ver_initialize_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialize_version_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_version_functions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 @GetModuleHandleW(i8* bitcast ([8 x i32]* @.str to i8*))
  store i64 %3, i64* %2, align 8
  store i32 1, i32* @ver_initialized, align 4
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = call i64 @LoadLibraryW(i8* bitcast ([8 x i32]* @.str to i8*))
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @LOG_ERROR, align 4
  %12 = call i32 @blog(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %33

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* @get_file_version_info_size, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @GetProcAddress(i64 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i64 %18, i64* @get_file_version_info, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @GetProcAddress(i64 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i64 %20, i64* @ver_query_value, align 8
  %21 = load i64, i64* @get_file_version_info_size, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i64, i64* @get_file_version_info, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @ver_query_value, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23, %14
  %30 = load i32, i32* @LOG_ERROR, align 4
  %31 = call i32 @blog(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* @ver_initialize_success, align 4
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %29, %10
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @GetModuleHandleW(i8*) #1

declare dso_local i64 @LoadLibraryW(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
