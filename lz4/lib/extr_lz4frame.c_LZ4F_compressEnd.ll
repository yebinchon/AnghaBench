; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_compressEnd.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_compressEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@LZ4F_ERROR_dstMaxSize_tooSmall = common dso_local global i32 0, align 4
@LZ4F_contentChecksumEnabled = common dso_local global i64 0, align 8
@LZ4F_ERROR_frameSize_wrong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LZ4F_compressEnd(%struct.TYPE_8__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @LZ4F_flush(%struct.TYPE_8__* %17, i8* %18, i64 %19, i32* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @LZ4F_isError(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %5, align 8
  br label %103

27:                                               ; preds = %4
  %28 = load i64, i64* %12, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  store i32* %30, i32** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ule i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @LZ4F_ERROR_dstMaxSize_tooSmall, align 4
  %43 = call i64 @err0r(i32 %42)
  store i64 %43, i64* %5, align 8
  br label %103

44:                                               ; preds = %27
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @LZ4F_writeLE32(i32* %45, i32 0)
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32* %48, i32** %11, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LZ4F_contentChecksumEnabled, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = call i32 @XXH32_digest(i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %60, 8
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @LZ4F_ERROR_dstMaxSize_tooSmall, align 4
  %64 = call i64 @err0r(i32 %63)
  store i64 %64, i64* %5, align 8
  br label %103

65:                                               ; preds = %56
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @LZ4F_writeLE32(i32* %66, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %11, align 8
  br label %71

71:                                               ; preds = %65, %44
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* @LZ4F_ERROR_frameSize_wrong, align 4
  %94 = call i64 @err0r(i32 %93)
  store i64 %94, i64* %5, align 8
  br label %103

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %96, %92, %62, %41, %25
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i64 @LZ4F_flush(%struct.TYPE_8__*, i8*, i64, i32*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @err0r(i32) #1

declare dso_local i32 @LZ4F_writeLE32(i32*, i32) #1

declare dso_local i32 @XXH32_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
