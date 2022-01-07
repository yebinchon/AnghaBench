; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_async_doc_navigate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_async_doc_navigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8*, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_UI1 = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Navigation canceled\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@doc_navigate_proc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, i32, i64)* @async_doc_navigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_doc_navigate(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @debugstr_w(i64 %16)
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call %struct.TYPE_5__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %14, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %7, align 4
  br label %122

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = call i8* @SysAllocString(i64 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @doc_navigate_task_destr(i32* %35)
  %37 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %37, i32* %7, align 4
  br label %122

38:                                               ; preds = %24
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = call i8* @SysAllocString(i64 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @doc_navigate_task_destr(i32* %52)
  %54 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %54, i32* %7, align 4
  br label %122

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load i32, i32* @VT_UI1, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.TYPE_6__* @SafeArrayCreateVector(i32 %60, i32 0, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @doc_navigate_task_destr(i32* %71)
  %73 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %73, i32* %7, align 4
  br label %122

74:                                               ; preds = %59
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @memcpy(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %56
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @VARIANT_FALSE, align 8
  store i64 %87, i64* %15, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @on_before_navigate2(i32* %88, i8* %91, %struct.TYPE_6__* %94, i8* %97, i64* %15)
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %86
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @doc_navigate_task_destr(i32* %104)
  %106 = load i32, i32* @S_OK, align 4
  store i32 %106, i32* %7, align 4
  br label %122

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %83
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @doc_navigate_proc, align 4
  %114 = call i32 @abort_dochost_tasks(i32* %112, i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* @doc_navigate_proc, align 4
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @push_dochost_task(i32* %115, i32* %117, i32 %118, i32 (i32*)* @doc_navigate_task_destr, i32 %119)
  %121 = load i32, i32* @S_OK, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %108, %101, %69, %50, %33, %22
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local %struct.TYPE_5__* @heap_alloc_zero(i32) #1

declare dso_local i8* @SysAllocString(i64) #1

declare dso_local i32 @doc_navigate_task_destr(i32*) #1

declare dso_local %struct.TYPE_6__* @SafeArrayCreateVector(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @on_before_navigate2(i32*, i8*, %struct.TYPE_6__*, i8*, i64*) #1

declare dso_local i32 @abort_dochost_tasks(i32*, i32) #1

declare dso_local i32 @push_dochost_task(i32*, i32*, i32, i32 (i32*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
