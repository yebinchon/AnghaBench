; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/extr_clutil.c_cl_print_info.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/extr_clutil.c_cl_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CL_PLATFORM_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vendor: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"platform version: '%s'\0A\00", align 1
@CL_PLATFORM_PROFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"profile: '%s'\0A\00", align 1
@CL_PLATFORM_EXTENSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"extensions: '%s'\0A\00", align 1
@CL_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"name: '%s'\0A\00", align 1
@CL_DEVICE_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"device version: '%s'\0A\00", align 1
@CL_DEVICE_MAX_WORK_GROUP_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"max work group size: %u\0A\00", align 1
@CL_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"type = 0x%04x = \00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"CL_DEVICE_TYPE_CPU\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"CL_DEVICE_TYPE_GPU\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"CL_DEVICE_TYPE_ACCELERATOR\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Other...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_print_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CL_PLATFORM_VENDOR, align 4
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %12 = call i32 @clGetPlatformInfo(i32 %9, i32 %10, i32 4096, i8* %11, i32* null)
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @get_version_string(i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CL_PLATFORM_PROFILE, align 4
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %24 = call i32 @clGetPlatformInfo(i32 %21, i32 %22, i32 4096, i8* %23, i32* null)
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CL_PLATFORM_EXTENSIONS, align 4
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %30 = call i32 @clGetPlatformInfo(i32 %27, i32 %28, i32 4096, i8* %29, i32* null)
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CL_DEVICE_NAME, align 4
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %36 = call i32 (i32, i32, i32, ...) @clGetDeviceInfo(i32 %33, i32 %34, i32 4096, i8* %35, i8* null)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CL_DEVICE_VERSION, align 4
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %42 = call i32 (i32, i32, i32, ...) @clGetDeviceInfo(i32 %39, i32 %40, i32 4096, i8* %41, i8* null)
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CL_DEVICE_MAX_WORK_GROUP_SIZE, align 4
  %47 = call i32 (i32, i32, i32, ...) @clGetDeviceInfo(i32 %45, i32 %46, i32 8, i64* %7, i8* null)
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CL_DEVICE_TYPE, align 4
  %52 = call i32 (i32, i32, i32, ...) @clGetDeviceInfo(i32 %50, i32 %51, i32 4, i32* %8, i8* null)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %62 [
    i32 129, label %56
    i32 128, label %58
    i32 130, label %60
  ]

56:                                               ; preds = %2
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %64

58:                                               ; preds = %2
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %64

60:                                               ; preds = %2
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %64

62:                                               ; preds = %2
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %60, %58, %56
  ret void
}

declare dso_local i32 @clGetPlatformInfo(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_version_string(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @clGetDeviceInfo(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
