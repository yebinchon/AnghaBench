; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_gl_set_texture_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_gl_set_texture_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i64, i64, float, i32, i32*, %struct.TYPE_2__**, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GL_LINEAR = common dso_local global i64 0, align 8
@GL_NEAREST_MIPMAP_NEAREST = common dso_local global i64 0, align 8
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i64 0, align 8
@sample_lambda_1d = common dso_local global i32* null, align 8
@sample_linear_1d = common dso_local global i32* null, align 8
@GL_NEAREST = common dso_local global i64 0, align 8
@sample_nearest_1d = common dso_local global i32* null, align 8
@sample_lambda_2d = common dso_local global i32* null, align 8
@sample_linear_2d = common dso_local global i32* null, align 8
@GL_REPEAT = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@opt_sample_rgb_2d = common dso_local global i32* null, align 8
@GL_RGBA = common dso_local global i32 0, align 4
@opt_sample_rgba_2d = common dso_local global i32* null, align 8
@sample_nearest_2d = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"invalid dimensions in gl_set_texture_sampler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_texture_sampler(%struct.gl_texture_object* %0) #0 {
  %2 = alloca %struct.gl_texture_object*, align 8
  %3 = alloca i32, align 4
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %2, align 8
  %4 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %5 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %10 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  br label %186

11:                                               ; preds = %1
  %12 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %13 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %16 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %11
  %23 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %24 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GL_LINEAR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %30 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GL_NEAREST_MIPMAP_NEAREST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %36 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GL_LINEAR_MIPMAP_NEAREST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %42 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %41, i32 0, i32 2
  store float 5.000000e-01, float* %42, align 8
  br label %46

43:                                               ; preds = %34, %22
  %44 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %45 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %44, i32 0, i32 2
  store float 0.000000e+00, float* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %11
  %48 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %49 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %183 [
    i32 1, label %51
    i32 2, label %81
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** @sample_lambda_1d, align 8
  %56 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %57 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  br label %80

58:                                               ; preds = %51
  %59 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %60 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GL_LINEAR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** @sample_linear_1d, align 8
  %66 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %67 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  br label %79

68:                                               ; preds = %58
  %69 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %70 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GL_NEAREST, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32*, i32** @sample_nearest_1d, align 8
  %77 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %78 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %68, %64
  br label %80

80:                                               ; preds = %79, %54
  br label %185

81:                                               ; preds = %47
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** @sample_lambda_2d, align 8
  %86 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %87 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  br label %182

88:                                               ; preds = %81
  %89 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %90 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GL_LINEAR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32*, i32** @sample_linear_2d, align 8
  %96 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %97 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  br label %181

98:                                               ; preds = %88
  %99 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %100 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @GL_NEAREST, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  %106 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %107 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GL_REPEAT, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %98
  %112 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %113 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GL_REPEAT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %119 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %118, i32 0, i32 5
  %120 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %120, i64 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %117
  %127 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %128 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %127, i32 0, i32 5
  %129 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %129, i64 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @GL_RGB, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i32*, i32** @opt_sample_rgb_2d, align 8
  %138 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %139 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %138, i32 0, i32 4
  store i32* %137, i32** %139, align 8
  br label %180

140:                                              ; preds = %126, %117, %111, %98
  %141 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %142 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @GL_REPEAT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %140
  %147 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %148 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @GL_REPEAT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %146
  %153 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %154 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %153, i32 0, i32 5
  %155 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %155, i64 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %152
  %162 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %163 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %162, i32 0, i32 5
  %164 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %164, i64 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @GL_RGBA, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load i32*, i32** @opt_sample_rgba_2d, align 8
  %173 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %174 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %173, i32 0, i32 4
  store i32* %172, i32** %174, align 8
  br label %179

175:                                              ; preds = %161, %152, %146, %140
  %176 = load i32*, i32** @sample_nearest_2d, align 8
  %177 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %178 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %177, i32 0, i32 4
  store i32* %176, i32** %178, align 8
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %136
  br label %181

181:                                              ; preds = %180, %94
  br label %182

182:                                              ; preds = %181, %84
  br label %185

183:                                              ; preds = %47
  %184 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %182, %80
  br label %186

186:                                              ; preds = %185, %8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
