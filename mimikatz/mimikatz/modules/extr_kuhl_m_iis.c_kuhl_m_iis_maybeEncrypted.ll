; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_maybeEncrypted.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_maybeEncrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 91, i32 101, i32 110, i32 99, i32 58, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 58, i32 101, i32 110, i32 99, i32 93, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i32] [i32 32, i32 32, i32 124, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 32, i32 32, i32 124, i32 32, i32 68, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [50 x i32] [i32 47, i32 47, i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 117, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 47, i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 80, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 101, i32 100, i32 68, i32 97, i32 116, i32 97, i32 47, i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 115, i32 47, i32 97, i32 100, i32 100, i32 0], align 4
@IISXMLType_Providers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_iis_maybeEncrypted(i32 %0, i32** %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @wcslen(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %24, 10
  br i1 %25, label %26, label %108

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @_wcsnicmp(i64 %27, i8* bitcast ([6 x i32]* @.str to i8*), i32 5)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 5
  %34 = add i64 %31, %33
  %35 = call i64 @_wcsnicmp(i64 %34, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 5)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %107

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 5
  %42 = call i64 @wcschr(i64 %41, i32 58)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 5
  %50 = add i64 %47, %49
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %37
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, 5
  %58 = add i64 %55, %57
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %12, align 8
  %62 = load i32, i32* @LPTR, align 4
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 4
  %65 = call i64 @LocalAlloc(i32 %62, i64 %64)
  store i64 %65, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %52
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @RtlCopyMemory(i64 %68, i64 %69, i64 %70)
  %72 = load i32, i32* @LPTR, align 4
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 4
  %75 = call i64 @LocalAlloc(i32 %72, i64 %74)
  store i64 %75, i64* %18, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %67
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @RtlCopyMemory(i64 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @kprintf(i8* bitcast ([39 x i32]* @.str.2 to i8*), i64 %82, i64 %83)
  %85 = load i64, i64* %18, align 8
  %86 = call i64 @kull_m_string_quick_base64_to_Binary(i64 %85, i64* %19, i32* %20)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32**, i32*** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @IISXMLType_Providers, align 4
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @kuhl_m_iis_apphost_genericEnumNodes(i32 %89, i32** %90, i32* %91, i8* bitcast ([50 x i32]* @.str.3 to i8*), i32 %92, i64 %93, i64 %94, i32 %95)
  %97 = load i64, i64* %19, align 8
  %98 = call i32 @LocalFree(i64 %97)
  br label %99

99:                                               ; preds = %88, %77
  %100 = load i64, i64* %18, align 8
  %101 = call i32 @LocalFree(i64 %100)
  br label %102

102:                                              ; preds = %99, %67
  %103 = load i64, i64* %17, align 8
  %104 = call i32 @LocalFree(i64 %103)
  br label %105

105:                                              ; preds = %102, %52
  br label %106

106:                                              ; preds = %105, %37
  br label %107

107:                                              ; preds = %106, %30, %26
  br label %108

108:                                              ; preds = %107, %4
  ret void
}

declare dso_local i64 @wcslen(i64) #1

declare dso_local i64 @_wcsnicmp(i64, i8*, i32) #1

declare dso_local i64 @wcschr(i64, i32) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

declare dso_local i64 @kull_m_string_quick_base64_to_Binary(i64, i64*, i32*) #1

declare dso_local i32 @kuhl_m_iis_apphost_genericEnumNodes(i32, i32**, i32*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
