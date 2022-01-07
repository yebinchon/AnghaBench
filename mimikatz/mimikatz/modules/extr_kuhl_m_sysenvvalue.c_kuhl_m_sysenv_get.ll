; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_get.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 75, i32 101, i32 114, i32 110, i32 101, i32 108, i32 95, i32 76, i32 115, i32 97, i32 95, i32 80, i32 112, i32 108, i32 95, i32 67, i32 111, i32 110, i32 102, i32 105, i32 103, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 103, i32 117, i32 105, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [39 x i32] [i32 123, i32 55, i32 55, i32 102, i32 97, i32 57, i32 97, i32 98, i32 100, i32 45, i32 48, i32 51, i32 53, i32 57, i32 45, i32 52, i32 100, i32 51, i32 50, i32 45, i32 98, i32 100, i32 54, i32 48, i32 45, i32 50, i32 56, i32 102, i32 52, i32 101, i32 55, i32 56, i32 102, i32 55, i32 56, i32 52, i32 98, i32 125, i32 0], align 4
@.str.4 = private unnamed_addr constant [31 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 119, i32 90, i32 10, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 32, i32 71, i32 85, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i32] [i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 0], align 4
@.str.7 = private unnamed_addr constant [32 x i32] [i32 41, i32 10, i32 76, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 68, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [47 x i32] [i32 78, i32 116, i32 81, i32 117, i32 101, i32 114, i32 121, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 69, i32 120, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_VARIABLE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 32, i32 86, i32 97, i32 114, i32 105, i32 97, i32 98, i32 108, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 46, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [47 x i32] [i32 78, i32 116, i32 81, i32 117, i32 101, i32 114, i32 121, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 69, i32 120, i32 40, i32 115, i32 105, i32 122, i32 101, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 71, i32 85, i32 73, i32 68, i32 70, i32 114, i32 111, i32 109, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_sysenv_get(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i32 @kull_m_string_args_byName(i32 %14, i32** %15, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i8* bitcast ([22 x i32]* @.str.1 to i8*))
  %17 = load i32, i32* %3, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = call i32 @kull_m_string_args_byName(i32 %17, i32** %18, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32* %7, i8* bitcast ([39 x i32]* @.str.3 to i8*))
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @RtlInitUnicodeString(i32* %8, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @RtlInitUnicodeString(i32* %9, i32 %22)
  %24 = call i64 @RtlGUIDFromString(i32* %9, i32* %10)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @NT_SUCCESS(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.4 to i8*), i32* %8)
  %30 = call i32 @kuhl_m_sysenv_display_vendorGuid(i32* %10)
  %31 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.5 to i8*))
  %32 = call i64 @NtQuerySystemEnvironmentValueEx(i32* %8, i32* %10, i32* null, i32* %11, i32* %12)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* @LPTR, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32* @LocalAlloc(i32 %40, i32 %41)
  store i32* %42, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = call i64 @NtQuerySystemEnvironmentValueEx(i32* %8, i32* %10, i32* %45, i32* %11, i32* %12)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @NT_SUCCESS(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.6 to i8*), i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @kuhl_m_sysenv_display_attributes(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([32 x i32]* @.str.7 to i8*), i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @kull_m_string_wprintf_hex(i32* %57, i32 %58, i32 1)
  %60 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.5 to i8*))
  br label %64

61:                                               ; preds = %44
  %62 = load i64, i64* %5, align 8
  %63 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.8 to i8*), i64 %62)
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @LocalFree(i32* %65)
  br label %67

67:                                               ; preds = %64, %39
  br label %78

68:                                               ; preds = %36, %28
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @STATUS_VARIABLE_NOT_FOUND, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([40 x i32]* @.str.9 to i8*))
  br label %77

74:                                               ; preds = %68
  %75 = load i64, i64* %5, align 8
  %76 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.10 to i8*), i64 %75)
  br label %77

77:                                               ; preds = %74, %72
  br label %78

78:                                               ; preds = %77, %67
  br label %82

79:                                               ; preds = %2
  %80 = load i64, i64* %5, align 8
  %81 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.11 to i8*), i64 %80)
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i64, i64* @STATUS_SUCCESS, align 8
  ret i64 %83
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i64 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_sysenv_display_vendorGuid(i32*) #1

declare dso_local i64 @NtQuerySystemEnvironmentValueEx(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @kuhl_m_sysenv_display_attributes(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
