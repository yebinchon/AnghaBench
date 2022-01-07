; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_gl_transform_vb_part2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_gl_transform_vb_part2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_26__, i32, i32, i64, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.vertex_buffer* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32, i64)* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.vertex_buffer = type { i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i8*, i64 }

@CLIP_ALL = common dso_local global i64 0, align 8
@CLIP_ALL_BITS = common dso_local global i8* null, align 8
@CLIP_SOME = common dso_local global i64 0, align 8
@CLIP_USER_BIT = common dso_local global i8* null, align 8
@GL_NICEST = common dso_local global i64 0, align 8
@GL_FEEDBACK = common dso_local global i64 0, align 8
@MATRIX_IDENTITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_transform_vb_part2(%struct.TYPE_27__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vertex_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 11
  %9 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  store %struct.vertex_buffer* %9, %struct.vertex_buffer** %5, align 8
  %10 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %2
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i64 @userclip_vertices(%struct.TYPE_27__* %22, i64 %29, i64 %36, i32* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @CLIP_ALL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %21
  %49 = load i8*, i8** @CLIP_ALL_BITS, align 8
  %50 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @gl_reset_vb(%struct.TYPE_27__* %52, i32 %53)
  br label %300

55:                                               ; preds = %21
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @CLIP_SOME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** @CLIP_USER_BIT, align 8
  %61 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %92 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %98, i32 0, i32 9
  %100 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %101 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %100, i32 0, i32 10
  %102 = call i32 @project_and_cliptest(%struct.TYPE_27__* %69, i64 %76, i64 %83, i64 %90, i32* %97, i8** %99, i64* %101)
  %103 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %104 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %103, i32 0, i32 10
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %68
  %108 = load i8*, i8** @CLIP_ALL_BITS, align 8
  %109 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @gl_reset_vb(%struct.TYPE_27__* %111, i32 %112)
  br label %300

114:                                              ; preds = %68
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = call i32 @shade_vertices(%struct.TYPE_27__* %121)
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GL_NICEST, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %138 = call i32 @fog_vertices(%struct.TYPE_27__* %137)
  br label %139

139:                                              ; preds = %136, %129, %123
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GL_FEEDBACK, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %227

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %151
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %159 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %160 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %163 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  %166 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %167 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %170 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %174 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %177 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %181 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %184 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %188 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %191 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = call i32 @gl_texgen(%struct.TYPE_27__* %158, i64 %165, i64 %172, i64 %179, i64 %186, i64 %193)
  br label %195

195:                                              ; preds = %157, %151
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %202 = call i32 @gl_analyze_texture_matrix(%struct.TYPE_27__* %201)
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @MATRIX_IDENTITY, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %203
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %211 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %212 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %215 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %213, %216
  %218 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %219 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %222 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %220, %223
  %225 = call i32 @transform_texcoords(%struct.TYPE_27__* %210, i64 %217, i64 %224)
  br label %226

226:                                              ; preds = %209, %203
  br label %227

227:                                              ; preds = %226, %145
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %229 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %230 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %233 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %231, %234
  %236 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %237 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %240 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %238, %241
  %243 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %244 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %243, i32 0, i32 9
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %255

247:                                              ; preds = %227
  %248 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %249 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %248, i32 0, i32 8
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %252 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  br label %256

255:                                              ; preds = %227
  br label %256

256:                                              ; preds = %255, %247
  %257 = phi i32* [ %254, %247 ], [ null, %255 ]
  %258 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %259 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %258, i32 0, i32 7
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %262 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = call i32 @viewport_map_vertices(%struct.TYPE_27__* %228, i64 %235, i64 %242, i32* %257, i32* %264)
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 1
  %269 = load i32 (%struct.TYPE_27__*, i32, i64)*, i32 (%struct.TYPE_27__*, i32, i64)** %268, align 8
  %270 = icmp ne i32 (%struct.TYPE_27__*, i32, i64)* %269, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %256
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load i32 (%struct.TYPE_27__*, i32, i64)*, i32 (%struct.TYPE_27__*, i32, i64)** %274, align 8
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %277 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %278 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 %275(%struct.TYPE_27__* %276, i32 0, i64 %279)
  br label %281

281:                                              ; preds = %271, %256
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 0
  %285 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %284, align 8
  %286 = icmp ne i32 (%struct.TYPE_27__*, i32)* %285, null
  br i1 %286, label %287, label %296

287:                                              ; preds = %281
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %290, align 8
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %293 = load i32, i32* %4, align 4
  %294 = call i32 %291(%struct.TYPE_27__* %292, i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %287, %281
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %298 = load i32, i32* %4, align 4
  %299 = call i32 @gl_render_vb(%struct.TYPE_27__* %297, i32 %298)
  br label %300

300:                                              ; preds = %48, %107, %296, %287
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @userclip_vertices(%struct.TYPE_27__*, i64, i64, i32*) #1

declare dso_local i32 @gl_reset_vb(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @project_and_cliptest(%struct.TYPE_27__*, i64, i64, i64, i32*, i8**, i64*) #1

declare dso_local i32 @shade_vertices(%struct.TYPE_27__*) #1

declare dso_local i32 @fog_vertices(%struct.TYPE_27__*) #1

declare dso_local i32 @gl_texgen(%struct.TYPE_27__*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @gl_analyze_texture_matrix(%struct.TYPE_27__*) #1

declare dso_local i32 @transform_texcoords(%struct.TYPE_27__*, i64, i64) #1

declare dso_local i32 @viewport_map_vertices(%struct.TYPE_27__*, i64, i64, i32*, i32*) #1

declare dso_local i32 @gl_render_vb(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
