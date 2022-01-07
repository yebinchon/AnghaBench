; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_initialize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_6__*, i64, i64*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@VAProfileNone = common dso_local global i32 0, align 4
@VAEntrypointVideoProc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vaCreateConfig()\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"vaCreateContext()\00", align 1
@VAProcFilterCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"vaQueryVideoProcFilters()\00", align 1
@VA_INVALID_ID = common dso_local global i64 0, align 8
@VAProcFilterDeinterlacing = common dso_local global i64 0, align 8
@VAProcDeinterlacingCount = common dso_local global i32 0, align 4
@deint_algorithm = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Selected deinterlacing algorithm: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Selected deinterlacing algorithm not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*)* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize(%struct.mp_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %24 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %23, i32 0, i32 0
  %25 = load %struct.priv*, %struct.priv** %24, align 8
  store %struct.priv* %25, %struct.priv** %4, align 8
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VAProfileNone, align 4
  %30 = load i32, i32* @VAEntrypointVideoProc, align 4
  %31 = call i32 @vaCreateConfig(i32 %28, i32 %29, i32 %30, i32* null, i32 0, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %33 = call i32 @CHECK_VA_STATUS(%struct.mp_filter* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %273

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vaCreateContext(i32 %42, i32 %45, i32 0, i32 0, i32 0, i32* null, i32 0, i32* %7)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %48 = call i32 @CHECK_VA_STATUS(%struct.mp_filter* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %273

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.priv*, %struct.priv** %4, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @VAProcFilterCount, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %8, align 8
  %58 = alloca i64, i64 %56, align 16
  store i64 %56, i64* %9, align 8
  %59 = load i32, i32* @VAProcFilterCount, align 4
  store i32 %59, i32* %10, align 4
  %60 = load %struct.priv*, %struct.priv** %4, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vaQueryVideoProcFilters(i32 %62, i32 %65, i64* %58, i32* %10)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %68 = call i32 @CHECK_VA_STATUS(%struct.mp_filter* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %271

71:                                               ; preds = %51
  %72 = load i32, i32* @VAProcFilterCount, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i64, i64 %73, align 16
  store i64 %73, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %84, %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @VAProcFilterCount, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i64, i64* @VA_INVALID_ID, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %74, i64 %82
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %75

87:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %224, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %227

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %58, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %223

99:                                               ; preds = %92
  %100 = load i32, i32* @VAProcDeinterlacingCount, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %15, align 8
  %103 = alloca %struct.TYPE_8__, i64 %101, align 16
  store i64 %101, i64* %16, align 8
  %104 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %105 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %106 = load i32, i32* @VAProcDeinterlacingCount, align 4
  %107 = call i32 @va_query_filter_caps(%struct.mp_filter* %104, i64 %105, %struct.TYPE_8__* %103, i32 %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  store i32 7, i32* %11, align 4
  br label %219

111:                                              ; preds = %99
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %111
  %119 = load i64*, i64** @deint_algorithm, align 8
  %120 = call i32 @MP_ARRAY_SIZE(i64* %119)
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %160, %118
  %123 = load i32, i32* %18, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %122
  store i32 0, i32* %19, align 4
  br label %126

126:                                              ; preds = %156, %125
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %126
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** @deint_algorithm, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %135, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %130
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.priv*, %struct.priv** %4, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %149 = load i64*, i64** @deint_algorithm, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @MP_VERBOSE(%struct.mp_filter* %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  br label %164

155:                                              ; preds = %130
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %126

159:                                              ; preds = %126
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %18, align 4
  br label %122

163:                                              ; preds = %122
  br label %164

164:                                              ; preds = %163, %142
  br label %165

165:                                              ; preds = %164, %111
  %166 = load %struct.priv*, %struct.priv** %4, align 8
  %167 = getelementptr inbounds %struct.priv, %struct.priv* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 7, i32* %11, align 4
  br label %219

173:                                              ; preds = %165
  %174 = load i64*, i64** @deint_algorithm, align 8
  %175 = load %struct.priv*, %struct.priv** %4, align 8
  %176 = getelementptr inbounds %struct.priv, %struct.priv* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %174, i64 %180
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %20, align 8
  store i32 0, i32* %21, align 4
  br label %183

183:                                              ; preds = %206, %173
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %183
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %206

196:                                              ; preds = %187
  %197 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %197, i8 0, i64 24, i1 false)
  %198 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %198, i64* %199, align 8
  %200 = load i64, i64* %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 %200, i64* %201, align 8
  %202 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %203 = call i64 @va_create_filter_buffer(%struct.mp_filter* %202, i32 24, i32 1, %struct.TYPE_7__* %22)
  %204 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %205 = getelementptr inbounds i64, i64* %74, i64 %204
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %196, %195
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %21, align 4
  br label %183

209:                                              ; preds = %183
  %210 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %211 = getelementptr inbounds i64, i64* %74, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @VA_INVALID_ID, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %217 = call i32 @MP_WARN(%struct.mp_filter* %216, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %209
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %218, %172, %110
  %220 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %11, align 4
  switch i32 %221, label %275 [
    i32 0, label %222
    i32 7, label %224
  ]

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %222, %92
  br label %224

224:                                              ; preds = %223, %219
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %88

227:                                              ; preds = %88
  %228 = load %struct.priv*, %struct.priv** %4, align 8
  %229 = getelementptr inbounds %struct.priv, %struct.priv* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load %struct.priv*, %struct.priv** %4, align 8
  %236 = getelementptr inbounds %struct.priv, %struct.priv* %235, i32 0, i32 1
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %234, %227
  %240 = load %struct.priv*, %struct.priv** %4, align 8
  %241 = getelementptr inbounds %struct.priv, %struct.priv* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %243 = getelementptr inbounds i64, i64* %74, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @VA_INVALID_ID, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %239
  %248 = load i64, i64* @VAProcFilterDeinterlacing, align 8
  %249 = getelementptr inbounds i64, i64* %74, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.priv*, %struct.priv** %4, align 8
  %252 = getelementptr inbounds %struct.priv, %struct.priv* %251, i32 0, i32 3
  %253 = load i64*, i64** %252, align 8
  %254 = load %struct.priv*, %struct.priv** %4, align 8
  %255 = getelementptr inbounds %struct.priv, %struct.priv* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %255, align 8
  %258 = getelementptr inbounds i64, i64* %253, i64 %256
  store i64 %250, i64* %258, align 8
  br label %259

259:                                              ; preds = %247, %239
  %260 = load %struct.priv*, %struct.priv** %4, align 8
  %261 = getelementptr inbounds %struct.priv, %struct.priv* %260, i32 0, i32 1
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = load %struct.priv*, %struct.priv** %4, align 8
  %270 = getelementptr inbounds %struct.priv, %struct.priv* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %271

271:                                              ; preds = %259, %70
  %272 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %272)
  br label %273

273:                                              ; preds = %271, %50, %35
  %274 = load i32, i32* %2, align 4
  ret i32 %274

275:                                              ; preds = %219
  unreachable
}

declare dso_local i32 @vaCreateConfig(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @CHECK_VA_STATUS(%struct.mp_filter*, i8*) #1

declare dso_local i32 @vaCreateContext(i32, i32, i32, i32, i32, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vaQueryVideoProcFilters(i32, i32, i64*, i32*) #1

declare dso_local i32 @va_query_filter_caps(%struct.mp_filter*, i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @MP_ARRAY_SIZE(i64*) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @va_create_filter_buffer(%struct.mp_filter*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
