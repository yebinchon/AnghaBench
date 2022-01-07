; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_getFrameInfo.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_getFrameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@dstage_getFrameHeader = common dso_local global i64 0, align 8
@dstage_storeFrameHeader = common dso_local global i64 0, align 8
@LZ4F_ERROR_frameDecoding_alreadyStarted = common dso_local global i32 0, align 4
@LZ4F_ERROR_frameHeader_incomplete = common dso_local global i32 0, align 4
@BHSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LZ4F_getFrameInfo(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* @dstage_getFrameHeader, align 8
  %15 = load i64, i64* @dstage_storeFrameHeader, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @LZ4F_STATIC_ASSERT(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @dstage_storeFrameHeader, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i64 @LZ4F_decompress(%struct.TYPE_5__* %30, i32* null, i64* %10, i32* null, i64* %11, i32* null)
  store i64 %31, i64* %5, align 8
  br label %82

32:                                               ; preds = %4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @dstage_storeFrameHeader, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64*, i64** %9, align 8
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @LZ4F_ERROR_frameDecoding_alreadyStarted, align 4
  %41 = call i64 @err0r(i32 %40)
  store i64 %41, i64* %5, align 8
  br label %82

42:                                               ; preds = %32
  %43 = load i8*, i8** %8, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @LZ4F_headerSize(i8* %43, i64 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @LZ4F_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64*, i64** %9, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  br label %82

53:                                               ; preds = %42
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64*, i64** %9, align 8
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @LZ4F_ERROR_frameHeader_incomplete, align 4
  %61 = call i64 @err0r(i32 %60)
  store i64 %61, i64* %5, align 8
  br label %82

62:                                               ; preds = %53
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i64 @LZ4F_decodeHeader(%struct.TYPE_5__* %63, i8* %64, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i64 @LZ4F_isError(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64*, i64** %9, align 8
  store i64 0, i64* %71, align 8
  br label %76

72:                                               ; preds = %62
  %73 = load i64, i64* %13, align 8
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* @BHSize, align 8
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %72, %70
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* %13, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %76, %58, %50, %38, %24
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i32 @LZ4F_STATIC_ASSERT(i32) #1

declare dso_local i64 @LZ4F_decompress(%struct.TYPE_5__*, i32*, i64*, i32*, i64*, i32*) #1

declare dso_local i64 @err0r(i32) #1

declare dso_local i64 @LZ4F_headerSize(i8*, i64) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i64 @LZ4F_decodeHeader(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
