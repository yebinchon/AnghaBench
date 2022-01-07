; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelMapfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelMapfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i64*, i64, i64*, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glPixelMapfv\00", align 1
@MAX_PIXEL_MAP_TABLE = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"glPixelMapfv(mapsize)\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"glPixelMapfv(map)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PixelMapfv(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %18 = call i32 @gl_error(%struct.TYPE_7__* %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %318

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MAX_PIXEL_MAP_TABLE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = load i32, i32* @GL_INVALID_VALUE, align 4
  %29 = call i32 @gl_error(%struct.TYPE_7__* %27, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %318

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 128
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 134
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i32, i32* @GL_FALSE, align 4
  store i32 %37, i32* %11, align 4
  store i64 1, i64* %10, align 8
  br label %38

38:                                               ; preds = %51, %36
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @MAX_PIXEL_MAP_TABLE, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @GL_TRUE, align 4
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = shl i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %38

54:                                               ; preds = %48, %38
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load i32, i32* @GL_INVALID_VALUE, align 4
  %60 = call i32 @gl_error(%struct.TYPE_7__* %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %318

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %33, %30
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %314 [
    i32 128, label %64
    i32 131, label %89
    i32 130, label %114
    i32 132, label %139
    i32 133, label %164
    i32 134, label %189
    i32 129, label %214
    i32 135, label %239
    i32 136, label %264
    i32 137, label %289
  ]

64:                                               ; preds = %62
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 19
  store i64 %65, i64* %68, align 8
  store i64 0, i64* %9, align 8
  br label %69

69:                                               ; preds = %85, %64
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 18
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %78, i64* %84, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %69

88:                                               ; preds = %69
  br label %318

89:                                               ; preds = %62
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 17
  store i64 %90, i64* %93, align 8
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %110, %89
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 16
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %103, i64* %109, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %94

113:                                              ; preds = %94
  br label %318

114:                                              ; preds = %62
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 15
  store i64 %115, i64* %118, align 8
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %135, %114
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @CLAMP(i32 %127, double 0.000000e+00, double 1.000000e+00)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 14
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  store i8* %128, i8** %134, align 8
  br label %135

135:                                              ; preds = %123
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %119

138:                                              ; preds = %119
  br label %318

139:                                              ; preds = %62
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 13
  store i64 %140, i64* %143, align 8
  store i64 0, i64* %9, align 8
  br label %144

144:                                              ; preds = %160, %139
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load i32*, i32** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @CLAMP(i32 %152, double 0.000000e+00, double 1.000000e+00)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 12
  %157 = load i8**, i8*** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  store i8* %153, i8** %159, align 8
  br label %160

160:                                              ; preds = %148
  %161 = load i64, i64* %9, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %9, align 8
  br label %144

163:                                              ; preds = %144
  br label %318

164:                                              ; preds = %62
  %165 = load i64, i64* %7, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 11
  store i64 %165, i64* %168, align 8
  store i64 0, i64* %9, align 8
  br label %169

169:                                              ; preds = %185, %164
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = load i32*, i32** %8, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @CLAMP(i32 %177, double 0.000000e+00, double 1.000000e+00)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 10
  %182 = load i8**, i8*** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i8*, i8** %182, i64 %183
  store i8* %178, i8** %184, align 8
  br label %185

185:                                              ; preds = %173
  %186 = load i64, i64* %9, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %9, align 8
  br label %169

188:                                              ; preds = %169
  br label %318

189:                                              ; preds = %62
  %190 = load i64, i64* %7, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 9
  store i64 %190, i64* %193, align 8
  store i64 0, i64* %9, align 8
  br label %194

194:                                              ; preds = %210, %189
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* %7, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load i32*, i32** %8, align 8
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @CLAMP(i32 %202, double 0.000000e+00, double 1.000000e+00)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 8
  %207 = load i8**, i8*** %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  store i8* %203, i8** %209, align 8
  br label %210

210:                                              ; preds = %198
  %211 = load i64, i64* %9, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %9, align 8
  br label %194

213:                                              ; preds = %194
  br label %318

214:                                              ; preds = %62
  %215 = load i64, i64* %7, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 7
  store i64 %215, i64* %218, align 8
  store i64 0, i64* %9, align 8
  br label %219

219:                                              ; preds = %235, %214
  %220 = load i64, i64* %9, align 8
  %221 = load i64, i64* %7, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %219
  %224 = load i32*, i32** %8, align 8
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @CLAMP(i32 %227, double 0.000000e+00, double 1.000000e+00)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 6
  %232 = load i8**, i8*** %231, align 8
  %233 = load i64, i64* %9, align 8
  %234 = getelementptr inbounds i8*, i8** %232, i64 %233
  store i8* %228, i8** %234, align 8
  br label %235

235:                                              ; preds = %223
  %236 = load i64, i64* %9, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %9, align 8
  br label %219

238:                                              ; preds = %219
  br label %318

239:                                              ; preds = %62
  %240 = load i64, i64* %7, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 5
  store i64 %240, i64* %243, align 8
  store i64 0, i64* %9, align 8
  br label %244

244:                                              ; preds = %260, %239
  %245 = load i64, i64* %9, align 8
  %246 = load i64, i64* %7, align 8
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %244
  %249 = load i32*, i32** %8, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @CLAMP(i32 %252, double 0.000000e+00, double 1.000000e+00)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  %257 = load i8**, i8*** %256, align 8
  %258 = load i64, i64* %9, align 8
  %259 = getelementptr inbounds i8*, i8** %257, i64 %258
  store i8* %253, i8** %259, align 8
  br label %260

260:                                              ; preds = %248
  %261 = load i64, i64* %9, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %9, align 8
  br label %244

263:                                              ; preds = %244
  br label %318

264:                                              ; preds = %62
  %265 = load i64, i64* %7, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  store i64 %265, i64* %268, align 8
  store i64 0, i64* %9, align 8
  br label %269

269:                                              ; preds = %285, %264
  %270 = load i64, i64* %9, align 8
  %271 = load i64, i64* %7, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %269
  %274 = load i32*, i32** %8, align 8
  %275 = load i64, i64* %9, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @CLAMP(i32 %277, double 0.000000e+00, double 1.000000e+00)
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = load i8**, i8*** %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = getelementptr inbounds i8*, i8** %282, i64 %283
  store i8* %278, i8** %284, align 8
  br label %285

285:                                              ; preds = %273
  %286 = load i64, i64* %9, align 8
  %287 = add nsw i64 %286, 1
  store i64 %287, i64* %9, align 8
  br label %269

288:                                              ; preds = %269
  br label %318

289:                                              ; preds = %62
  %290 = load i64, i64* %7, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  store i64 %290, i64* %293, align 8
  store i64 0, i64* %9, align 8
  br label %294

294:                                              ; preds = %310, %289
  %295 = load i64, i64* %9, align 8
  %296 = load i64, i64* %7, align 8
  %297 = icmp slt i64 %295, %296
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = load i32*, i32** %8, align 8
  %300 = load i64, i64* %9, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @CLAMP(i32 %302, double 0.000000e+00, double 1.000000e+00)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i8**, i8*** %306, align 8
  %308 = load i64, i64* %9, align 8
  %309 = getelementptr inbounds i8*, i8** %307, i64 %308
  store i8* %303, i8** %309, align 8
  br label %310

310:                                              ; preds = %298
  %311 = load i64, i64* %9, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %9, align 8
  br label %294

313:                                              ; preds = %294
  br label %318

314:                                              ; preds = %62
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %316 = load i32, i32* @GL_INVALID_ENUM, align 4
  %317 = call i32 @gl_error(%struct.TYPE_7__* %315, i32 %316, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %318

318:                                              ; preds = %15, %26, %57, %314, %313, %288, %263, %238, %213, %188, %163, %138, %113, %88
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i8* @CLAMP(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
