; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_ReadExtraChunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_ReadExtraChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@AVIERR_OK = common dso_local global i32 0, align 4
@AVIERR_NODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadExtraChunk(%struct.TYPE_3__* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %82

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i64, i64* %11, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = bitcast i32* %33 to i64*
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = load i32*, i32** %10, align 8
  %51 = bitcast i32* %50 to i64*
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @min(i64 %53, i64 %55)
  %57 = call i32 @memcpy(i32* %47, i32* %49, i32 %56)
  br label %58

58:                                               ; preds = %46, %42, %39
  %59 = load i32*, i32** %10, align 8
  %60 = bitcast i32* %59 to i64*
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @AVIERR_OK, align 4
  store i32 %64, i32* %5, align 4
  br label %85

65:                                               ; preds = %32
  %66 = load i32*, i32** %10, align 8
  %67 = bitcast i32* %66 to i64*
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 16
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = bitcast i32* %73 to i64*
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 16
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %10, align 8
  br label %80

80:                                               ; preds = %65
  br label %29

81:                                               ; preds = %29
  br label %82

82:                                               ; preds = %81, %4
  %83 = load i64*, i64** %9, align 8
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @AVIERR_NODATA, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %58
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
