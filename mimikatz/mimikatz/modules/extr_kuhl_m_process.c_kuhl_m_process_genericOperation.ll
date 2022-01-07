; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_process.c_kuhl_m_process_genericOperation.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_process.c_kuhl_m_process_genericOperation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@PROCESS_TERMINATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i32] [i32 78, i32 116, i32 84, i32 101, i32 114, i32 109, i32 105, i32 110, i32 97, i32 116, i32 101, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@PROCESS_SUSPEND_RESUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i32] [i32 78, i32 116, i32 83, i32 117, i32 115, i32 112, i32 101, i32 110, i32 100, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 78, i32 116, i32 82, i32 101, i32 115, i32 117, i32 109, i32 101, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 112, i32 105, i32 100, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i32] [i32 37, i32 115, i32 32, i32 111, i32 102, i32 32, i32 37, i32 117, i32 32, i32 80, i32 73, i32 68, i32 32, i32 58, i32 32, i32 79, i32 75, i32 32, i32 33, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 37, i32 115, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.7 = private unnamed_addr constant [26 x i32] [i32 112, i32 105, i32 100, i32 32, i32 40, i32 47, i32 112, i32 105, i32 100, i32 58, i32 49, i32 50, i32 51, i32 41, i32 32, i32 105, i32 115, i32 32, i32 109, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_process_genericOperation(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 129, label %18
    i32 130, label %20
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* @PROCESS_TERMINATE, align 8
  store i64 %17, i64* %11, align 8
  store i8* bitcast ([19 x i32]* @.str to i8*), i8** %13, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load i64, i64* @PROCESS_SUSPEND_RESUME, align 8
  store i64 %19, i64* %11, align 8
  store i8* bitcast ([17 x i32]* @.str.1 to i8*), i8** %13, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load i64, i64* @PROCESS_SUSPEND_RESUME, align 8
  store i64 %21, i64* %11, align 8
  store i8* bitcast ([16 x i32]* @.str.2 to i8*), i8** %13, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %20, %18, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32**, i32*** %6, align 8
  %27 = call i64 @kull_m_string_args_byName(i32 %25, i32** %26, i8* bitcast ([4 x i32]* @.str.3 to i8*), i8** %12, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = call i64 @wcstoul(i8* %30, i32* null, i32 0)
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @OpenProcess(i64 %36, i32 %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 129, label %47
    i32 130, label %50
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = call i32 @NtTerminateProcess(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @NtSuspendProcess(i32 %48)
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @NtResumeProcess(i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %41, %50, %47, %43
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @kprintf(i8* bitcast ([21 x i32]* @.str.4 to i8*), i8* %58, i64 %59)
  br label %65

61:                                               ; preds = %53
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([11 x i32]* @.str.5 to i8*), i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @CloseHandle(i32 %66)
  br label %70

68:                                               ; preds = %35
  %69 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.6 to i8*))
  br label %70

70:                                               ; preds = %68, %65
  br label %73

71:                                               ; preds = %32
  %72 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.7 to i8*))
  br label %73

73:                                               ; preds = %71, %70
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i32*) #1

declare dso_local i64 @wcstoul(i8*, i32*, i32) #1

declare dso_local i32 @OpenProcess(i64, i32, i64) #1

declare dso_local i32 @NtTerminateProcess(i32, i32) #1

declare dso_local i32 @NtSuspendProcess(i32) #1

declare dso_local i32 @NtResumeProcess(i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i8*, i8*, i64) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
