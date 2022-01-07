; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexSubImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexSubImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { %struct.gl_texture_image**, i8* }
%struct.gl_texture_image = type { i64, i64, i64, i32, i32* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)* }
%struct.gl_image = type { i64, i64, i64, i64 }

@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"glTexSubImage1D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"glTexSubImage1D(level)\00", align 1
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"glTexSubImage1D\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"glTexSubImage1D(xoffset)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"glTexSubImage1D(xoffset+width)\00", align 1
@GL_UNSIGNED_BYTE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"glTexSubImage1D(width)\00", align 1
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_COLOR_INDEX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"glTexSubImage1D(format)\00", align 1
@GL_STENCIL_INDEX = common dso_local global i64 0, align 8
@GL_DEPTH_COMPONENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"glTexSubImage1D(type)\00", align 1
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexSubImage1D(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.gl_image* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gl_image*, align 8
  %17 = alloca %struct.gl_texture_image*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.gl_texture_image*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.gl_image* %7, %struct.gl_image** %16, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @GL_TEXTURE_1D, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = load i32, i32* @GL_INVALID_ENUM, align 4
  %32 = call i32 @gl_error(%struct.TYPE_13__* %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %285

33:                                               ; preds = %8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = load i32, i32* @GL_INVALID_ENUM, align 4
  %43 = call i32 @gl_error(%struct.TYPE_13__* %41, i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %285

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %50, i64 %51
  %53 = load %struct.gl_texture_image*, %struct.gl_texture_image** %52, align 8
  store %struct.gl_texture_image* %53, %struct.gl_texture_image** %17, align 8
  %54 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %55 = icmp ne %struct.gl_texture_image* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %59 = call i32 @gl_error(%struct.TYPE_13__* %57, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %285

60:                                               ; preds = %44
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %63 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 0, %64
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = load i32, i32* @GL_INVALID_VALUE, align 4
  %70 = call i32 @gl_error(%struct.TYPE_13__* %68, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %285

71:                                               ; preds = %60
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %76 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %79 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = icmp ugt i64 %74, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = load i32, i32* @GL_INVALID_VALUE, align 4
  %86 = call i32 @gl_error(%struct.TYPE_13__* %84, i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %285

87:                                               ; preds = %71
  %88 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %89 = icmp ne %struct.gl_image* %88, null
  br i1 %89, label %90, label %236

90:                                               ; preds = %87
  %91 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %92 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @components_in_intformat(i64 %93)
  store i64 %94, i64* %18, align 8
  %95 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %96 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GL_UNSIGNED_BYTE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %90
  %101 = load i64, i64* %18, align 8
  %102 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %103 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %108 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %12, align 8
  %112 = mul i64 %110, %111
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32* %113, i32** %19, align 8
  %114 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %115 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %18, align 8
  %122 = mul i64 %120, %121
  %123 = call i32 @MEMCPY(i32* %118, i32* %119, i64 %122)
  br label %152

124:                                              ; preds = %100, %90
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %126 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %127 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %128 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %131 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call %struct.gl_texture_image* @image_to_texture(%struct.TYPE_13__* %125, %struct.gl_image* %126, i32 %129, i64 %132)
  store %struct.gl_texture_image* %133, %struct.gl_texture_image** %21, align 8
  %134 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %135 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %12, align 8
  %139 = mul i64 %137, %138
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32* %140, i32** %22, align 8
  %141 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %142 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %23, align 8
  %144 = load i32*, i32** %22, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %18, align 8
  %148 = mul i64 %146, %147
  %149 = call i32 @MEMCPY(i32* %144, i32* %145, i64 %148)
  %150 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %151 = call i32 @gl_free_texture_image(%struct.gl_texture_image* %150)
  br label %152

152:                                              ; preds = %124, %106
  %153 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %154 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %159 = call i32 @gl_free_image(%struct.gl_image* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i8*, i8** @GL_TRUE, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  store i8* %161, i8** %166, align 8
  %167 = load i8*, i8** @GL_TRUE, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)** %173, align 8
  %175 = icmp ne i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)* %174, null
  br i1 %175, label %176, label %203

176:                                              ; preds = %160
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i64, i32, i64, i32, i32, %struct.gl_texture_image*)** %179, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %182 = load i64, i64* @GL_TEXTURE_1D, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %195, i64 %196
  %198 = load %struct.gl_texture_image*, %struct.gl_texture_image** %197, align 8
  %199 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %202 = call i32 %180(%struct.TYPE_13__* %181, i64 %182, %struct.TYPE_14__* %186, i64 %187, i64 %188, i32 0, i64 %189, i32 1, i32 %200, %struct.gl_texture_image* %201)
  br label %235

203:                                              ; preds = %160
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)** %206, align 8
  %208 = icmp ne i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)* %207, null
  br i1 %208, label %209, label %234

209:                                              ; preds = %203
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)*, i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i64, i32, %struct.gl_texture_image*)** %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %215 = load i64, i64* @GL_TEXTURE_1D, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %225, align 8
  %227 = load i64, i64* %11, align 8
  %228 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %226, i64 %227
  %229 = load %struct.gl_texture_image*, %struct.gl_texture_image** %228, align 8
  %230 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.gl_texture_image*, %struct.gl_texture_image** %17, align 8
  %233 = call i32 %213(%struct.TYPE_13__* %214, i64 %215, %struct.TYPE_14__* %219, i64 %220, i32 %231, %struct.gl_texture_image* %232)
  br label %234

