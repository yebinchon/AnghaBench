; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFVStripSize64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFVStripSize64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i32 }

@TIFFVStripSize64.module = internal constant [17 x i8] c"TIFFVStripSize64\00", align 16
@PLANARCONFIG_CONTIG = common dso_local global i64 0, align 8
@PHOTOMETRIC_YCBCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid td_samplesperpixel value\00", align 1
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid YCbCr subsampling (%dx%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFVStripSize64(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PLANARCONFIG_CONTIG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %119

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHOTOMETRIC_YCBCR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %119

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i32 @isUpSampled(%struct.TYPE_9__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %119, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_9__* %48, i32 %49, i32* %51, i32* %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %78, label %66

66:                                               ; preds = %62, %58, %47
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %62
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %85)
  store i32 0, i32* %3, align 4
  br label %125

87:                                               ; preds = %74, %70, %66
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %89, %91
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %8, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @TIFFhowmany_32(i32 %96, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @TIFFhowmany_32(i32 %100, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @_TIFFMultiply64(%struct.TYPE_9__* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0))
  store i32 %107, i32* %11, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @_TIFFMultiply64(%struct.TYPE_9__* %108, i32 %109, i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0))
  %114 = call i32 @TIFFhowmany8_64(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @_TIFFMultiply64(%struct.TYPE_9__* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0))
  store i32 %118, i32* %3, align 4
  br label %125

119:                                              ; preds = %33, %27, %21
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = call i32 @TIFFScanlineSize64(%struct.TYPE_9__* %122)
  %124 = call i32 @_TIFFMultiply64(%struct.TYPE_9__* %120, i32 %121, i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFVStripSize64.module, i64 0, i64 0))
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %119, %87, %78, %42
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @isUpSampled(%struct.TYPE_9__*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @TIFFhowmany_32(i32, i32) #1

declare dso_local i32 @_TIFFMultiply64(%struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @TIFFhowmany8_64(i32) #1

declare dso_local i32 @TIFFScanlineSize64(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
