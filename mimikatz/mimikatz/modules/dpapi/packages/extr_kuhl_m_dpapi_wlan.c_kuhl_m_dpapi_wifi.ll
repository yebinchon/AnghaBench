; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_wlan.c_kuhl_m_dpapi_wifi.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_wlan.c_kuhl_m_dpapi_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [15 x i32] [i32 80, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 83, i32 83, i32 73, i32 68, i32 0], align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 32, i32 42, i32 32, i32 83, i32 83, i32 73, i32 68, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [4 x i32] [i32 104, i32 101, i32 120, i32 0], align 4
@.str.7 = private unnamed_addr constant [15 x i32] [i32 104, i32 101, i32 120, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 63, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [15 x i32] [i32 97, i32 117, i32 116, i32 104, i32 101, i32 110, i32 116, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.10 = private unnamed_addr constant [23 x i32] [i32 32, i32 42, i32 32, i32 65, i32 117, i32 116, i32 104, i32 101, i32 110, i32 116, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [11 x i32] [i32 101, i32 110, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.12 = private unnamed_addr constant [23 x i32] [i32 32, i32 42, i32 32, i32 69, i32 110, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [12 x i32] [i32 107, i32 101, i32 121, i32 77, i32 97, i32 116, i32 101, i32 114, i32 105, i32 97, i32 108, i32 0], align 4
@.str.14 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 75, i32 101, i32 121, i32 32, i32 77, i32 97, i32 116, i32 101, i32 114, i32 105, i32 97, i32 108, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.16 = private unnamed_addr constant [4 x i32] [i32 87, i32 69, i32 80, i32 0], align 4
@.str.17 = private unnamed_addr constant [7 x i32] [i32 40, i32 104, i32 101, i32 120, i32 41, i32 32, i32 0], align 4
@.str.18 = private unnamed_addr constant [5 x i32] [i32 37, i32 46, i32 42, i32 83, i32 0], align 4
@.str.19 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.20 = private unnamed_addr constant [42 x i32] [i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 87, i32 108, i32 97, i32 110, i32 32, i32 88, i32 77, i32 76, i32 32, i32 112, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 40, i32 47, i32 105, i32 110, i32 58, i32 102, i32 105, i32 108, i32 101, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_wifi(i32 %0, i32** %1) #0 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i64 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([3 x i32]* @.str to i8*), i32* %15, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %137

20:                                               ; preds = %2
  %21 = load i32, i32* %15, align 4
  %22 = call i64 @kull_m_file_readData(i32 %21, i64* %5, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %134

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i64 @kull_m_string_qad_ansi_to_unicode(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %131

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @kull_m_string_quickxml_simplefind(i64 %30, i8* bitcast ([5 x i32]* @.str.1 to i8*), i64* %13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  %35 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.2 to i8*), i64 %34)
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @LocalFree(i64 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @kull_m_string_quickxml_simplefind(i64 %39, i8* bitcast ([5 x i32]* @.str.3 to i8*), i64* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @kprintf(i8* bitcast ([9 x i32]* @.str.4 to i8*))
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @kull_m_string_quickxml_simplefind(i64 %44, i8* bitcast ([5 x i32]* @.str.1 to i8*), i64* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* %13, align 8
  %49 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.5 to i8*), i64 %48)
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @LocalFree(i64 %50)
  br label %64

52:                                               ; preds = %42
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @kull_m_string_quickxml_simplefind(i64 %53, i8* bitcast ([4 x i32]* @.str.6 to i8*), i64* %13)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* %13, align 8
  %58 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.7 to i8*), i64 %57)
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @LocalFree(i64 %59)
  br label %63

61:                                               ; preds = %52
  %62 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.8 to i8*))
  br label %63

63:                                               ; preds = %61, %56
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @LocalFree(i64 %65)
  br label %67

67:                                               ; preds = %64, %38
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @kull_m_string_quickxml_simplefind(i64 %68, i8* bitcast ([15 x i32]* @.str.9 to i8*), i64* %14)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %128

71:                                               ; preds = %67
  %72 = load i64, i64* %14, align 8
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.10 to i8*), i64 %72)
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @kull_m_string_quickxml_simplefind(i64 %74, i8* bitcast ([11 x i32]* @.str.11 to i8*), i64* %13)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i64, i64* %13, align 8
  %79 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.12 to i8*), i64 %78)
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @LocalFree(i64 %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @kull_m_string_quickxml_simplefind(i64 %83, i8* bitcast ([12 x i32]* @.str.13 to i8*), i64* %13)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %82
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @kull_m_string_stringToHexBuffer(i64 %87, i64* %6, i32* %9)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @kull_m_dpapi_blob_quick_descr(i32 0, i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32**, i32*** %4, align 8
  %98 = bitcast i64* %7 to i32*
  %99 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i64 %94, i32 %95, i32* null, i32 %96, i32** %97, i32* null, i32 0, i32* %98, i32* %10, i32* null)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %90
  %102 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.15 to i8*))
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @_wcsicmp(i64 %103, i8* bitcast ([4 x i32]* @.str.16 to i8*))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.17 to i8*))
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @kull_m_string_wprintf_hex(i64 %108, i32 %109, i32 0)
  br label %115

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @LocalFree(i64 %117)
  br label %119

119:                                              ; preds = %115, %90
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @LocalFree(i64 %120)
  br label %122

122:                                              ; preds = %119, %86
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @LocalFree(i64 %123)
  br label %125

125:                                              ; preds = %122, %82
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @LocalFree(i64 %126)
  br label %128

128:                                              ; preds = %125, %67
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @LocalFree(i64 %129)
  br label %131

131:                                              ; preds = %128, %24
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @LocalFree(i64 %132)
  br label %136

134:                                              ; preds = %20
  %135 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.19 to i8*))
  br label %136

136:                                              ; preds = %134, %131
  br label %139

137:                                              ; preds = %2
  %138 = call i32 @PRINT_ERROR(i8* bitcast ([42 x i32]* @.str.20 to i8*))
  br label %139

139:                                              ; preds = %137, %136
  %140 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %140
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

declare dso_local i64 @_wcsicmp(i64, i8*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