234:                                              ; preds = %209, %203
  br label %235

235:                                              ; preds = %234, %176
  br label %285

236:                                              ; preds = %87
  %237 = load i64, i64* %13, align 8
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = load i32, i32* @GL_INVALID_VALUE, align 4
  %242 = call i32 @gl_error(%struct.TYPE_13__* %240, i32 %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %285

243:                                              ; preds = %236
  %244 = load i64, i64* %15, align 8
  %245 = load i64, i64* @GL_BITMAP, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* @GL_COLOR_INDEX, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %253 = load i32, i32* @GL_INVALID_ENUM, align 4
  %254 = call i32 @gl_error(%struct.TYPE_13__* %252, i32 %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %285

255:                                              ; preds = %247, %243
  %256 = load i64, i64* %14, align 8
  %257 = call i64 @components_in_intformat(i64 %256)
  store i64 %257, i64* %24, align 8
  %258 = load i64, i64* %24, align 8
  %259 = icmp ult i64 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %255
  %261 = load i64, i64* %14, align 8
  %262 = load i64, i64* @GL_STENCIL_INDEX, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i64, i64* %14, align 8
  %266 = load i64, i64* @GL_DEPTH_COMPONENT, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %264, %260, %255
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = load i32, i32* @GL_INVALID_ENUM, align 4
  %271 = call i32 @gl_error(%struct.TYPE_13__* %269, i32 %270, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %285

272:                                              ; preds = %264
  %273 = load i64, i64* %15, align 8
  %274 = call i64 @gl_sizeof_type(i64 %273)
  store i64 %274, i64* %25, align 8
  %275 = load i64, i64* %25, align 8
  %276 = icmp ule i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %279 = load i32, i32* @GL_INVALID_ENUM, align 4
  %280 = call i32 @gl_error(%struct.TYPE_13__* %278, i32 %279, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %285

281:                                              ; preds = %272
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %283 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %284 = call i32 @gl_error(%struct.TYPE_13__* %282, i32 %283, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %285

285:                                              ; preds = %29, %40, %56, %67, %83, %239, %251, %268, %277, %281, %235
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @components_in_intformat(i64) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local %struct.gl_texture_image* @image_to_texture(%struct.TYPE_13__*, %struct.gl_image*, i32, i64) #1

declare dso_local i32 @gl_free_texture_image(%struct.gl_texture_image*) #1

declare dso_local i32 @gl_free_image(%struct.gl_image*) #1

declare dso_local i64 @gl_sizeof_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
