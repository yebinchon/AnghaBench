; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_write.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32, i64, i64, i64, i32, i32, i64, i16, i64, i64, %struct.zip_extra_field*, i64, i64, i32, i64 }
%struct.zip_extra_field = type { %struct.zip_extra_field* }
%struct.zip_error = type { i32 }

@ZIP_FL_LOCAL = common dso_local global i32 0, align 4
@LOCAL_MAGIC = common dso_local global i32 0, align 4
@CENTRAL_MAGIC = common dso_local global i32 0, align 4
@ZIP_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_ASCII = common dso_local global i32 0, align 4
@ZIP_GPBF_ENCODING_UTF_8 = common dso_local global i32 0, align 4
@ZIP_EF_UTF_8_NAME = common dso_local global i32 0, align 4
@ZIP_EF_UTF_8_COMMENT = common dso_local global i32 0, align 4
@ZIP_FL_FORCE_ZIP64 = common dso_local global i32 0, align 4
@ZIP_UINT32_MAX = common dso_local global i64 0, align 8
@ZIP_EF_ZIP64 = common dso_local global i32 0, align 4
@ZIP_EF_BOTH = common dso_local global i32 0, align 4
@ZIP_ER_WRITE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_dirent_write(%struct.zip_dirent* %0, i32* %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip_dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.zip_extra_field*, align 8
  %15 = alloca [24 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.zip_extra_field*, align 8
  %20 = alloca %struct.zip_extra_field*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %14, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @LOCAL_MAGIC, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @CENTRAL_MAGIC, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fwrite(i32 %30, i32 1, i32 4, i32* %31)
  %33 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %34 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %33, i32 0, i32 11
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  %37 = call i32 @_zip_guess_encoding(i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %39 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  %42 = call i32 @_zip_guess_encoding(i64 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @ZIP_ENCODING_ASCII, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %46, %29
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ZIP_ENCODING_ASCII, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %54, %46
  %67 = load i32, i32* @ZIP_GPBF_ENCODING_UTF_8, align 4
  %68 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %69 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %120

72:                                               ; preds = %62, %58
  %73 = load i32, i32* @ZIP_GPBF_ENCODING_UTF_8, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %76 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* @ZIP_EF_UTF_8_NAME, align 4
  %84 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %85 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %88 = call %struct.zip_extra_field* @_zip_ef_utf8(i32 %83, i64 %86, %struct.zip_error* %87)
  store %struct.zip_extra_field* %88, %struct.zip_extra_field** %14, align 8
  %89 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %90 = icmp eq %struct.zip_extra_field* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %462

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* @ZIP_EF_UTF_8_COMMENT, align 4
  %104 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %105 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %108 = call %struct.zip_extra_field* @_zip_ef_utf8(i32 %103, i64 %106, %struct.zip_error* %107)
  store %struct.zip_extra_field* %108, %struct.zip_extra_field** %19, align 8
  %109 = load %struct.zip_extra_field*, %struct.zip_extra_field** %19, align 8
  %110 = icmp eq %struct.zip_extra_field* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %113 = call i32 @_zip_ef_free(%struct.zip_extra_field* %112)
  store i32 -1, i32* %5, align 4
  br label %462

114:                                              ; preds = %102
  %115 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %116 = load %struct.zip_extra_field*, %struct.zip_extra_field** %19, align 8
  %117 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %116, i32 0, i32 0
  store %struct.zip_extra_field* %115, %struct.zip_extra_field** %117, align 8
  %118 = load %struct.zip_extra_field*, %struct.zip_extra_field** %19, align 8
  store %struct.zip_extra_field* %118, %struct.zip_extra_field** %14, align 8
  br label %119

119:                                              ; preds = %114, %98, %93
  br label %120

120:                                              ; preds = %119, %66
  %121 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  store i32* %121, i32** %16, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @ZIP_FL_FORCE_ZIP64, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %133 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %139 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137, %131, %126
  %144 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %145 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @_zip_poke8(i64 %146, i32** %16)
  %148 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %149 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @_zip_poke8(i64 %150, i32** %16)
  br label %152

152:                                              ; preds = %143, %137
  br label %211

153:                                              ; preds = %120
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @ZIP_FL_FORCE_ZIP64, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %153
  %159 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %160 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %176, label %164

164:                                              ; preds = %158
  %165 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %166 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %172 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %210

176:                                              ; preds = %170, %164, %158, %153
  %177 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %178 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %184 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @_zip_poke8(i64 %185, i32** %16)
  br label %187

187:                                              ; preds = %182, %176
  %188 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %189 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %195 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @_zip_poke8(i64 %196, i32** %16)
  br label %198

198:                                              ; preds = %193, %187
  %199 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %200 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %206 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @_zip_poke8(i64 %207, i32** %16)
  br label %209

209:                                              ; preds = %204, %198
  br label %210

210:                                              ; preds = %209, %170
  br label %211

211:                                              ; preds = %210, %152
  %212 = load i32*, i32** %16, align 8
  %213 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %214 = icmp ne i32* %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load i32, i32* @ZIP_EF_ZIP64, align 4
  %217 = load i32*, i32** %16, align 8
  %218 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %219 = ptrtoint i32* %217 to i64
  %220 = ptrtoint i32* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 4
  %223 = trunc i64 %222 to i16
  %224 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %225 = load i32, i32* @ZIP_EF_BOTH, align 4
  %226 = call %struct.zip_extra_field* @_zip_ef_new(i32 %216, i16 zeroext %223, i32* %224, i32 %225)
  store %struct.zip_extra_field* %226, %struct.zip_extra_field** %20, align 8
  %227 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %228 = load %struct.zip_extra_field*, %struct.zip_extra_field** %20, align 8
  %229 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %228, i32 0, i32 0
  store %struct.zip_extra_field* %227, %struct.zip_extra_field** %229, align 8
  %230 = load %struct.zip_extra_field*, %struct.zip_extra_field** %20, align 8
  store %struct.zip_extra_field* %230, %struct.zip_extra_field** %14, align 8
  store i32 1, i32* %17, align 4
  br label %231

231:                                              ; preds = %215, %211
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %234 = load i32, i32* @ZIP_FL_FORCE_ZIP64, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %238 = load i32, i32* @ZIP_FL_FORCE_ZIP64, align 4
  %239 = or i32 %237, %238
  %240 = icmp eq i32 %236, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @_zip_dirent_needs_zip64(%struct.zip_dirent* %242, i32 %243)
  store i32 %244, i32* %18, align 4
  br label %247

245:                                              ; preds = %231
  %246 = load i32, i32* %17, align 4
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %245, %241
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %247
  %253 = load i32, i32* %18, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %260

256:                                              ; preds = %252
  %257 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %258 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  br label %260

260:                                              ; preds = %256, %255
  %261 = phi i32 [ 45, %255 ], [ %259, %256 ]
  %262 = trunc i32 %261 to i16
  %263 = load i32*, i32** %7, align 8
  %264 = call i32 @_zip_write2(i16 zeroext %262, i32* %263)
  br label %265

265:                                              ; preds = %260, %247
  %266 = load i32, i32* %18, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %273

269:                                              ; preds = %265
  %270 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %271 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  br label %273

273:                                              ; preds = %269, %268
  %274 = phi i32 [ 45, %268 ], [ %272, %269 ]
  %275 = trunc i32 %274 to i16
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @_zip_write2(i16 zeroext %275, i32* %276)
  %278 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %279 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, 65529
  %282 = trunc i32 %281 to i16
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @_zip_write2(i16 zeroext %282, i32* %283)
  %285 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %286 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %285, i32 0, i32 14
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i16
  %289 = load i32*, i32** %7, align 8
  %290 = call i32 @_zip_write2(i16 zeroext %288, i32* %289)
  %291 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %292 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %291, i32 0, i32 13
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @_zip_u2d_time(i32 %293, i16* %10, i16* %11)
  %295 = load i16, i16* %10, align 2
  %296 = load i32*, i32** %7, align 8
  %297 = call i32 @_zip_write2(i16 zeroext %295, i32* %296)
  %298 = load i16, i16* %11, align 2
  %299 = load i32*, i32** %7, align 8
  %300 = call i32 @_zip_write2(i16 zeroext %298, i32* %299)
  %301 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %302 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %301, i32 0, i32 6
  %303 = load i64, i64* %302, align 8
  %304 = load i32*, i32** %7, align 8
  %305 = call i32 @_zip_write4(i64 %303, i32* %304)
  %306 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %307 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %273
  %312 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %313 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i32*, i32** %7, align 8
  %316 = call i32 @_zip_write4(i64 %314, i32* %315)
  br label %321

317:                                              ; preds = %273
  %318 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %319 = load i32*, i32** %7, align 8
  %320 = call i32 @_zip_write4(i64 %318, i32* %319)
  br label %321

321:                                              ; preds = %317, %311
  %322 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %323 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %326 = icmp slt i64 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %329 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i32*, i32** %7, align 8
  %332 = call i32 @_zip_write4(i64 %330, i32* %331)
  br label %337

333:                                              ; preds = %321
  %334 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %335 = load i32*, i32** %7, align 8
  %336 = call i32 @_zip_write4(i64 %334, i32* %335)
  br label %337

337:                                              ; preds = %333, %327
  %338 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %339 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %338, i32 0, i32 11
  %340 = load i64, i64* %339, align 8
  %341 = call zeroext i16 @_zip_string_length(i64 %340)
  %342 = load i32*, i32** %7, align 8
  %343 = call i32 @_zip_write2(i16 zeroext %341, i32* %342)
  %344 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %345 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %344, i32 0, i32 10
  %346 = load %struct.zip_extra_field*, %struct.zip_extra_field** %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = call zeroext i16 @_zip_ef_size(%struct.zip_extra_field* %346, i32 %347)
  %349 = zext i16 %348 to i32
  %350 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %351 = load i32, i32* @ZIP_EF_BOTH, align 4
  %352 = call zeroext i16 @_zip_ef_size(%struct.zip_extra_field* %350, i32 %351)
  %353 = zext i16 %352 to i32
  %354 = add nsw i32 %349, %353
  %355 = trunc i32 %354 to i16
  %356 = load i32*, i32** %7, align 8
  %357 = call i32 @_zip_write2(i16 zeroext %355, i32* %356)
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %360 = and i32 %358, %359
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %401

362:                                              ; preds = %337
  %363 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %364 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %363, i32 0, i32 9
  %365 = load i64, i64* %364, align 8
  %366 = call zeroext i16 @_zip_string_length(i64 %365)
  %367 = load i32*, i32** %7, align 8
  %368 = call i32 @_zip_write2(i16 zeroext %366, i32* %367)
  %369 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %370 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %369, i32 0, i32 12
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i16
  %373 = load i32*, i32** %7, align 8
  %374 = call i32 @_zip_write2(i16 zeroext %372, i32* %373)
  %375 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %376 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %375, i32 0, i32 7
  %377 = load i16, i16* %376, align 8
  %378 = load i32*, i32** %7, align 8
  %379 = call i32 @_zip_write2(i16 zeroext %377, i32* %378)
  %380 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %381 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %380, i32 0, i32 8
  %382 = load i64, i64* %381, align 8
  %383 = load i32*, i32** %7, align 8
  %384 = call i32 @_zip_write4(i64 %382, i32* %383)
  %385 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %386 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %390, label %396

390:                                              ; preds = %362
  %391 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %392 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load i32*, i32** %7, align 8
  %395 = call i32 @_zip_write4(i64 %393, i32* %394)
  br label %400

396:                                              ; preds = %362
  %397 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %398 = load i32*, i32** %7, align 8
  %399 = call i32 @_zip_write4(i64 %397, i32* %398)
  br label %400

400:                                              ; preds = %396, %390
  br label %401

401:                                              ; preds = %400, %337
  %402 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %403 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %402, i32 0, i32 11
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %401
  %407 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %408 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %407, i32 0, i32 11
  %409 = load i64, i64* %408, align 8
  %410 = load i32*, i32** %7, align 8
  %411 = call i32 @_zip_string_write(i64 %409, i32* %410)
  br label %412

412:                                              ; preds = %406, %401
  %413 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %414 = icmp ne %struct.zip_extra_field* %413, null
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  %416 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %417 = load i32, i32* @ZIP_EF_BOTH, align 4
  %418 = load i32*, i32** %7, align 8
  %419 = call i32 @_zip_ef_write(%struct.zip_extra_field* %416, i32 %417, i32* %418)
  br label %420

420:                                              ; preds = %415, %412
  %421 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %422 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %421, i32 0, i32 10
  %423 = load %struct.zip_extra_field*, %struct.zip_extra_field** %422, align 8
  %424 = icmp ne %struct.zip_extra_field* %423, null
  br i1 %424, label %425, label %432

425:                                              ; preds = %420
  %426 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %427 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %426, i32 0, i32 10
  %428 = load %struct.zip_extra_field*, %struct.zip_extra_field** %427, align 8
  %429 = load i32, i32* %8, align 4
  %430 = load i32*, i32** %7, align 8
  %431 = call i32 @_zip_ef_write(%struct.zip_extra_field* %428, i32 %429, i32* %430)
  br label %432

432:                                              ; preds = %425, %420
  %433 = load i32, i32* %8, align 4
  %434 = load i32, i32* @ZIP_FL_LOCAL, align 4
  %435 = and i32 %433, %434
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %449

437:                                              ; preds = %432
  %438 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %439 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %438, i32 0, i32 9
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %437
  %443 = load %struct.zip_dirent*, %struct.zip_dirent** %6, align 8
  %444 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %443, i32 0, i32 9
  %445 = load i64, i64* %444, align 8
  %446 = load i32*, i32** %7, align 8
  %447 = call i32 @_zip_string_write(i64 %445, i32* %446)
  br label %448

448:                                              ; preds = %442, %437
  br label %449

449:                                              ; preds = %448, %432
  %450 = load %struct.zip_extra_field*, %struct.zip_extra_field** %14, align 8
  %451 = call i32 @_zip_ef_free(%struct.zip_extra_field* %450)
  %452 = load i32*, i32** %7, align 8
  %453 = call i64 @ferror(i32* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %449
  %456 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %457 = load i32, i32* @ZIP_ER_WRITE, align 4
  %458 = load i32, i32* @errno, align 4
  %459 = call i32 @_zip_error_set(%struct.zip_error* %456, i32 %457, i32 %458)
  store i32 -1, i32* %5, align 4
  br label %462

460:                                              ; preds = %449
  %461 = load i32, i32* %17, align 4
  store i32 %461, i32* %5, align 4
  br label %462

462:                                              ; preds = %460, %455, %111, %91
  %463 = load i32, i32* %5, align 4
  ret i32 %463
}

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @_zip_guess_encoding(i64, i32) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_utf8(i32, i64, %struct.zip_error*) #1

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

declare dso_local i32 @_zip_poke8(i64, i32**) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_new(i32, i16 zeroext, i32*, i32) #1

declare dso_local i32 @_zip_dirent_needs_zip64(%struct.zip_dirent*, i32) #1

declare dso_local i32 @_zip_write2(i16 zeroext, i32*) #1

declare dso_local i32 @_zip_u2d_time(i32, i16*, i16*) #1

declare dso_local i32 @_zip_write4(i64, i32*) #1

declare dso_local zeroext i16 @_zip_string_length(i64) #1

declare dso_local zeroext i16 @_zip_ef_size(%struct.zip_extra_field*, i32) #1

declare dso_local i32 @_zip_string_write(i64, i32*) #1

declare dso_local i32 @_zip_ef_write(%struct.zip_extra_field*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
