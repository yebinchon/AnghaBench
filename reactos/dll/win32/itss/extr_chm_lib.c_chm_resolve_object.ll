; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c_chm_resolve_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c_chm_resolve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32, i32, i64 }
%struct.chmUnitInfo = type { i32 }

@CHM_RESOLVE_FAILURE = common dso_local global i32 0, align 4
@_chm_pmgl_marker = common dso_local global i32 0, align 4
@CHM_RESOLVE_SUCCESS = common dso_local global i32 0, align 4
@_chm_pmgi_marker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chm_resolve_object(%struct.chmFile* %0, i32* %1, %struct.chmUnitInfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chmFile*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmUnitInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.chmFile* %0, %struct.chmFile** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmUnitInfo* %2, %struct.chmUnitInfo** %7, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %13 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @HeapAlloc(i32 %11, i32 0, i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %17 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %92, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %93

22:                                               ; preds = %19
  %23 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %26 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %30 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %27, %33
  %35 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %36 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @_chm_fetch_bytes(%struct.chmFile* %23, i32* %24, i64 %34, i32 %37)
  %39 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %40 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @HeapFree(i32 %44, i32 0, i32* %45)
  %47 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %98

48:                                               ; preds = %22
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @_chm_pmgl_marker, align 4
  %51 = call i64 @memcmp(i32* %49, i32 %50, i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %56 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @_chm_find_in_PMGL(i32* %54, i32 %57, i32* %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, i32* %64)
  %66 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %66, i32* %4, align 4
  br label %98

67:                                               ; preds = %53
  %68 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %7, align 8
  %69 = call i32 @_chm_parse_PMGL_entry(i32** %10, %struct.chmUnitInfo* %68)
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, i32* %71)
  %73 = load i32, i32* @CHM_RESOLVE_SUCCESS, align 4
  store i32 %73, i32* %4, align 4
  br label %98

74:                                               ; preds = %48
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @_chm_pmgi_marker, align 4
  %77 = call i64 @memcmp(i32* %75, i32 %76, i32 4)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %82 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @_chm_find_in_PMGI(i32* %80, i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  br label %91

86:                                               ; preds = %74
  %87 = call i32 (...) @GetProcessHeap()
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @HeapFree(i32 %87, i32 0, i32* %88)
  %90 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %90, i32* %4, align 4
  br label %98

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  br label %19

93:                                               ; preds = %19
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @HeapFree(i32 %94, i32 0, i32* %95)
  %97 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %86, %67, %62, %43
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @_chm_fetch_bytes(%struct.chmFile*, i32*, i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32* @_chm_find_in_PMGL(i32*, i32, i32*) #1

declare dso_local i32 @_chm_parse_PMGL_entry(i32**, %struct.chmUnitInfo*) #1

declare dso_local i32 @_chm_find_in_PMGI(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
