; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagShortPerSample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagShortPerSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@TIFFWriteDirectoryTagShortPerSample.module = internal constant [36 x i8] c"TIFFWriteDirectoryTagShortPerSample\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i64, i64)* @TIFFWriteDirectoryTagShortPerSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagShortPerSample(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  store i32 1, i32* %6, align 4
  br label %71

22:                                               ; preds = %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64* @_TIFFmalloc(i32 %29)
  store i64* %30, i64** %12, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TIFFErrorExt(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @TIFFWriteDirectoryTagShortPerSample.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %71

38:                                               ; preds = %22
  %39 = load i64*, i64** %12, align 8
  store i64* %39, i64** %13, align 8
  store i64 0, i64* %14, align 8
  br label %40

40:                                               ; preds = %51, %38
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i64, i64* %11, align 8
  %50 = load i64*, i64** %13, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %14, align 8
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %12, align 8
  %67 = call i32 @TIFFWriteDirectoryTagCheckedShortArray(%struct.TYPE_6__* %57, i32* %58, i32* %59, i64 %60, i64 %65, i64* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i64*, i64** %12, align 8
  %69 = call i32 @_TIFFfree(i64* %68)
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %56, %33, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFWriteDirectoryTagCheckedShortArray(%struct.TYPE_6__*, i32*, i32*, i64, i64, i64*) #1

declare dso_local i32 @_TIFFfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
