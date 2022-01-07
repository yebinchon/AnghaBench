; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_PickSeparateCase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_PickSeparateCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i32* }

@gtTileSeparate = common dso_local global i32* null, align 8
@gtStripSeparate = common dso_local global i32* null, align 8
@EXTRASAMPLE_ASSOCALPHA = common dso_local global i32 0, align 4
@putRGBAAseparate8bittile = common dso_local global i32* null, align 8
@EXTRASAMPLE_UNASSALPHA = common dso_local global i32 0, align 4
@putRGBUAseparate8bittile = common dso_local global i32* null, align 8
@putRGBseparate8bittile = common dso_local global i32* null, align 8
@putRGBAAseparate16bittile = common dso_local global i32* null, align 8
@putRGBUAseparate16bittile = common dso_local global i32* null, align 8
@putRGBseparate16bittile = common dso_local global i32* null, align 8
@putCMYKseparate8bittile = common dso_local global i32* null, align 8
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@putseparate8bitYCbCr11tile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @PickSeparateCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PickSeparateCase(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @TIFFIsTiled(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @gtTileSeparate, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** @gtStripSeparate, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %161 [
    i32 131, label %24
    i32 132, label %24
    i32 130, label %24
    i32 129, label %111
    i32 128, label %129
  ]

24:                                               ; preds = %14, %14, %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %110 [
    i32 8, label %28
    i32 16, label %62
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EXTRASAMPLE_ASSOCALPHA, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** @putRGBAAseparate8bittile, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  br label %61

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = call i32 @BuildMapUaToAa(%struct.TYPE_8__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32*, i32** @putRGBUAseparate8bittile, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  br label %54

54:                                               ; preds = %49, %45
  br label %60

55:                                               ; preds = %39
  %56 = load i32*, i32** @putRGBseparate8bittile, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %54
  br label %61

61:                                               ; preds = %60, %34
  br label %110

62:                                               ; preds = %24
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @EXTRASAMPLE_ASSOCALPHA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_8__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** @putRGBAAseparate16bittile, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  br label %77

77:                                               ; preds = %72, %68
  br label %109

78:                                               ; preds = %62
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_8__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = call i32 @BuildMapUaToAa(%struct.TYPE_8__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32*, i32** @putRGBUAseparate16bittile, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32* %93, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %88, %84
  br label %108

98:                                               ; preds = %78
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = call i32 @BuildMapBitdepth16To8(%struct.TYPE_8__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** @putRGBseparate16bittile, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32* %103, i32** %106, align 8
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %24, %109, %61
  br label %161

111:                                              ; preds = %14
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  %124 = load i32*, i32** @putCMYKseparate8bittile, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32* %124, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %116, %111
  br label %161

129:                                              ; preds = %14
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 8
  br i1 %133, label %134, label %160

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = call i32 @initYCbCrConversion(%struct.TYPE_8__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %148 = call i32 @TIFFGetFieldDefaulted(i32 %146, i32 %147, i32* %3, i32* %4)
  %149 = load i32, i32* %3, align 4
  %150 = shl i32 %149, 4
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %150, %151
  switch i32 %152, label %158 [
    i32 17, label %153
  ]

153:                                              ; preds = %143
  %154 = load i32*, i32** @putseparate8bitYCbCr11tile, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32* %154, i32** %157, align 8
  br label %158

158:                                              ; preds = %143, %153
  br label %159

159:                                              ; preds = %158, %139
  br label %160

160:                                              ; preds = %159, %134, %129
  br label %161

161:                                              ; preds = %14, %160, %128, %110
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br label %172

172:                                              ; preds = %166, %161
  %173 = phi i1 [ false, %161 ], [ %171, %166 ]
  %174 = zext i1 %173 to i32
  ret i32 %174
}

declare dso_local i64 @TIFFIsTiled(i32) #1

declare dso_local i32 @BuildMapUaToAa(%struct.TYPE_8__*) #1

declare dso_local i32 @BuildMapBitdepth16To8(%struct.TYPE_8__*) #1

declare dso_local i32 @initYCbCrConversion(%struct.TYPE_8__*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
