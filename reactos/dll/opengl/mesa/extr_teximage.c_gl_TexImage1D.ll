; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_TexImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_19__*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i8*, %struct.gl_texture_image** }
%struct.gl_texture_image = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)* }
%struct.gl_image = type { i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glTexImage1D\00", align 1
@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@NEW_TEXTURING = common dso_local global i32 0, align 4
@GL_PROXY_TEXTURE_1D = common dso_local global i64 0, align 8
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"glTexImage1D(target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexImage1D(%struct.TYPE_18__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6, i64 %7, %struct.gl_image* %8) #0 {
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.gl_image*, align 8
  %19 = alloca %struct.gl_texture_image*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.gl_image* %8, %struct.gl_image** %18, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %21 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_18__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %25 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %26 = call i32 @gl_error(%struct.TYPE_18__* %24, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %232

27:                                               ; preds = %9
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @GL_TEXTURE_1D, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %137

31:                                               ; preds = %27
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @texture_1d_error_check(%struct.TYPE_18__* %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %232

43:                                               ; preds = %31
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %49, i64 %50
  %52 = load %struct.gl_texture_image*, %struct.gl_texture_image** %51, align 8
  %53 = icmp ne %struct.gl_texture_image* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %60, i64 %61
  %63 = load %struct.gl_texture_image*, %struct.gl_texture_image** %62, align 8
  %64 = call i32 @gl_free_texture_image(%struct.gl_texture_image* %63)
  br label %65

65:                                               ; preds = %54, %43
  %66 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %67 = icmp ne %struct.gl_image* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call %struct.gl_texture_image* @image_to_texture(%struct.TYPE_18__* %69, %struct.gl_image* %70, i64 %71, i64 %72)
  store %struct.gl_texture_image* %73, %struct.gl_texture_image** %19, align 8
  br label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i64, i64* %15, align 8
  %79 = call %struct.gl_texture_image* @make_null_texture(%struct.TYPE_18__* %75, i64 %76, i32 %77, i32 1, i32 1, i64 %78)
  store %struct.gl_texture_image* %79, %struct.gl_texture_image** %19, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %87, i64 %88
  store %struct.gl_texture_image* %81, %struct.gl_texture_image** %89, align 8
  %90 = load i8*, i8** @GL_TRUE, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i8* %90, i8** %95, align 8
  %96 = load i8*, i8** @GL_TRUE, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* @NEW_TEXTURING, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %106 = icmp ne %struct.gl_image* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %80
  %108 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %109 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %114 = call i32 @gl_free_image(%struct.gl_image* %113)
  br label %115

115:                                              ; preds = %112, %107, %80
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)*, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)** %118, align 8
  %120 = icmp ne i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)*, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i64, i64, %struct.gl_texture_image*)** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = load i64, i64* @GL_TEXTURE_1D, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %135 = call i32 %125(%struct.TYPE_18__* %126, i64 %127, %struct.TYPE_19__* %131, i64 %132, i64 %133, %struct.gl_texture_image* %134)
  br label %136

136:                                              ; preds = %121, %115
  br label %232

137:                                              ; preds = %27
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %227

141:                                              ; preds = %137
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i64, i64* %15, align 8
  %150 = call i64 @texture_1d_error_check(%struct.TYPE_18__* %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i32 %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %141
  %153 = load i64, i64* %12, align 8
  %154 = icmp uge i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %152
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %165, i64 %166
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = call i32 @MEMSET(%struct.TYPE_14__* %168, i32 0, i32 4)
  br label %170

170:                                              ; preds = %159, %155, %152
  br label %215

171:                                              ; preds = %141
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %177, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %178, i64 %179
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  store i64 %172, i64* %182, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %188, align 8
  %190 = load i64, i64* %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %189, i64 %190
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  store i64 %183, i64* %193, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %200, i64 %201
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  store i32 %194, i32* %204, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %209, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %210, i64 %211
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %171, %170
  %216 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %217 = icmp ne %struct.gl_image* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %220 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %225 = call i32 @gl_free_image(%struct.gl_image* %224)
  br label %226

226:                                              ; preds = %223, %218, %215
  br label %231

227:                                              ; preds = %137
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %229 = load i32, i32* @GL_INVALID_ENUM, align 4
  %230 = call i32 @gl_error(%struct.TYPE_18__* %228, i32 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %232

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %23, %42, %227, %231, %136
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_18__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @texture_1d_error_check(%struct.TYPE_18__*, i64, i64, i64, i64, i64, i32, i64) #1

declare dso_local i32 @gl_free_texture_image(%struct.gl_texture_image*) #1

declare dso_local %struct.gl_texture_image* @image_to_texture(%struct.TYPE_18__*, %struct.gl_image*, i64, i64) #1

declare dso_local %struct.gl_texture_image* @make_null_texture(%struct.TYPE_18__*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @gl_free_image(%struct.gl_image*) #1

declare dso_local i32 @MEMSET(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
