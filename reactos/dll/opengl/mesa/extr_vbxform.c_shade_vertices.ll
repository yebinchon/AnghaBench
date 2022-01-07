; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_shade_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_shade_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__*, %struct.vertex_buffer* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.vertex_buffer = type { i64, i64, i32*, i32*, i32*, i32*, i32, i32**, i32**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @shade_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shade_vertices(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.vertex_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1 x [4 x i32]], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  store %struct.vertex_buffer* %10, %struct.vertex_buffer** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %306

17:                                               ; preds = %1
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %87, label %22

22:                                               ; preds = %17
  %23 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %78, %22
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @update_material(%struct.TYPE_13__* %33, i64 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %47, i32 0, i32 8
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = call i32 @gl_color_shade_vertices(%struct.TYPE_13__* %36, i32 0, i32 1, i32* %41, i32* %46, i32** %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %32
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %62 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %67 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %72 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %71, i32 0, i32 7
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = call i32 @gl_color_shade_vertices(%struct.TYPE_13__* %60, i32 1, i32 1, i32* %65, i32* %70, i32** %75)
  br label %77

77:                                               ; preds = %59, %32
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %4, align 8
  br label %26

81:                                               ; preds = %26
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @update_material(%struct.TYPE_13__* %82, i64 %85)
  br label %305

87:                                               ; preds = %17
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %233

93:                                               ; preds = %87
  %94 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %95 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %175

98:                                               ; preds = %93
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %101 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %5, i64 0, i64 0
  %108 = bitcast [4 x i32]* %107 to i32**
  %109 = call i32 @gl_color_shade_vertices_fast(%struct.TYPE_13__* %99, i32 0, i32 1, i32* %106, i32** %108)
  %110 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %111 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %129, %98
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %116 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  %120 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %121 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %120, i32 0, i32 8
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %5, i64 0, i64 0
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %126, i64 0, i64 0
  %128 = call i32 @COPY_4V(i32* %125, i32* %127)
  br label %129

129:                                              ; preds = %119
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %6, align 8
  br label %113

132:                                              ; preds = %113
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %174

139:                                              ; preds = %132
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %142 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %145 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %5, i64 0, i64 0
  %149 = bitcast [4 x i32]* %148 to i32**
  %150 = call i32 @gl_color_shade_vertices_fast(%struct.TYPE_13__* %140, i32 1, i32 1, i32* %147, i32** %149)
  %151 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %152 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %170, %139
  %155 = load i64, i64* %6, align 8
  %156 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %157 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ult i64 %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %162 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %161, i32 0, i32 7
  %163 = load i32**, i32*** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %5, i64 0, i64 0
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %167, i64 0, i64 0
  %169 = call i32 @COPY_4V(i32* %166, i32* %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %154

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %132
  br label %232

175:                                              ; preds = %93
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %178 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %181 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %179, %182
  %184 = trunc i64 %183 to i32
  %185 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %186 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %189 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %193 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %192, i32 0, i32 8
  %194 = load i32**, i32*** %193, align 8
  %195 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %196 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32*, i32** %194, i64 %197
  %199 = call i32 @gl_color_shade_vertices_fast(%struct.TYPE_13__* %176, i32 0, i32 %184, i32* %191, i32** %198)
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %231

206:                                              ; preds = %175
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %208 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %209 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %212 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %210, %213
  %215 = trunc i64 %214 to i32
  %216 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %217 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %220 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %224 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %223, i32 0, i32 7
  %225 = load i32**, i32*** %224, align 8
  %226 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %227 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i32*, i32** %225, i64 %228
  %230 = call i32 @gl_color_shade_vertices_fast(%struct.TYPE_13__* %207, i32 1, i32 %215, i32* %222, i32** %229)
  br label %231

231:                                              ; preds = %206, %175
  br label %232

232:                                              ; preds = %231, %174
  br label %304

233:                                              ; preds = %87
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %235 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %236 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %239 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sub i64 %237, %240
  %242 = trunc i64 %241 to i32
  %243 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %244 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %247 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %251 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %254 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %258 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %257, i32 0, i32 8
  %259 = load i32**, i32*** %258, align 8
  %260 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %261 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds i32*, i32** %259, i64 %262
  %264 = call i32 @gl_color_shade_vertices(%struct.TYPE_13__* %234, i32 0, i32 %242, i32* %249, i32* %256, i32** %263)
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %303

271:                                              ; preds = %233
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %273 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %274 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %277 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = sub i64 %275, %278
  %280 = trunc i64 %279 to i32
  %281 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %282 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %285 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %289 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %292 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %296 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %295, i32 0, i32 7
  %297 = load i32**, i32*** %296, align 8
  %298 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %299 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32*, i32** %297, i64 %300
  %302 = call i32 @gl_color_shade_vertices(%struct.TYPE_13__* %272, i32 1, i32 %280, i32* %287, i32* %294, i32** %301)
  br label %303

303:                                              ; preds = %271, %233
  br label %304

304:                                              ; preds = %303, %232
  br label %305

305:                                              ; preds = %304, %81
  br label %448

306:                                              ; preds = %1
  %307 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %308 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %376, label %311

311:                                              ; preds = %306
  %312 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %313 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %7, align 8
  br label %315

315:                                              ; preds = %367, %311
  %316 = load i64, i64* %7, align 8
  %317 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %318 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = icmp ult i64 %316, %319
  br i1 %320, label %321, label %370

321:                                              ; preds = %315
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %323 = load i64, i64* %7, align 8
  %324 = call i32 @update_material(%struct.TYPE_13__* %322, i64 %323)
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %326 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %327 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %326, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* %7, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %332 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* %7, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %337 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %336, i32 0, i32 5
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* %7, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = call i32 @gl_index_shade_vertices(%struct.TYPE_13__* %325, i32 0, i32 1, i32* %330, i32* %335, i32* %340)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %321
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %350 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %351 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %350, i32 0, i32 4
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %7, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %356 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %355, i32 0, i32 3
  %357 = load i32*, i32** %356, align 8
  %358 = load i64, i64* %7, align 8
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  %360 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %361 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = load i64, i64* %7, align 8
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  %365 = call i32 @gl_index_shade_vertices(%struct.TYPE_13__* %349, i32 1, i32 1, i32* %354, i32* %359, i32* %364)
  br label %366

366:                                              ; preds = %348, %321
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %7, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %7, align 8
  br label %315

370:                                              ; preds = %315
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %372 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %373 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @update_material(%struct.TYPE_13__* %371, i64 %374)
  br label %447

376:                                              ; preds = %306
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %378 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %379 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %382 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %380, %383
  %385 = trunc i64 %384 to i32
  %386 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %387 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %386, i32 0, i32 4
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %390 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %394 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %397 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  %400 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %401 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %400, i32 0, i32 5
  %402 = load i32*, i32** %401, align 8
  %403 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %404 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = call i32 @gl_index_shade_vertices(%struct.TYPE_13__* %377, i32 0, i32 %385, i32* %392, i32* %399, i32* %406)
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %446

414:                                              ; preds = %376
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %416 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %417 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %420 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = sub i64 %418, %421
  %423 = trunc i64 %422 to i32
  %424 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %425 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %428 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds i32, i32* %426, i64 %429
  %431 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %432 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %431, i32 0, i32 3
  %433 = load i32*, i32** %432, align 8
  %434 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %435 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds i32, i32* %433, i64 %436
  %438 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %439 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %442 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds i32, i32* %440, i64 %443
  %445 = call i32 @gl_index_shade_vertices(%struct.TYPE_13__* %415, i32 1, i32 %423, i32* %430, i32* %437, i32* %444)
  br label %446

446:                                              ; preds = %414, %376
  br label %447

447:                                              ; preds = %446, %370
  br label %448

448:                                              ; preds = %447, %305
  ret void
}

declare dso_local i32 @update_material(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @gl_color_shade_vertices(%struct.TYPE_13__*, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @gl_color_shade_vertices_fast(%struct.TYPE_13__*, i32, i32, i32*, i32**) #1

declare dso_local i32 @COPY_4V(i32*, i32*) #1

declare dso_local i32 @gl_index_shade_vertices(%struct.TYPE_13__*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
