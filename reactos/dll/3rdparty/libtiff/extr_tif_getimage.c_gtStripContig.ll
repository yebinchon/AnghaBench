; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_gtStripContig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_gtStripContig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, %struct.TYPE_14__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)* }
%struct.TYPE_16__ = type { i32 }

@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid vertical YCbCr subsampling\00", align 1
@FLIP_VERTICALLY = common dso_local global i32 0, align 4
@TIFFTAG_ROWSPERSTRIP = common dso_local global i32 0, align 4
@FLIP_HORIZONTALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32, i32)* @gtStripContig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtStripContig(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %10, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %38, align 8
  store i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)* %39, i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %11, align 8
  store i8* null, i8** %18, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %22, align 4
  store i32 1, i32* %26, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %45 = call i32 (%struct.TYPE_16__*, i32, i32*, ...) @TIFFGetFieldDefaulted(%struct.TYPE_16__* %43, i32 %44, i32* %20, i32* %21)
  %46 = load i32, i32* %21, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = call i32 @TIFFFileName(%struct.TYPE_16__* %52)
  %54 = call i32 @TIFFErrorExt(i32 %51, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %265

55:                                               ; preds = %4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = call i32 @TIFFStripSize(%struct.TYPE_16__* %56)
  store i32 %57, i32* %28, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = call i32 @setorientation(%struct.TYPE_15__* %58)
  store i32 %59, i32* %27, align 4
  %60 = load i32, i32* %27, align 4
  %61 = load i32, i32* @FLIP_VERTICALLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %25, align 4
  br label %76

71:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %25, align 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %79 = call i32 (%struct.TYPE_16__*, i32, i32*, ...) @TIFFGetFieldDefaulted(%struct.TYPE_16__* %77, i32 %78, i32* %19)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = call i32 @TIFFScanlineSize(%struct.TYPE_16__* %80)
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %88, %85 ], [ 0, %89 ]
  store i32 %91, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %214, %90
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %218

96:                                               ; preds = %92
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* %19, align 4
  %104 = srem i32 %102, %103
  %105 = sub nsw i32 %97, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %112, %113
  br label %117

115:                                              ; preds = %96
  %116 = load i32, i32* %16, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %114, %111 ], [ %116, %115 ]
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %21, align 4
  %122 = srem i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %21, align 4
  %128 = srem i32 %126, %127
  %129 = sub nsw i32 %125, %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %124, %117
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = call i32 @TIFFComputeStrip(%struct.TYPE_16__* %134, i32 %139, i32 0)
  %141 = load i32, i32* %28, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load i32, i32* %19, align 4
  %148 = srem i32 %146, %147
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %23, align 4
  %152 = mul nsw i32 %150, %151
  %153 = call i32 @_TIFFReadEncodedStripAndAllocBuffer(%struct.TYPE_16__* %133, i32 %140, i8** %18, i32 %141, i32 %152)
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %164

155:                                              ; preds = %132
  %156 = load i8*, i8** %18, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158, %155
  store i32 0, i32* %26, align 4
  br label %218

164:                                              ; preds = %158, %132
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = load i32, i32* %19, align 4
  %171 = srem i32 %169, %170
  %172 = load i32, i32* %23, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %177, %180
  %182 = add nsw i32 %173, %181
  store i32 %182, i32* %17, align 4
  %183 = load i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %11, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %8, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load i8*, i8** %18, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = call i32 %183(%struct.TYPE_15__* %184, i32* %190, i32 0, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i8* %199)
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* @FLIP_VERTICALLY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %164
  %206 = load i32, i32* %14, align 4
  %207 = sub nsw i32 0, %206
  br label %210

208:                                              ; preds = %164
  %209 = load i32, i32* %14, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = phi i32 [ %207, %205 ], [ %209, %208 ]
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %12, align 4
  br label %92

218:                                              ; preds = %163, %92
  %219 = load i32, i32* %27, align 4
  %220 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %261

223:                                              ; preds = %218
  store i32 0, i32* %29, align 4
  br label %224

224:                                              ; preds = %257, %223
  %225 = load i32, i32* %29, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %260

228:                                              ; preds = %224
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %29, align 4
  %231 = load i32, i32* %8, align 4
  %232 = mul nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  store i32* %234, i32** %30, align 8
  %235 = load i32*, i32** %30, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = getelementptr inbounds i32, i32* %238, i64 -1
  store i32* %239, i32** %31, align 8
  br label %240

240:                                              ; preds = %244, %228
  %241 = load i32*, i32** %30, align 8
  %242 = load i32*, i32** %31, align 8
  %243 = icmp ult i32* %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load i32*, i32** %30, align 8
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %32, align 4
  %247 = load i32*, i32** %31, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %30, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %32, align 4
  %251 = load i32*, i32** %31, align 8
  store i32 %250, i32* %251, align 4
  %252 = load i32*, i32** %30, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %30, align 8
  %254 = load i32*, i32** %31, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 -1
  store i32* %255, i32** %31, align 8
  br label %240

256:                                              ; preds = %240
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %29, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %29, align 4
  br label %224

260:                                              ; preds = %224
  br label %261

261:                                              ; preds = %260, %218
  %262 = load i8*, i8** %18, align 8
  %263 = call i32 @_TIFFfree(i8* %262)
  %264 = load i32, i32* %26, align 4
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %261, %48
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_16__*, i32, i32*, ...) #1

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_16__*) #1

declare dso_local i32 @TIFFStripSize(%struct.TYPE_16__*) #1

declare dso_local i32 @setorientation(%struct.TYPE_15__*) #1

declare dso_local i32 @TIFFScanlineSize(%struct.TYPE_16__*) #1

declare dso_local i32 @_TIFFReadEncodedStripAndAllocBuffer(%struct.TYPE_16__*, i32, i8**, i32, i32) #1

declare dso_local i32 @TIFFComputeStrip(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
