; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_del.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@MIMIKATZ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 103, i32 117, i32 105, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [39 x i32] [i32 123, i32 98, i32 49, i32 54, i32 98, i32 48, i32 48, i32 98, i32 53, i32 45, i32 99, i32 97, i32 102, i32 101, i32 45, i32 98, i32 97, i32 98, i32 101, i32 45, i32 48, i32 101, i32 101, i32 48, i32 45, i32 100, i32 97, i32 98, i32 97, i32 100, i32 97, i32 98, i32 97, i32 100, i32 48, i32 48, i32 48, i32 125, i32 0], align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@.str.5 = private unnamed_addr constant [31 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 119, i32 90, i32 10, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 32, i32 71, i32 85, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [21 x i32] [i32 10, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 0], align 4
@.str.7 = private unnamed_addr constant [3 x i32] [i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 62, i32 32, i32 79, i32 75, i32 33, i32 10, i32 0], align 4
@STATUS_VARIABLE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 32, i32 86, i32 97, i32 114, i32 105, i32 97, i32 98, i32 108, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 46, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [45 x i32] [i32 78, i32 116, i32 83, i32 101, i32 116, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 69, i32 120, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 71, i32 85, i32 73, i32 68, i32 70, i32 114, i32 111, i32 109, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sysenv_del(i32 %0, i32** %1) #0 {
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
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32**, i32*** %4, align 8
  %15 = load i8*, i8** @MIMIKATZ, align 8
  %16 = call i32 @kull_m_string_args_byName(i32 %13, i32** %14, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i8* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = call i32 @kull_m_string_args_byName(i32 %17, i32** %18, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* %7, i8* bitcast ([39 x i32]* @.str.2 to i8*))
  %20 = load i32, i32* %3, align 4
  %21 = load i32**, i32*** %4, align 8
  %22 = call i32 @kull_m_string_args_byName(i32 %20, i32** %21, i8* bitcast ([11 x i32]* @.str.3 to i8*), i32* %8, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @RtlInitUnicodeString(i32* %9, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @RtlInitUnicodeString(i32* %10, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @wcstoul(i32 %27, i32* null, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = call i32 @RtlGUIDFromString(i32* %10, i32* %11)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.5 to i8*), i32* %9)
  %35 = call i32 @kuhl_m_sysenv_display_vendorGuid(i32* %11)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.6 to i8*), i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @kuhl_m_sysenv_display_attributes(i32 %38)
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.7 to i8*))
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @NtSetSystemEnvironmentValueEx(i32* %9, i32* %11, i32* null, i32 0, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.8 to i8*))
  br label %58

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @STATUS_VARIABLE_NOT_FOUND, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([40 x i32]* @.str.9 to i8*))
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([45 x i32]* @.str.10 to i8*), i32 %55)
  br label %57

57:                                               ; preds = %54, %52
  br label %58

58:                                               ; preds = %57, %46
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.11 to i8*), i32 %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %63
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @wcstoul(i32, i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_sysenv_display_vendorGuid(i32*) #1

declare dso_local i32 @kuhl_m_sysenv_display_attributes(i32) #1

declare dso_local i32 @NtSetSystemEnvironmentValueEx(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
