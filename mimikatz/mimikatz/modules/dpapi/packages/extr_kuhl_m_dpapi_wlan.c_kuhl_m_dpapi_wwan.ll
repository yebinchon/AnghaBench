; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_wlan.c_kuhl_m_dpapi_wwan.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_wlan.c_kuhl_m_dpapi_wwan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [15 x i32] [i32 80, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 65, i32 99, i32 99, i32 101, i32 115, i32 115, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 32, i32 42, i32 32, i32 65, i32 99, i32 99, i32 101, i32 115, i32 115, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [13 x i32] [i32 83, i32 117, i32 98, i32 115, i32 99, i32 114, i32 105, i32 98, i32 101, i32 114, i32 73, i32 68, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 83, i32 117, i32 98, i32 115, i32 99, i32 114, i32 105, i32 98, i32 101, i32 114, i32 73, i32 68, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 46, i32 42, i32 115, i32 0], align 4
@.str.9 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.10 = private unnamed_addr constant [42 x i32] [i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 87, i32 119, i32 97, i32 110, i32 32, i32 88, i32 77, i32 76, i32 32, i32 112, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 40, i32 47, i32 105, i32 110, i32 58, i32 102, i32 105, i32 108, i32 101, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_wwan(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i64 @kull_m_string_args_byName(i32 %14, i32** %15, i8* bitcast ([3 x i32]* @.str to i8*), i32* %13, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %2
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @kull_m_file_readData(i32 %19, i64* %5, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i64 @kull_m_string_qad_ansi_to_unicode(i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %22
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @kull_m_string_quickxml_simplefind(i64 %28, i8* bitcast ([5 x i32]* @.str.1 to i8*), i64* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.2 to i8*), i64 %32)
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @LocalFree(i64 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @kull_m_string_quickxml_simplefind(i64 %37, i8* bitcast ([13 x i32]* @.str.3 to i8*), i64* %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.4 to i8*), i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @LocalFree(i64 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @kull_m_string_quickxml_simplefind(i64 %46, i8* bitcast ([13 x i32]* @.str.5 to i8*), i64* %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @kull_m_string_stringToHexBuffer(i64 %50, i64* %6, i32* %9)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @kull_m_dpapi_blob_quick_descr(i32 0, i64 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32**, i32*** %4, align 8
  %61 = bitcast i64* %7 to i32*
  %62 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i64 %57, i32 %58, i32* null, i32 %59, i32** %60, i32* null, i32 0, i32* %61, i32* %10, i32* null)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %53
  %65 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.7 to i8*))
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @kull_m_string_wprintf_hex(i64 %66, i32 %67, i32 0)
  %69 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.8 to i8*), i64 %72, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @LocalFree(i64 %75)
  br label %77

77:                                               ; preds = %64, %53
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @LocalFree(i64 %78)
  br label %80

80:                                               ; preds = %77, %49
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @LocalFree(i64 %81)
  br label %83

83:                                               ; preds = %80, %45
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @LocalFree(i64 %84)
  br label %86

86:                                               ; preds = %83, %22
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @LocalFree(i64 %87)
  br label %91

89:                                               ; preds = %18
  %90 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.9 to i8*))
  br label %91

91:                                               ; preds = %89, %86
  br label %94

92:                                               ; preds = %2
  %93 = call i32 @PRINT_ERROR(i8* bitcast ([42 x i32]* @.str.10 to i8*))
  br label %94

94:                                               ; preds = %92, %91
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %95
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i64 @kull_m_file_readData(i32, i64*, i32*) #1

declare dso_local i64 @kull_m_string_qad_ansi_to_unicode(i8*) #1

declare dso_local i64 @kull_m_string_quickxml_simplefind(i64, i8*, i64*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i64 @kull_m_string_stringToHexBuffer(i64, i64*, i32*) #1

declare dso_local i32 @kull_m_dpapi_blob_quick_descr(i32, i64) #1

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i64, i32, i32*, i32, i32**, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
