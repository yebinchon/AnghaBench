; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_set.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@MIMIKATZ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 103, i32 117, i32 105, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [39 x i32] [i32 123, i32 98, i32 49, i32 54, i32 98, i32 48, i32 48, i32 98, i32 53, i32 45, i32 99, i32 97, i32 102, i32 101, i32 45, i32 98, i32 97, i32 98, i32 101, i32 45, i32 48, i32 101, i32 101, i32 48, i32 45, i32 100, i32 97, i32 98, i32 97, i32 100, i32 97, i32 98, i32 97, i32 100, i32 48, i32 48, i32 48, i32 125, i32 0], align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@.str.5 = private unnamed_addr constant [5 x i32] [i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@.str.6 = private unnamed_addr constant [81 x i32] [i32 52, i32 49, i32 48, i32 48, i32 50, i32 48, i32 48, i32 48, i32 52, i32 99, i32 48, i32 48, i32 54, i32 49, i32 48, i32 48, i32 50, i32 48, i32 48, i32 48, i32 53, i32 54, i32 48, i32 48, i32 54, i32 57, i32 48, i32 48, i32 54, i32 53, i32 48, i32 48, i32 50, i32 99, i32 48, i32 48, i32 50, i32 48, i32 48, i32 48, i32 52, i32 49, i32 48, i32 48, i32 50, i32 48, i32 48, i32 48, i32 52, i32 99, i32 48, i32 48, i32 50, i32 55, i32 48, i32 48, i32 52, i32 49, i32 48, i32 48, i32 54, i32 100, i32 48, i32 48, i32 54, i32 102, i32 48, i32 48, i32 55, i32 53, i32 48, i32 48, i32 55, i32 50, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 0], align 4
@.str.7 = private unnamed_addr constant [31 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 119, i32 90, i32 10, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 32, i32 71, i32 85, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [21 x i32] [i32 10, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i32] [i32 41, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [30 x i32] [i32 76, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 68, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.11 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [7 x i32] [i32 62, i32 32, i32 79, i32 75, i32 33, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [45 x i32] [i32 78, i32 116, i32 83, i32 101, i32 116, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 69, i32 120, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 71, i32 85, i32 73, i32 68, i32 70, i32 114, i32 111, i32 109, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sysenv_set(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = load i8*, i8** @MIMIKATZ, align 8
  %19 = call i32 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i8* %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32**, i32*** %4, align 8
  %22 = call i32 @kull_m_string_args_byName(i32 %20, i32** %21, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* %7, i8* bitcast ([39 x i32]* @.str.2 to i8*))
  %23 = load i32, i32* %3, align 4
  %24 = load i32**, i32*** %4, align 8
  %25 = call i32 @kull_m_string_args_byName(i32 %23, i32** %24, i8* bitcast ([11 x i32]* @.str.3 to i8*), i32* %8, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %26 = load i32, i32* %3, align 4
  %27 = load i32**, i32*** %4, align 8
  %28 = call i32 @kull_m_string_args_byName(i32 %26, i32** %27, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32* %9, i8* bitcast ([81 x i32]* @.str.6 to i8*))
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RtlInitUnicodeString(i32* %10, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @RtlInitUnicodeString(i32* %11, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @wcstoul(i32 %33, i32* null, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = call i32 @RtlGUIDFromString(i32* %11, i32* %12)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %2
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.7 to i8*), i32* %10)
  %41 = call i32 @kuhl_m_sysenv_display_vendorGuid(i32* %12)
  %42 = load i32, i32* %15, align 4
  %43 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.8 to i8*), i32 %42)
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @kuhl_m_sysenv_display_attributes(i32 %44)
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.9 to i8*))
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @kull_m_string_stringToHexBuffer(i32 %47, i32* %13, i32* %14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %39
  %51 = load i32, i32* %14, align 4
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.10 to i8*), i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @kull_m_string_wprintf_hex(i32 %53, i32 %54, i32 1)
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.11 to i8*))
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @NtSetSystemEnvironmentValueEx(i32* %10, i32* %12, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.12 to i8*))
  br label %69

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @PRINT_ERROR(i8* bitcast ([45 x i32]* @.str.13 to i8*), i32 %67)
  br label %69

69:                                               ; preds = %66, %64
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @LocalFree(i32 %70)
  br label %72

72:                                               ; preds = %69, %39
  br label %76

73:                                               ; preds = %2
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.14 to i8*), i32 %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %77
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @wcstoul(i32, i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_sysenv_display_vendorGuid(i32*) #1

declare dso_local i32 @kuhl_m_sysenv_display_attributes(i32) #1

declare dso_local i64 @kull_m_string_stringToHexBuffer(i32, i32*, i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @NtSetSystemEnvironmentValueEx(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
