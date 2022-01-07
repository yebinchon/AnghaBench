; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFReadEncodedTile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFReadEncodedTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 (%struct.TYPE_13__*, i8*, i64)*, i64 (%struct.TYPE_13__*, i8*, i64, i32)*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i32 }

@TIFFReadEncodedTile.module = internal constant [20 x i8] c"TIFFReadEncodedTile\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"%lu: Tile out of range, max %lu\00", align 1
@COMPRESSION_NONE = common dso_local global i64 0, align 8
@TIFF_NOREADRAW = common dso_local global i32 0, align 4
@TIFF_NOBITREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TIFFReadEncodedTile(%struct.TYPE_13__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 5
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = call i32 @TIFFCheckRead(%struct.TYPE_13__* %17, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %138

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @TIFFErrorExt(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFReadEncodedTile.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34)
  store i64 -1, i64* %5, align 8
  br label %138

36:                                               ; preds = %21
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @COMPRESSION_NONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, -1
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = call i32 @isMapped(%struct.TYPE_13__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TIFF_NOREADRAW, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %53
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @TIFFReadRawTile1(%struct.TYPE_13__* %61, i64 %62, i8* %63, i64 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFReadEncodedTile.module, i64 0, i64 0))
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i64 -1, i64* %5, align 8
  br label %138

69:                                               ; preds = %60
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @isFillOrder(%struct.TYPE_13__* %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TIFF_NOBITREV, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @TIFFReverseBits(i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %76, %69
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_13__*, i8*, i64)*, i32 (%struct.TYPE_13__*, i8*, i64)** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 %90(%struct.TYPE_13__* %91, i8* %92, i64 %93)
  %95 = load i64, i64* %11, align 8
  store i64 %95, i64* %5, align 8
  br label %138

96:                                               ; preds = %53, %49, %45, %42, %36
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %9, align 8
  br label %108

101:                                              ; preds = %96
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* %11, align 8
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %99
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @TIFFFillTile(%struct.TYPE_13__* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %108
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i64 (%struct.TYPE_13__*, i8*, i64, i32)*, i64 (%struct.TYPE_13__*, i8*, i64, i32)** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sdiv i64 %120, %123
  %125 = trunc i64 %124 to i32
  %126 = call i64 %116(%struct.TYPE_13__* %117, i8* %118, i64 %119, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %113
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32 (%struct.TYPE_13__*, i8*, i64)*, i32 (%struct.TYPE_13__*, i8*, i64)** %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 %131(%struct.TYPE_13__* %132, i8* %133, i64 %134)
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %5, align 8
  br label %138

137:                                              ; preds = %113, %108
  store i64 -1, i64* %5, align 8
  br label %138

138:                                              ; preds = %137, %128, %87, %68, %27, %20
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @TIFFCheckRead(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @isMapped(%struct.TYPE_13__*) #1

declare dso_local i64 @TIFFReadRawTile1(%struct.TYPE_13__*, i64, i8*, i64, i8*) #1

declare dso_local i32 @isFillOrder(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TIFFReverseBits(i8*, i64) #1

declare dso_local i64 @TIFFFillTile(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
