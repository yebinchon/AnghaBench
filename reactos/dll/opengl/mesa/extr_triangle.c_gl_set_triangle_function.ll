; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_gl_set_triangle_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_gl_set_triangle_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_25__, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_17__* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i64, i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64 }

@GL_RENDER = common dso_local global i64 0, align 8
@null_triangle = common dso_local global i64 0, align 8
@TEXTURE_2D = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i64 0, align 8
@GL_REPEAT = common dso_local global i64 0, align 8
@GL_RGB = common dso_local global i64 0, align 8
@GL_DECAL = common dso_local global i64 0, align 8
@GL_REPLACE = common dso_local global i64 0, align 8
@GL_FASTEST = common dso_local global i64 0, align 8
@MATRIX_IDENTITY = common dso_local global i64 0, align 8
@DEPTH_BIT = common dso_local global i64 0, align 8
@GL_LESS = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i64 0, align 8
@simple_z_textured_triangle = common dso_local global i64 0, align 8
@simple_textured_triangle = common dso_local global i64 0, align 8
@TEXTURE_1D = common dso_local global i32 0, align 4
@lambda_textured_triangle = common dso_local global i64 0, align 8
@general_textured_triangle = common dso_local global i64 0, align 8
@GL_SMOOTH = common dso_local global i64 0, align 8
@smooth_rgba_triangle = common dso_local global i64 0, align 8
@smooth_ci_triangle = common dso_local global i64 0, align 8
@flat_rgba_triangle = common dso_local global i64 0, align 8
@flat_ci_triangle = common dso_local global i64 0, align 8
@GL_FEEDBACK = common dso_local global i64 0, align 8
@feedback_triangle = common dso_local global i64 0, align 8
@select_triangle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_triangle_function(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 6
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GL_RENDER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %308

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64, i64* @null_triangle, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  br label %325

25:                                               ; preds = %15
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %307

32:                                               ; preds = %25
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %270

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %270

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %270

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TEXTURE_2D, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %203

59:                                               ; preds = %52
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GL_NEAREST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %203

68:                                               ; preds = %59
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GL_NEAREST, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %203

77:                                               ; preds = %68
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GL_REPEAT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %203

86:                                               ; preds = %77
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GL_REPEAT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %203

95:                                               ; preds = %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %101, i64 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GL_RGB, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %203

108:                                              ; preds = %95
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %114, i64 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %203

120:                                              ; preds = %108
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GL_DECAL, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GL_REPLACE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %203

134:                                              ; preds = %127, %120
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GL_FASTEST, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %203

141:                                              ; preds = %134
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MATRIX_IDENTITY, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %203

147:                                              ; preds = %141
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DEPTH_BIT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @GL_LESS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %153
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @GL_TRUE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %172, label %167

167:                                              ; preds = %160, %153, %147
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %203

172:                                              ; preds = %167, %160
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @GL_FALSE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %172
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 6
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %179
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @DEPTH_BIT, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load i64, i64* @simple_z_textured_triangle, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  br label %202

197:                                              ; preds = %186
  %198 = load i64, i64* @simple_textured_triangle, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  store i64 %198, i64* %201, align 8
  br label %202

202:                                              ; preds = %197, %192
  br label %269

203:                                              ; preds = %179, %172, %167, %141, %134, %127, %108, %95, %86, %77, %68, %59, %52
  %204 = load i64, i64* @GL_TRUE, align 8
  store i64 %204, i64* %4, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @TEXTURE_2D, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %203
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %218, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %212
  %227 = load i64, i64* @GL_FALSE, align 8
  store i64 %227, i64* %4, align 8
  br label %228

228:                                              ; preds = %226, %212
  br label %255

229:                                              ; preds = %203
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @TEXTURE_1D, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %229
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %243, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %237
  %252 = load i64, i64* @GL_FALSE, align 8
  store i64 %252, i64* %4, align 8
  br label %253

253:                                              ; preds = %251, %237
  br label %254

254:                                              ; preds = %253, %229
  br label %255

255:                                              ; preds = %254, %228
  %256 = load i64, i64* %4, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i64, i64* @lambda_textured_triangle, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  store i64 %259, i64* %262, align 8
  br label %268

263:                                              ; preds = %255
  %264 = load i64, i64* @general_textured_triangle, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  store i64 %264, i64* %267, align 8
  br label %268

268:                                              ; preds = %263, %258
  br label %269

269:                                              ; preds = %268, %202
  br label %306

270:                                              ; preds = %44, %38, %32
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @GL_SMOOTH, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %270
  %278 = load i64, i64* %3, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i64, i64* @smooth_rgba_triangle, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  store i64 %281, i64* %284, align 8
  br label %290

285:                                              ; preds = %277
  %286 = load i64, i64* @smooth_ci_triangle, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  store i64 %286, i64* %289, align 8
  br label %290

290:                                              ; preds = %285, %280
  br label %305

291:                                              ; preds = %270
  %292 = load i64, i64* %3, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load i64, i64* @flat_rgba_triangle, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  store i64 %295, i64* %298, align 8
  br label %304

299:                                              ; preds = %291
  %300 = load i64, i64* @flat_ci_triangle, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  store i64 %300, i64* %303, align 8
  br label %304

304:                                              ; preds = %299, %294
  br label %305

305:                                              ; preds = %304, %290
  br label %306

306:                                              ; preds = %305, %269
  br label %307

307:                                              ; preds = %306, %31
  br label %325

308:                                              ; preds = %1
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @GL_FEEDBACK, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %308
  %315 = load i64, i64* @feedback_triangle, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  store i64 %315, i64* %318, align 8
  br label %324

319:                                              ; preds = %308
  %320 = load i64, i64* @select_triangle, align 8
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  store i64 %320, i64* %323, align 8
  br label %324

324:                                              ; preds = %319, %314
  br label %325

325:                                              ; preds = %20, %324, %307
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
