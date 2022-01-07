; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_ts.c_kuhl_m_ts_remote.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_ts.c_kuhl_m_ts_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 116, i32 97, i32 114, i32 103, i32 101, i32 116, i32 0], align 4
@LOGONID_CURRENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [30 x i32] [i32 65, i32 115, i32 107, i32 105, i32 110, i32 103, i32 32, i32 116, i32 111, i32 32, i32 99, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 37, i32 117, i32 32, i32 116, i32 111, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [16 x i32] [i32 99, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 32, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 37, i32 117, i32 0], align 4
@.str.7 = private unnamed_addr constant [5 x i32] [i32 10, i32 10, i32 62, i32 32, i32 0], align 4
@SERVERHANDLE_CURRENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i32] [i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@ERROR_LOGON_FAILURE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [68 x i32] [i32 66, i32 97, i32 100, i32 32, i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 40, i32 116, i32 97, i32 107, i32 101, i32 32, i32 99, i32 97, i32 114, i32 101, i32 32, i32 116, i32 111, i32 32, i32 110, i32 111, i32 116, i32 32, i32 108, i32 111, i32 99, i32 107, i32 32, i32 116, i32 104, i32 101, i32 32, i32 97, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 33, i32 41, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [18 x i32] [i32 87, i32 105, i32 110, i32 83, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 0], align 4
@.str.11 = private unnamed_addr constant [23 x i32] [i32 65, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 105, i32 100, i32 32, i32 105, i32 115, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_ts_remote(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i64 @kull_m_string_args_byName(i32 %9, i32** %10, i8* bitcast ([3 x i32]* @.str to i8*), i64* %5, i8* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @wcstoul(i64 %14, i32* null, i32 0)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i64 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64* %5, i8* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @wcstoul(i64 %21, i32* null, i32 0)
  store i64 %22, i64* %8, align 8
  br label %25

23:                                               ; preds = %13
  %24 = load i64, i64* @LOGONID_CURRENT, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32**, i32*** %4, align 8
  %28 = call i64 @kull_m_string_args_byName(i32 %26, i32** %27, i8* bitcast ([9 x i32]* @.str.2 to i8*), i64* %6, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.4 to i8*), i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @LOGONID_CURRENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.5 to i8*))
  br label %39

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.6 to i8*), i64 %37)
  br label %39

39:                                               ; preds = %36, %34
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.7 to i8*))
  %41 = load i32, i32* @SERVERHANDLE_CURRENT, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i64 @WinStationConnectW(i32 %41, i64 %42, i64 %43, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.8 to i8*), i64 %50)
  br label %61

52:                                               ; preds = %39
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_LOGON_FAILURE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @PRINT_ERROR(i8* bitcast ([68 x i32]* @.str.9 to i8*))
  br label %60

58:                                               ; preds = %52
  %59 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([18 x i32]* @.str.10 to i8*))
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %49
  br label %64

62:                                               ; preds = %2
  %63 = call i32 @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str.11 to i8*))
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %65
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i64*, i8*) #1

declare dso_local i64 @wcstoul(i64, i32*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @WinStationConnectW(i32, i64, i64, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
