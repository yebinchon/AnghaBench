; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32*, i32 }

@O_RDONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"File not open for writing\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Can not write tiles to a stripped image\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not write scanlines to a tiled image\00", align 1
@FIELD_IMAGEDIMENSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Must set \22ImageWidth\22 before writing data\00", align 1
@FIELD_PLANARCONFIG = common dso_local global i32 0, align 4
@PLANARCONFIG_CONTIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Must set \22PlanarConfiguration\22 before writing data\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"No space for %s arrays\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@TIFF_BEENWRITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFWriteCheck(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @O_RDONLY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %16, i8* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %135

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i32 @isTiled(%struct.TYPE_11__* %21)
  %23 = xor i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %28, i8* %29, i8* %33)
  store i32 0, i32* %4, align 4
  br label %135

35:                                               ; preds = %19
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = call i32 @_TIFFFillStriles(%struct.TYPE_11__* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* @FIELD_IMAGEDIMENSIONS, align 4
  %40 = call i32 @TIFFFieldSet(%struct.TYPE_11__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %45, i8* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %135

48:                                               ; preds = %35
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = load i32, i32* @FIELD_PLANARCONFIG, align 4
  %57 = call i32 @TIFFFieldSet(%struct.TYPE_11__* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %77

65:                                               ; preds = %48
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i32, i32* @FIELD_PLANARCONFIG, align 4
  %68 = call i32 @TIFFFieldSet(%struct.TYPE_11__* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %73, i8* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %135

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = call i32 @TIFFSetupStrips(%struct.TYPE_11__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = call i32 @isTiled(%struct.TYPE_11__* %95)
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %100 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %93, i8* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  store i32 0, i32* %4, align 4
  br label %135

101:                                              ; preds = %83, %77
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = call i32 @isTiled(%struct.TYPE_11__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = call i64 @TIFFTileSize(%struct.TYPE_11__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %135

115:                                              ; preds = %105
  br label %119

116:                                              ; preds = %101
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i64 -1, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = call i64 @TIFFScanlineSize(%struct.TYPE_11__* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %135

129:                                              ; preds = %119
  %130 = load i32, i32* @TIFF_BEENWRITING, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %129, %128, %114, %87, %70, %42, %25, %13
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @isTiled(%struct.TYPE_11__*) #1

declare dso_local i32 @_TIFFFillStriles(%struct.TYPE_11__*) #1

declare dso_local i32 @TIFFFieldSet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TIFFSetupStrips(%struct.TYPE_11__*) #1

declare dso_local i64 @TIFFTileSize(%struct.TYPE_11__*) #1

declare dso_local i64 @TIFFScanlineSize(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
