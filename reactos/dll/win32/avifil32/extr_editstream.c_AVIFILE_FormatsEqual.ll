; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_editstream.c_AVIFILE_FormatsEqual.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_editstream.c_AVIFILE_FormatsEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @AVIFILE_FormatsEqual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_FormatsEqual(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ false, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @AVIStreamStart(i32* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @AVIStreamStart(i32* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @AVIStreamFormatSize(i32* %27, i64 %28, i64* %8)
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %19
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @AVIStreamFormatSize(i32* %35, i64 %36, i64* %9)
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %93

48:                                               ; preds = %42
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load i64, i64* %8, align 8
  %51 = call i32* @HeapAlloc(i32 %49, i32 0, i64 %50)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @AVIStreamReadFormat(i32* %57, i64 %58, i32* %59, i64* %8)
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i64, i64* %8, align 8
  %66 = call i32* @HeapAlloc(i32 %64, i32 0, i64 %65)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @AVIStreamReadFormat(i32* %70, i64 %71, i32* %72, i64* %8)
  %74 = call i64 @SUCCEEDED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @memcmp(i32* %77, i32* %78, i64 %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %56
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, i32* %87)
  %89 = call i32 (...) @GetProcessHeap()
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @HeapFree(i32 %89, i32 0, i32* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %54, %46, %40, %32
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @AVIStreamStart(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @AVIStreamFormatSize(i32*, i64, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @AVIStreamReadFormat(i32*, i64, i32*, i64*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
