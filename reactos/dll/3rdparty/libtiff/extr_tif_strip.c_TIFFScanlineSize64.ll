; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFScanlineSize64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFScanlineSize64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@TIFFScanlineSize64.module = internal constant [19 x i8] c"TIFFScanlineSize64\00", align 16
@PLANARCONFIG_CONTIG = common dso_local global i64 0, align 8
@PHOTOMETRIC_YCBCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid td_samplesperpixel value\00", align 1
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid YCbCr subsampling\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Computed scanline size is zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFScanlineSize64(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PLANARCONFIG_CONTIG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %125

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PHOTOMETRIC_YCBCR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %108

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %108

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @isUpSampled(%struct.TYPE_8__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %108, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TIFFErrorExt(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_8__* %45, i32 %46, i32* %48, i32* %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %75, label %63

63:                                               ; preds = %59, %55, %44
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %59
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TIFFErrorExt(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

80:                                               ; preds = %71, %67, %63
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TIFFhowmany_32(i32 %89, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @_TIFFMultiply64(%struct.TYPE_8__* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0))
  store i32 %96, i32* %9, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @_TIFFMultiply64(%struct.TYPE_8__* %97, i32 %98, i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0))
  %103 = call i32 @TIFFhowmany_64(i32 %102, i32 8)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %104, %106
  store i32 %107, i32* %5, align 4
  br label %124

108:                                              ; preds = %30, %25, %19
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @_TIFFMultiply64(%struct.TYPE_8__* %109, i32 %112, i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0))
  store i32 %116, i32* %11, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @_TIFFMultiply64(%struct.TYPE_8__* %117, i32 %118, i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0))
  %123 = call i32 @TIFFhowmany_64(i32 %122, i32 8)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %108, %80
  br label %135

125:                                              ; preds = %1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @_TIFFMultiply64(%struct.TYPE_8__* %126, i32 %129, i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0))
  %134 = call i32 @TIFFhowmany_64(i32 %133, i32 8)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %125, %124
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @TIFFErrorExt(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFScanlineSize64.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %138, %75, %39
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @isUpSampled(%struct.TYPE_8__*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @TIFFhowmany_32(i32, i32) #1

declare dso_local i32 @_TIFFMultiply64(%struct.TYPE_8__*, i32, i32, i8*) #1

declare dso_local i32 @TIFFhowmany_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
