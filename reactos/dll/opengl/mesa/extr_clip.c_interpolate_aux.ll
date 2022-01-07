; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_interpolate_aux.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_interpolate_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.vertex_buffer* }
%struct.vertex_buffer = type { i64*, i64*, i8***, i8***, i8***, i8*** }

@CLIP_FCOLOR_BIT = common dso_local global i32 0, align 4
@CLIP_FINDEX_BIT = common dso_local global i32 0, align 4
@CLIP_BCOLOR_BIT = common dso_local global i32 0, align 4
@CLIP_BINDEX_BIT = common dso_local global i32 0, align 4
@CLIP_TEXTURE_BIT = common dso_local global i32 0, align 4
@CLIP_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpolate_aux(%struct.TYPE_3__* %0, i64 %1, i64 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.vertex_buffer*, %struct.vertex_buffer** %15, align 8
  store %struct.vertex_buffer* %16, %struct.vertex_buffer** %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CLIP_FCOLOR_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %124

23:                                               ; preds = %6
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %26 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %25, i32 0, i32 5
  %27 = load i8***, i8**** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i8**, i8*** %27, i64 %28
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %34 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %33, i32 0, i32 5
  %35 = load i8***, i8**** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i8**, i8*** %35, i64 %36
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @LINTERP(i8* %24, i8* %32, i8* %40)
  %42 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %43 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %42, i32 0, i32 5
  %44 = load i8***, i8**** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8**, i8*** %44, i64 %45
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %41, i8** %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %51 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %50, i32 0, i32 5
  %52 = load i8***, i8**** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8**, i8*** %52, i64 %53
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %59 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %58, i32 0, i32 5
  %60 = load i8***, i8**** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i8**, i8*** %60, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @LINTERP(i8* %49, i8* %57, i8* %65)
  %67 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %68 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %67, i32 0, i32 5
  %69 = load i8***, i8**** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8**, i8*** %69, i64 %70
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %66, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %76 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %75, i32 0, i32 5
  %77 = load i8***, i8**** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i8**, i8*** %77, i64 %78
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %84 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %83, i32 0, i32 5
  %85 = load i8***, i8**** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i8**, i8*** %85, i64 %86
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @LINTERP(i8* %74, i8* %82, i8* %90)
  %92 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %93 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %92, i32 0, i32 5
  %94 = load i8***, i8**** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i8**, i8*** %94, i64 %95
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  store i8* %91, i8** %98, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %101 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %100, i32 0, i32 5
  %102 = load i8***, i8**** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i8**, i8*** %102, i64 %103
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 3
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %109 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %108, i32 0, i32 5
  %110 = load i8***, i8**** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8**, i8*** %110, i64 %111
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @LINTERP(i8* %99, i8* %107, i8* %115)
  %117 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %118 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %117, i32 0, i32 5
  %119 = load i8***, i8**** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i8**, i8*** %119, i64 %120
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  store i8* %116, i8** %123, align 8
  br label %155

124:                                              ; preds = %6
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CLIP_FINDEX_BIT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %124
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %134 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %141 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i8* @LINTERP(i8* %132, i8* %139, i8* %146)
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %150 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  store i64 %148, i64* %153, align 8
  br label %154

154:                                              ; preds = %131, %124
  br label %155

155:                                              ; preds = %154, %23
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CLIP_BCOLOR_BIT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %263

162:                                              ; preds = %155
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %165 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %164, i32 0, i32 4
  %166 = load i8***, i8**** %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds i8**, i8*** %166, i64 %167
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %173 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %172, i32 0, i32 4
  %174 = load i8***, i8**** %173, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds i8**, i8*** %174, i64 %175
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @LINTERP(i8* %163, i8* %171, i8* %179)
  %181 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %182 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %181, i32 0, i32 4
  %183 = load i8***, i8**** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds i8**, i8*** %183, i64 %184
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  store i8* %180, i8** %187, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %190 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %189, i32 0, i32 4
  %191 = load i8***, i8**** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i8**, i8*** %191, i64 %192
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %198 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %197, i32 0, i32 4
  %199 = load i8***, i8**** %198, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds i8**, i8*** %199, i64 %200
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @LINTERP(i8* %188, i8* %196, i8* %204)
  %206 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %207 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %206, i32 0, i32 4
  %208 = load i8***, i8**** %207, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds i8**, i8*** %208, i64 %209
  %211 = load i8**, i8*** %210, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 1
  store i8* %205, i8** %212, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %215 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %214, i32 0, i32 4
  %216 = load i8***, i8**** %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds i8**, i8*** %216, i64 %217
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 2
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %223 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %222, i32 0, i32 4
  %224 = load i8***, i8**** %223, align 8
  %225 = load i64, i64* %12, align 8
  %226 = getelementptr inbounds i8**, i8*** %224, i64 %225
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 2
  %229 = load i8*, i8** %228, align 8
  %230 = call i8* @LINTERP(i8* %213, i8* %221, i8* %229)
  %231 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %232 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %231, i32 0, i32 4
  %233 = load i8***, i8**** %232, align 8
  %234 = load i64, i64* %9, align 8
  %235 = getelementptr inbounds i8**, i8*** %233, i64 %234
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 2
  store i8* %230, i8** %237, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %240 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %239, i32 0, i32 4
  %241 = load i8***, i8**** %240, align 8
  %242 = load i64, i64* %11, align 8
  %243 = getelementptr inbounds i8**, i8*** %241, i64 %242
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 3
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %248 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %247, i32 0, i32 4
  %249 = load i8***, i8**** %248, align 8
  %250 = load i64, i64* %12, align 8
  %251 = getelementptr inbounds i8**, i8*** %249, i64 %250
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i8* @LINTERP(i8* %238, i8* %246, i8* %254)
  %256 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %257 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %256, i32 0, i32 4
  %258 = load i8***, i8**** %257, align 8
  %259 = load i64, i64* %9, align 8
  %260 = getelementptr inbounds i8**, i8*** %258, i64 %259
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 3
  store i8* %255, i8** %262, align 8
  br label %294

263:                                              ; preds = %155
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @CLIP_BINDEX_BIT, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %293

270:                                              ; preds = %263
  %271 = load i8*, i8** %10, align 8
  %272 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %273 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = load i64, i64* %11, align 8
  %276 = getelementptr inbounds i64, i64* %274, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %280 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = load i64, i64* %12, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = call i8* @LINTERP(i8* %271, i8* %278, i8* %285)
  %287 = ptrtoint i8* %286 to i64
  %288 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %289 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = load i64, i64* %9, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  store i64 %287, i64* %292, align 8
  br label %293

293:                                              ; preds = %270, %263
  br label %294

294:                                              ; preds = %293, %162
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @CLIP_TEXTURE_BIT, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %432

301:                                              ; preds = %294
  %302 = load i64, i64* %8, align 8
  %303 = load i64, i64* @CLIP_SPACE, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %331

305:                                              ; preds = %301
  %306 = load i8*, i8** %10, align 8
  %307 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %308 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %307, i32 0, i32 3
  %309 = load i8***, i8**** %308, align 8
  %310 = load i64, i64* %11, align 8
  %311 = getelementptr inbounds i8**, i8*** %309, i64 %310
  %312 = load i8**, i8*** %311, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 2
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %316 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %315, i32 0, i32 3
  %317 = load i8***, i8**** %316, align 8
  %318 = load i64, i64* %12, align 8
  %319 = getelementptr inbounds i8**, i8*** %317, i64 %318
  %320 = load i8**, i8*** %319, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 2
  %322 = load i8*, i8** %321, align 8
  %323 = call i8* @LINTERP(i8* %306, i8* %314, i8* %322)
  %324 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %325 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %324, i32 0, i32 3
  %326 = load i8***, i8**** %325, align 8
  %327 = load i64, i64* %9, align 8
  %328 = getelementptr inbounds i8**, i8*** %326, i64 %327
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 2
  store i8* %323, i8** %330, align 8
  br label %331

331:                                              ; preds = %305, %301
  %332 = load i8*, i8** %10, align 8
  %333 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %334 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %333, i32 0, i32 2
  %335 = load i8***, i8**** %334, align 8
  %336 = load i64, i64* %11, align 8
  %337 = getelementptr inbounds i8**, i8*** %335, i64 %336
  %338 = load i8**, i8*** %337, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 0
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %342 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %341, i32 0, i32 2
  %343 = load i8***, i8**** %342, align 8
  %344 = load i64, i64* %12, align 8
  %345 = getelementptr inbounds i8**, i8*** %343, i64 %344
  %346 = load i8**, i8*** %345, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i8* @LINTERP(i8* %332, i8* %340, i8* %348)
  %350 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %351 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %350, i32 0, i32 2
  %352 = load i8***, i8**** %351, align 8
  %353 = load i64, i64* %9, align 8
  %354 = getelementptr inbounds i8**, i8*** %352, i64 %353
  %355 = load i8**, i8*** %354, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 0
  store i8* %349, i8** %356, align 8
  %357 = load i8*, i8** %10, align 8
  %358 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %359 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %358, i32 0, i32 2
  %360 = load i8***, i8**** %359, align 8
  %361 = load i64, i64* %11, align 8
  %362 = getelementptr inbounds i8**, i8*** %360, i64 %361
  %363 = load i8**, i8*** %362, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i64 1
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %367 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %366, i32 0, i32 2
  %368 = load i8***, i8**** %367, align 8
  %369 = load i64, i64* %12, align 8
  %370 = getelementptr inbounds i8**, i8*** %368, i64 %369
  %371 = load i8**, i8*** %370, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 1
  %373 = load i8*, i8** %372, align 8
  %374 = call i8* @LINTERP(i8* %357, i8* %365, i8* %373)
  %375 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %376 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %375, i32 0, i32 2
  %377 = load i8***, i8**** %376, align 8
  %378 = load i64, i64* %9, align 8
  %379 = getelementptr inbounds i8**, i8*** %377, i64 %378
  %380 = load i8**, i8*** %379, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 1
  store i8* %374, i8** %381, align 8
  %382 = load i8*, i8** %10, align 8
  %383 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %384 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %383, i32 0, i32 2
  %385 = load i8***, i8**** %384, align 8
  %386 = load i64, i64* %11, align 8
  %387 = getelementptr inbounds i8**, i8*** %385, i64 %386
  %388 = load i8**, i8*** %387, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 2
  %390 = load i8*, i8** %389, align 8
  %391 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %392 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %391, i32 0, i32 2
  %393 = load i8***, i8**** %392, align 8
  %394 = load i64, i64* %12, align 8
  %395 = getelementptr inbounds i8**, i8*** %393, i64 %394
  %396 = load i8**, i8*** %395, align 8
  %397 = getelementptr inbounds i8*, i8** %396, i64 2
  %398 = load i8*, i8** %397, align 8
  %399 = call i8* @LINTERP(i8* %382, i8* %390, i8* %398)
  %400 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %401 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %400, i32 0, i32 2
  %402 = load i8***, i8**** %401, align 8
  %403 = load i64, i64* %9, align 8
  %404 = getelementptr inbounds i8**, i8*** %402, i64 %403
  %405 = load i8**, i8*** %404, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 2
  store i8* %399, i8** %406, align 8
  %407 = load i8*, i8** %10, align 8
  %408 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %409 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %408, i32 0, i32 2
  %410 = load i8***, i8**** %409, align 8
  %411 = load i64, i64* %11, align 8
  %412 = getelementptr inbounds i8**, i8*** %410, i64 %411
  %413 = load i8**, i8*** %412, align 8
  %414 = getelementptr inbounds i8*, i8** %413, i64 3
  %415 = load i8*, i8** %414, align 8
  %416 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %417 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %416, i32 0, i32 2
  %418 = load i8***, i8**** %417, align 8
  %419 = load i64, i64* %12, align 8
  %420 = getelementptr inbounds i8**, i8*** %418, i64 %419
  %421 = load i8**, i8*** %420, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 3
  %423 = load i8*, i8** %422, align 8
  %424 = call i8* @LINTERP(i8* %407, i8* %415, i8* %423)
  %425 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %426 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %425, i32 0, i32 2
  %427 = load i8***, i8**** %426, align 8
  %428 = load i64, i64* %9, align 8
  %429 = getelementptr inbounds i8**, i8*** %427, i64 %428
  %430 = load i8**, i8*** %429, align 8
  %431 = getelementptr inbounds i8*, i8** %430, i64 3
  store i8* %424, i8** %431, align 8
  br label %432

432:                                              ; preds = %331, %294
  ret void
}

declare dso_local i8* @LINTERP(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
