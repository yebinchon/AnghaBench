; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_GdipGetEncoderClsid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_GdipGetEncoderClsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@Ok = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GdipGetEncoderClsid(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = call i64 @GdipGetImageEncodersSize(i64* %6, i64* %7)
  %11 = load i64, i64* @Ok, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @E_FAIL, align 4
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %13
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.TYPE_5__* @HeapAlloc(i32 %19, i32 0, i64 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = call i64 @GdipGetImageEncoders(i64 %27, i64 %28, %struct.TYPE_5__* %29)
  %31 = load i64, i64* @Ok, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = call i32 @HeapFree(i32 %34, i32 0, %struct.TYPE_5__* %35)
  %37 = load i32, i32* @E_FAIL, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @_wcsicmp(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = call i32 @HeapFree(i32 %59, i32 0, %struct.TYPE_5__* %60)
  %62 = load i32, i32* @S_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %39

67:                                               ; preds = %39
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = call i32 @HeapFree(i32 %68, i32 0, %struct.TYPE_5__* %69)
  %71 = load i32, i32* @E_FAIL, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %52, %33, %24, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @GdipGetImageEncodersSize(i64*, i64*) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GdipGetImageEncoders(i64, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @_wcsicmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
