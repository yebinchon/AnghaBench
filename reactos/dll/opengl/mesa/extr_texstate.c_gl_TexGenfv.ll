; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexGenfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexGenfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"glTexGenfv\00", align 1
@GL_TEXTURE_GEN_MODE = common dso_local global i32 0, align 4
@GL_OBJECT_LINEAR = common dso_local global i32 0, align 4
@GL_EYE_LINEAR = common dso_local global i32 0, align 4
@GL_SPHERE_MAP = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"glTexGenfv(param)\00", align 1
@GL_OBJECT_PLANE = common dso_local global i32 0, align 4
@GL_EYE_PLANE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"glTexGenfv(pname)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"glTexGenfv(coord)\00", align 1
@NEW_TEXTURING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexGenfv(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_8__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %19 = call i32 @gl_error(%struct.TYPE_8__* %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %400

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %390 [
    i32 129, label %22
    i32 128, label %116
    i32 130, label %210
    i32 131, label %300
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GL_OBJECT_LINEAR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @GL_EYE_LINEAR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GL_SPHERE_MAP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32, %26
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* @GL_INVALID_ENUM, align 4
  %48 = call i32 @gl_error(%struct.TYPE_8__* %46, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %400

49:                                               ; preds = %40
  br label %115

50:                                               ; preds = %22
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %57, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 11
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %65, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 11
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 11
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %81, i32* %86, align 4
  br label %114

87:                                               ; preds = %50
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GL_EYE_PLANE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @gl_transform_vector(i32 %103, i32* %104, i32 %107)
  br label %113

109:                                              ; preds = %87
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i32, i32* @GL_INVALID_ENUM, align 4
  %112 = call i32 @gl_error(%struct.TYPE_8__* %110, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %400

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113, %54
  br label %115

115:                                              ; preds = %114, %49
  br label %394

116:                                              ; preds = %20
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @GL_OBJECT_LINEAR, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @GL_EYE_LINEAR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @GL_SPHERE_MAP, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130, %126, %120
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %143

139:                                              ; preds = %130
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = load i32, i32* @GL_INVALID_ENUM, align 4
  %142 = call i32 @gl_error(%struct.TYPE_8__* %140, i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %400

143:                                              ; preds = %134
  br label %209

144:                                              ; preds = %116
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %144
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 9
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %151, i32* %156, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 9
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %159, i32* %164, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 9
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %167, i32* %172, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 9
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  store i32 %175, i32* %180, align 4
  br label %208

181:                                              ; preds = %144
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @GL_EYE_PLANE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_8__* %191)
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @gl_transform_vector(i32 %197, i32* %198, i32 %201)
  br label %207

203:                                              ; preds = %181
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = load i32, i32* @GL_INVALID_ENUM, align 4
  %206 = call i32 @gl_error(%struct.TYPE_8__* %204, i32 %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %400

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %148
  br label %209

209:                                              ; preds = %208, %143
  br label %394

210:                                              ; preds = %20
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %210
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @GL_OBJECT_LINEAR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %224, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @GL_EYE_LINEAR, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %220, %214
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  store i32 %225, i32* %228, align 8
  br label %233

229:                                              ; preds = %220
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = load i32, i32* @GL_INVALID_ENUM, align 4
  %232 = call i32 @gl_error(%struct.TYPE_8__* %230, i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %400

233:                                              ; preds = %224
  br label %299

234:                                              ; preds = %210
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %271

238:                                              ; preds = %234
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 7
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %241, i32* %246, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 7
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 %249, i32* %254, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 7
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  store i32 %257, i32* %262, align 4
  %263 = load i32*, i32** %8, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 3
  store i32 %265, i32* %270, align 4
  br label %298

271:                                              ; preds = %234
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* @GL_EYE_PLANE, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %271
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %282 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_8__* %281)
  br label %283

283:                                              ; preds = %280, %275
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = load i32*, i32** %8, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @gl_transform_vector(i32 %287, i32* %288, i32 %291)
  br label %297

293:                                              ; preds = %271
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = load i32, i32* @GL_INVALID_ENUM, align 4
  %296 = call i32 @gl_error(%struct.TYPE_8__* %294, i32 %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %400

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %238
  br label %299

299:                                              ; preds = %298, %233
  br label %394

300:                                              ; preds = %20
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %300
  %305 = load i32*, i32** %8, align 8
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %12, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* @GL_OBJECT_LINEAR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %314, label %310

310:                                              ; preds = %304
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* @GL_EYE_LINEAR, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %310, %304
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 3
  store i32 %315, i32* %318, align 4
  br label %323

319:                                              ; preds = %310
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %321 = load i32, i32* @GL_INVALID_ENUM, align 4
  %322 = call i32 @gl_error(%struct.TYPE_8__* %320, i32 %321, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %400

323:                                              ; preds = %314
  br label %389

324:                                              ; preds = %300
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %361

328:                                              ; preds = %324
  %329 = load i32*, i32** %8, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  store i32 %331, i32* %336, align 4
  %337 = load i32*, i32** %8, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 5
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  store i32 %339, i32* %344, align 4
  %345 = load i32*, i32** %8, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 5
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 2
  store i32 %347, i32* %352, align 4
  %353 = load i32*, i32** %8, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 5
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 3
  store i32 %355, i32* %360, align 4
  br label %388

361:                                              ; preds = %324
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* @GL_EYE_PLANE, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %383

365:                                              ; preds = %361
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %365
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %372 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_8__* %371)
  br label %373

373:                                              ; preds = %370, %365
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load i32*, i32** %8, align 8
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @gl_transform_vector(i32 %377, i32* %378, i32 %381)
  br label %387

383:                                              ; preds = %361
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %385 = load i32, i32* @GL_INVALID_ENUM, align 4
  %386 = call i32 @gl_error(%struct.TYPE_8__* %384, i32 %385, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %400

387:                                              ; preds = %373
  br label %388

388:                                              ; preds = %387, %328
  br label %389

389:                                              ; preds = %388, %323
  br label %394

390:                                              ; preds = %20
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %392 = load i32, i32* @GL_INVALID_ENUM, align 4
  %393 = call i32 @gl_error(%struct.TYPE_8__* %391, i32 %392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %400

394:                                              ; preds = %389, %299, %209, %115
  %395 = load i32, i32* @NEW_TEXTURING, align 4
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 8
  br label %400

400:                                              ; preds = %394, %390, %383, %319, %293, %229, %203, %139, %109, %45, %16
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @gl_analyze_modelview_matrix(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_transform_vector(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
