; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagSampleformatArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagSampleformatArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@TIFFWriteDirectoryTagSampleformatArray.module = internal constant [39 x i8] c"TIFFWriteDirectoryTagSampleformatArray\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32*, i32, i32, double*)* @TIFFWriteDirectoryTagSampleformatArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagSampleformatArray(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3, i32 %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store double* %5, double** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i8* @_TIFFmalloc(i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TIFFErrorExt(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @TIFFWriteDirectoryTagSampleformatArray.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %285

29:                                               ; preds = %6
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %280 [
    i32 130, label %34
    i32 129, label %78
    i32 128, label %179
  ]

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 32
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load double*, double** %13, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = call float @TIFFClampDoubleToFloat(double %50)
  %52 = load i8*, i8** %14, align 8
  %53 = bitcast i8* %52 to float*
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  store float %51, float* %56, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = bitcast i8* %66 to float*
  %68 = call i32 @TIFFWriteDirectoryTagFloatArray(%struct.TYPE_13__* %61, i32* %62, i32* %63, i32 %64, i32 %65, float* %67)
  store i32 %68, i32* %16, align 4
  br label %77

69:                                               ; preds = %34
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load double*, double** %13, align 8
  %76 = call i32 @TIFFWriteDirectoryTagDoubleArray(%struct.TYPE_13__* %70, i32* %71, i32* %72, i32 %73, i32 %74, double* %75)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %69, %60
  br label %281

78:                                               ; preds = %29
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %82, 8
  br i1 %83, label %84, label %113

84:                                               ; preds = %78
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load double*, double** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = call i32 @TIFFClampDoubleToInt8(double %94)
  %96 = load i8*, i8** %14, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = call i32 @TIFFWriteDirectoryTagSbyteArray(%struct.TYPE_13__* %105, i32* %106, i32* %107, i32 %108, i32 %109, i32* %111)
  store i32 %112, i32* %16, align 4
  br label %178

113:                                              ; preds = %78
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %117, 16
  br i1 %118, label %119, label %148

119:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %136, %119
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load double*, double** %13, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  %129 = load double, double* %128, align 8
  %130 = call i32 @TIFFClampDoubleToInt16(double %129)
  %131 = load i8*, i8** %14, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %120

139:                                              ; preds = %120
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i8*, i8** %14, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = call i32 @TIFFWriteDirectoryTagSshortArray(%struct.TYPE_13__* %140, i32* %141, i32* %142, i32 %143, i32 %144, i32* %146)
  store i32 %147, i32* %16, align 4
  br label %177

148:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load double*, double** %13, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = call i32 @TIFFClampDoubleToInt32(double %158)
  %160 = load i8*, i8** %14, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %159, i32* %164, align 4
  br label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %149

168:                                              ; preds = %149
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i8*, i8** %14, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = call i32 @TIFFWriteDirectoryTagSlongArray(%struct.TYPE_13__* %169, i32* %170, i32* %171, i32 %172, i32 %173, i32* %175)
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %168, %139
  br label %178

178:                                              ; preds = %177, %104
  br label %281

179:                                              ; preds = %29
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %183, 8
  br i1 %184, label %185, label %214

185:                                              ; preds = %179
  store i32 0, i32* %15, align 4
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load double*, double** %13, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = call i32 @TIFFClampDoubleToUInt8(double %195)
  %197 = load i8*, i8** %14, align 8
  %198 = bitcast i8* %197 to i32*
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %196, i32* %201, align 4
  br label %202

202:                                              ; preds = %190
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %186

205:                                              ; preds = %186
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i8*, i8** %14, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = call i32 @TIFFWriteDirectoryTagByteArray(%struct.TYPE_13__* %206, i32* %207, i32* %208, i32 %209, i32 %210, i32* %212)
  store i32 %213, i32* %16, align 4
  br label %279

214:                                              ; preds = %179
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sle i32 %218, 16
  br i1 %219, label %220, label %249

220:                                              ; preds = %214
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %237, %220
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %221
  %226 = load double*, double** %13, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %226, i64 %228
  %230 = load double, double* %229, align 8
  %231 = call i32 @TIFFClampDoubleToUInt16(double %230)
  %232 = load i8*, i8** %14, align 8
  %233 = bitcast i8* %232 to i32*
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %231, i32* %236, align 4
  br label %237

237:                                              ; preds = %225
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  br label %221

240:                                              ; preds = %221
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i8*, i8** %14, align 8
  %247 = bitcast i8* %246 to i32*
  %248 = call i32 @TIFFWriteDirectoryTagShortArray(%struct.TYPE_13__* %241, i32* %242, i32* %243, i32 %244, i32 %245, i32* %247)
  store i32 %248, i32* %16, align 4
  br label %278

249:                                              ; preds = %214
  store i32 0, i32* %15, align 4
  br label %250

250:                                              ; preds = %266, %249
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %250
  %255 = load double*, double** %13, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %255, i64 %257
  %259 = load double, double* %258, align 8
  %260 = call i32 @TIFFClampDoubleToUInt32(double %259)
  %261 = load i8*, i8** %14, align 8
  %262 = bitcast i8* %261 to i32*
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %260, i32* %265, align 4
  br label %266

266:                                              ; preds = %254
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %250

269:                                              ; preds = %250
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %271 = load i32*, i32** %9, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load i8*, i8** %14, align 8
  %276 = bitcast i8* %275 to i32*
  %277 = call i32 @TIFFWriteDirectoryTagLongArray(%struct.TYPE_13__* %270, i32* %271, i32* %272, i32 %273, i32 %274, i32* %276)
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %269, %240
  br label %279

279:                                              ; preds = %278, %205
  br label %281

280:                                              ; preds = %29
  store i32 0, i32* %16, align 4
  br label %281

281:                                              ; preds = %280, %279, %178, %77
  %282 = load i8*, i8** %14, align 8
  %283 = call i32 @_TIFFfree(i8* %282)
  %284 = load i32, i32* %16, align 4
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %281, %24
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local i8* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local float @TIFFClampDoubleToFloat(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagFloatArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, float*) #1

declare dso_local i32 @TIFFWriteDirectoryTagDoubleArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, double*) #1

declare dso_local i32 @TIFFClampDoubleToInt8(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagSbyteArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TIFFClampDoubleToInt16(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagSshortArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TIFFClampDoubleToInt32(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagSlongArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TIFFClampDoubleToUInt8(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagByteArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TIFFClampDoubleToUInt16(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagShortArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TIFFClampDoubleToUInt32(double) #1

declare dso_local i32 @TIFFWriteDirectoryTagLongArray(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @_TIFFfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
