; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFDefaultDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFDefaultDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_14__*, %struct.TYPE_11__, i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i32, i32*, i32, i32, i32, i64, i64, i32, i32, i32 }

@FILLORDER_MSB2LSB = common dso_local global i32 0, align 4
@THRESHHOLD_BILEVEL = common dso_local global i32 0, align 4
@ORIENTATION_TOPLEFT = common dso_local global i32 0, align 4
@RESUNIT_INCH = common dso_local global i32 0, align 4
@SAMPLEFORMAT_UINT = common dso_local global i32 0, align 4
@YCBCRPOSITION_CENTERED = common dso_local global i32 0, align 4
@_TIFFNoPostDecode = common dso_local global i32 0, align 4
@_TIFFVSetField = common dso_local global i32 0, align 4
@_TIFFVGetField = common dso_local global i32 0, align 4
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@COMPRESSION_NONE = common dso_local global i32 0, align 4
@TIFF_DIRTYDIRECT = common dso_local global i32 0, align 4
@TIFF_ISTILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFDefaultDirectory(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 6
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = call i32* (...) @_TIFFGetFields()
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @_TIFFSetupFields(%struct.TYPE_13__* %9, i32* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @_TIFFmemset(%struct.TYPE_12__* %12, i32 0, i32 88)
  %14 = load i32, i32* @FILLORDER_MSB2LSB, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @THRESHHOLD_BILEVEL, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ORIENTATION_TOPLEFT, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  store i64 -1, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @RESUNIT_INCH, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SAMPLEFORMAT_UINT, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 2, i32* %48, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 2, i32* %52, align 4
  %53 = load i32, i32* @YCBCRPOSITION_CENTERED, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @_TIFFNoPostDecode, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @_TIFFVSetField, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @_TIFFVGetField, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %102, %76
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = call i32 @_TIFFfree(%struct.TYPE_14__* %99)
  br label %101

101:                                              ; preds = %92, %83
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %77

105:                                              ; preds = %77
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = call i32 @_TIFFfree(%struct.TYPE_14__* %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %113, align 8
  br label %114

114:                                              ; preds = %105, %1
  br i1 true, label %115, label %118

115:                                              ; preds = %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = call i32 @_TIFFextender(%struct.TYPE_13__* %116)
  br label %118

118:                                              ; preds = %115, %114
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %121 = load i32, i32* @COMPRESSION_NONE, align 4
  %122 = call i32 @TIFFSetField(%struct.TYPE_13__* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @TIFF_DIRTYDIRECT, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @TIFF_ISTILED, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  ret i32 1
}

declare dso_local i32* @_TIFFGetFields(...) #1

declare dso_local i32 @_TIFFSetupFields(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @_TIFFmemset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @_TIFFfree(%struct.TYPE_14__*) #1

declare dso_local i32 @_TIFFextender(%struct.TYPE_13__*) #1

declare dso_local i32 @TIFFSetField(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
