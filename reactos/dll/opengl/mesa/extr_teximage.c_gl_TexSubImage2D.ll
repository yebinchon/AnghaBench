; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexSubImage2D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexSubImage2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { %struct.gl_texture_image**, i8* }
%struct.gl_texture_image = type { i64, i64, i64, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)* }
%struct.gl_image = type { i64, i64, i64, i64 }

@GL_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"glTexSubImage2D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"glTexSubImage2D(level)\00", align 1
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"glTexSubImage2D\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"glTexSubImage2D(xoffset)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"glTexSubImage2D(yoffset)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"glTexSubImage2D(xoffset+width)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"glTexSubImage2D(yoffset+height)\00", align 1
@GL_UNSIGNED_BYTE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"glTexSubImage2D(width)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"glTexSubImage2D(height)\00", align 1
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_COLOR_INDEX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"glTexSubImage1D(format)\00", align 1
@GL_STENCIL_INDEX = common dso_local global i64 0, align 8
@GL_DEPTH_COMPONENT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"glTexSubImage2D(format)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"glTexSubImage2D(type)\00", align 1
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexSubImage2D(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %struct.gl_image* %9) #0 {
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.gl_image*, align 8
  %21 = alloca %struct.gl_texture_image*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.gl_texture_image*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store %struct.gl_image* %9, %struct.gl_image** %20, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @GL_TEXTURE_2D, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %10
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = load i32, i32* @GL_INVALID_ENUM, align 4
  %38 = call i32 @gl_error(%struct.TYPE_13__* %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %385

39:                                               ; preds = %10
  %40 = load i64, i64* %13, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = load i32, i32* @GL_INVALID_ENUM, align 4
  %49 = call i32 @gl_error(%struct.TYPE_13__* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %385

50:                                               ; preds = %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %56, i64 %57
  %59 = load %struct.gl_texture_image*, %struct.gl_texture_image** %58, align 8
  store %struct.gl_texture_image* %59, %struct.gl_texture_image** %21, align 8
  %60 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %61 = icmp ne %struct.gl_texture_image* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %50
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %65 = call i32 @gl_error(%struct.TYPE_13__* %63, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %385

66:                                               ; preds = %50
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %69 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 0, %70
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = load i32, i32* @GL_INVALID_VALUE, align 4
  %76 = call i32 @gl_error(%struct.TYPE_13__* %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %385

77:                                               ; preds = %66
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %80 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 0, %81
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = load i32, i32* @GL_INVALID_VALUE, align 4
  %87 = call i32 @gl_error(%struct.TYPE_13__* %85, i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %385

88:                                               ; preds = %77
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %89, %90
  %92 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %93 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %96 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = icmp ugt i64 %91, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = load i32, i32* @GL_INVALID_VALUE, align 4
  %103 = call i32 @gl_error(%struct.TYPE_13__* %101, i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %385

104:                                              ; preds = %88
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %109 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %112 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = icmp ugt i64 %107, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %104
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = load i32, i32* @GL_INVALID_VALUE, align 4
  %119 = call i32 @gl_error(%struct.TYPE_13__* %117, i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %385

120:                                              ; preds = %104
  %121 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %122 = icmp ne %struct.gl_image* %121, null
  br i1 %122, label %123, label %329

123:                                              ; preds = %120
  %124 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %125 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @components_in_intformat(i32 %126)
  store i64 %127, i64* %22, align 8
  %128 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %129 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @GL_UNSIGNED_BYTE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %186

133:                                              ; preds = %123
  %134 = load i64, i64* %22, align 8
  %135 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %136 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %133
  %140 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %141 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %145 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %143, %146
  %148 = load i64, i64* %14, align 8
  %149 = add i64 %147, %148
  %150 = load i64, i64* %22, align 8
  %151 = mul i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %142, i64 %151
  store i32* %152, i32** %23, align 8
  %153 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %154 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  store i32* %156, i32** %24, align 8
  store i64 0, i64* %25, align 8
  br label %157

157:                                              ; preds = %182, %139
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %17, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %157
  %162 = load i32*, i32** %23, align 8
  %163 = load i32*, i32** %24, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %22, align 8
  %166 = mul i64 %164, %165
  %167 = call i32 @MEMCPY(i32* %162, i32* %163, i64 %166)
  %168 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %169 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %22, align 8
  %172 = mul i64 %170, %171
  %173 = mul i64 %172, 4
  %174 = load i32*, i32** %23, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 %173
  store i32* %175, i32** %23, align 8
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* %22, align 8
  %178 = mul i64 %176, %177
  %179 = mul i64 %178, 4
  %180 = load i32*, i32** %24, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 %179
  store i32* %181, i32** %24, align 8
  br label %182

182:                                              ; preds = %161
  %183 = load i64, i64* %25, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %25, align 8
  br label %157

185:                                              ; preds = %157
  br label %243

186:                                              ; preds = %133, %123
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %188 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %189 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %190 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %193 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call %struct.gl_texture_image* @image_to_texture(%struct.TYPE_13__* %187, %struct.gl_image* %188, i32 %191, i64 %194)
  store %struct.gl_texture_image* %195, %struct.gl_texture_image** %26, align 8
  %196 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %197 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %201 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = mul i64 %199, %202
  %204 = load i64, i64* %14, align 8
  %205 = add i64 %203, %204
  %206 = load i64, i64* %22, align 8
  %207 = mul i64 %205, %206
  %208 = getelementptr inbounds i32, i32* %198, i64 %207
  store i32* %208, i32** %27, align 8
  %209 = load %struct.gl_texture_image*, %struct.gl_texture_image** %26, align 8
  %210 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  store i32* %211, i32** %28, align 8
  store i64 0, i64* %29, align 8
  br label %212

212:                                              ; preds = %237, %186
  %213 = load i64, i64* %29, align 8
  %214 = load i64, i64* %17, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %240

216:                                              ; preds = %212
  %217 = load i32*, i32** %27, align 8
  %218 = load i32*, i32** %28, align 8
  %219 = load i64, i64* %16, align 8
  %220 = load i64, i64* %22, align 8
  %221 = mul i64 %219, %220
  %222 = call i32 @MEMCPY(i32* %217, i32* %218, i64 %221)
  %223 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %224 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %22, align 8
  %227 = mul i64 %225, %226
  %228 = mul i64 %227, 4
  %229 = load i32*, i32** %27, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 %228
  store i32* %230, i32** %27, align 8
  %231 = load i64, i64* %16, align 8
  %232 = load i64, i64* %22, align 8
  %233 = mul i64 %231, %232
  %234 = mul i64 %233, 4
  %235 = load i32*, i32** %28, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 %234
  store i32* %236, i32** %28, align 8
  br label %237

237:                                              ; preds = %216
  %238 = load i64, i64* %29, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %29, align 8
  br label %212

240:                                              ; preds = %212
  %241 = load %struct.gl_texture_image*, %struct.gl_texture_image** %26, align 8
  %242 = call i32 @gl_free_texture_image(%struct.gl_texture_image* %241)
  br label %243

243:                                              ; preds = %240, %185
  %244 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %245 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %250 = call i32 @gl_free_image(%struct.gl_image* %249)
  br label %251

251:                                              ; preds = %248, %243
  %252 = load i8*, i8** @GL_TRUE, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  store i8* %252, i8** %257, align 8
  %258 = load i8*, i8** @GL_TRUE, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  store i8* %258, i8** %261, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)** %264, align 8
  %266 = icmp ne i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)* %265, null
  br i1 %266, label %267, label %296

267:                                              ; preds = %251
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i64, i64, i64, i32, %struct.gl_texture_image*)** %270, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %273 = load i64, i64* @GL_TEXTURE_2D, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = load i64, i64* %13, align 8
  %279 = load i64, i64* %14, align 8
  %280 = load i64, i64* %15, align 8
  %281 = load i64, i64* %16, align 8
  %282 = load i64, i64* %17, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %287, align 8
  %289 = load i64, i64* %13, align 8
  %290 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %288, i64 %289
  %291 = load %struct.gl_texture_image*, %struct.gl_texture_image** %290, align 8
  %292 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %295 = call i32 %271(%struct.TYPE_13__* %272, i64 %273, %struct.TYPE_14__* %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i32 %293, %struct.gl_texture_image* %294)
  br label %328

296:                                              ; preds = %251
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)** %299, align 8
  %301 = icmp ne i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)* %300, null
  br i1 %301, label %302, label %327

302:                                              ; preds = %296
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)** %305, align 8
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %308 = load i64, i64* @GL_TEXTURE_2D, align 8
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load i64, i64* %13, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %318, align 8
  %320 = load i64, i64* %13, align 8
  %321 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %319, i64 %320
  %322 = load %struct.gl_texture_image*, %struct.gl_texture_image** %321, align 8
  %323 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %326 = call i32 %306(%struct.TYPE_13__* %307, i64 %308, %struct.TYPE_14__* %312, i64 %313, i32 %324, %struct.gl_texture_image* %325)
  br label %327

327:                                              ; preds = %302, %296
  br label %328

328:                                              ; preds = %327, %267
  br label %385

329:                                              ; preds = %120
  %330 = load i64, i64* %16, align 8
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %334 = load i32, i32* @GL_INVALID_VALUE, align 4
  %335 = call i32 @gl_error(%struct.TYPE_13__* %333, i32 %334, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %385

336:                                              ; preds = %329
  %337 = load i64, i64* %17, align 8
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %341 = load i32, i32* @GL_INVALID_VALUE, align 4
  %342 = call i32 @gl_error(%struct.TYPE_13__* %340, i32 %341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %385

343:                                              ; preds = %336
  %344 = load i64, i64* %19, align 8
  %345 = load i64, i64* @GL_BITMAP, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %355

347:                                              ; preds = %343
  %348 = load i64, i64* %18, align 8
  %349 = load i64, i64* @GL_COLOR_INDEX, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %353 = load i32, i32* @GL_INVALID_ENUM, align 4
  %354 = call i32 @gl_error(%struct.TYPE_13__* %352, i32 %353, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %385

355:                                              ; preds = %347, %343
  %356 = load i64, i64* %18, align 8
  %357 = call i64 @gl_components_in_format(i64 %356)
  store i64 %357, i64* %30, align 8
  %358 = load i64, i64* %30, align 8
  %359 = icmp ult i64 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %355
  %361 = load i64, i64* %18, align 8
  %362 = load i64, i64* @GL_STENCIL_INDEX, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %368, label %364

364:                                              ; preds = %360
  %365 = load i64, i64* %18, align 8
  %366 = load i64, i64* @GL_DEPTH_COMPONENT, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364, %360, %355
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %370 = load i32, i32* @GL_INVALID_ENUM, align 4
  %371 = call i32 @gl_error(%struct.TYPE_13__* %369, i32 %370, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %385

372:                                              ; preds = %364
  %373 = load i64, i64* %19, align 8
  %374 = call i64 @gl_sizeof_type(i64 %373)
  store i64 %374, i64* %31, align 8
  %375 = load i64, i64* %31, align 8
  %376 = icmp ule i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %379 = load i32, i32* @GL_INVALID_ENUM, align 4
  %380 = call i32 @gl_error(%struct.TYPE_13__* %378, i32 %379, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %385

381:                                              ; preds = %372
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %383 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %384 = call i32 @gl_error(%struct.TYPE_13__* %382, i32 %383, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %385

385:                                              ; preds = %35, %46, %62, %73, %84, %100, %116, %332, %339, %351, %368, %377, %381, %328
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @components_in_intformat(i32) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local %struct.gl_texture_image* @image_to_texture(%struct.TYPE_13__*, %struct.gl_image*, i32, i64) #1

declare dso_local i32 @gl_free_texture_image(%struct.gl_texture_image*) #1

declare dso_local i32 @gl_free_image(%struct.gl_image*) #1

declare dso_local i64 @gl_components_in_format(i64) #1

declare dso_local i64 @gl_sizeof_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
