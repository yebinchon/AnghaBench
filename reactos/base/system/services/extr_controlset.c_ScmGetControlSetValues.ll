; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmGetControlSetValues.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmGetControlSetValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"ScmGetControlSetValues() called\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 83, i32 101, i32 108, i32 101, i32 99, i32 116, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i32] [i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 76, i32 97, i32 115, i32 116, i32 75, i32 110, i32 111, i32 119, i32 110, i32 71, i32 111, i32 111, i32 100, i32 0], align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"ControlSets:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Current: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Default: %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Failed: %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"LastKnownGood: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64*, i64*)* @ScmGetControlSetValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmGetControlSetValues(i64* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %16 = load i32, i32* @KEY_READ, align 4
  %17 = call i64 @RegOpenKeyExW(i32 %15, i8* bitcast ([14 x i32]* @.str.1 to i8*), i32 0, i32 %16, i32* %10)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %5, align 8
  br label %80

23:                                               ; preds = %4
  store i64 8, i64* %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = ptrtoint i64* %25 to i32
  %27 = call i64 @RegQueryValueExW(i32 %24, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32 0, i64* %11, i32 %26, i64* %12)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64*, i64** %6, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %23
  store i64 8, i64* %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i64*, i64** %7, align 8
  %36 = ptrtoint i64* %35 to i32
  %37 = call i64 @RegQueryValueExW(i32 %34, i8* bitcast ([8 x i32]* @.str.3 to i8*), i32 0, i64* %11, i32 %36, i64* %12)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64*, i64** %7, align 8
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %41, %33
  store i64 8, i64* %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = ptrtoint i64* %45 to i32
  %47 = call i64 @RegQueryValueExW(i32 %44, i8* bitcast ([7 x i32]* @.str.4 to i8*), i32 0, i64* %11, i32 %46, i64* %12)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64*, i64** %8, align 8
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %51, %43
  store i64 8, i64* %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i64*, i64** %9, align 8
  %56 = ptrtoint i64* %55 to i32
  %57 = call i64 @RegQueryValueExW(i32 %54, i8* bitcast ([14 x i32]* @.str.5 to i8*), i32 0, i64* %11, i32 %56, i64* %12)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64*, i64** %9, align 8
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @RegCloseKey(i32 %64)
  %66 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %68)
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %71)
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %74)
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %63, %21
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
