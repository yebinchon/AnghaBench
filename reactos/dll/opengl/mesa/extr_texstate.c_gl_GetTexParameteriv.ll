; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexParameteriv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexParameteriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { double*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { double*, i32, i32, i32, i32, i32 }

@GL_TRUE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"glGetTexParameteriv(pname)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"glGetTexParameteriv(target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexParameteriv(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x double], align 16
  %10 = alloca [4 x double], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %234 [
    i32 136, label %12
    i32 135, label %123
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %118 [
    i32 133, label %14
    i32 132, label %22
    i32 129, label %30
    i32 128, label %38
    i32 134, label %46
    i32 130, label %107
    i32 131, label %110
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  br label %122

22:                                               ; preds = %12
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %122

30:                                               ; preds = %12
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %122

38:                                               ; preds = %12
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %122

46:                                               ; preds = %12
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 0
  %54 = load double, double* %53, align 8
  %55 = fdiv double %54, 2.550000e+02
  %56 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  store double %55, double* %56, align 16
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load double*, double** %61, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load double, double* %63, align 8
  %65 = fdiv double %64, 2.550000e+02
  %66 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 1
  store double %65, double* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load double*, double** %71, align 8
  %73 = getelementptr inbounds double, double* %72, i64 2
  %74 = load double, double* %73, align 8
  %75 = fdiv double %74, 2.550000e+02
  %76 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 2
  store double %75, double* %76, align 16
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load double*, double** %81, align 8
  %83 = getelementptr inbounds double, double* %82, i64 3
  %84 = load double, double* %83, align 8
  %85 = fdiv double %84, 2.550000e+02
  %86 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 3
  store double %85, double* %86, align 8
  %87 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  %88 = load double, double* %87, align 16
  %89 = call i32 @FLOAT_TO_INT(double %88)
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 1
  %93 = load double, double* %92, align 8
  %94 = call i32 @FLOAT_TO_INT(double %93)
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 2
  %98 = load double, double* %97, align 16
  %99 = call i32 @FLOAT_TO_INT(double %98)
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 3
  %103 = load double, double* %102, align 8
  %104 = call i32 @FLOAT_TO_INT(double %103)
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 %104, i32* %106, align 4
  br label %122

107:                                              ; preds = %12
  %108 = load i32, i32* @GL_TRUE, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  br label %122

110:                                              ; preds = %12
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  br label %122

118:                                              ; preds = %12
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = load i32, i32* @GL_INVALID_ENUM, align 4
  %121 = call i32 @gl_error(%struct.TYPE_10__* %119, i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %110, %107, %46, %38, %30, %22, %14
  br label %238

123:                                              ; preds = %4
  %124 = load i32, i32* %7, align 4
  switch i32 %124, label %229 [
    i32 133, label %125
    i32 132, label %133
    i32 129, label %141
    i32 128, label %149
    i32 134, label %157
    i32 130, label %218
    i32 131, label %221
  ]

125:                                              ; preds = %123
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  br label %233

133:                                              ; preds = %123
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  br label %233

141:                                              ; preds = %123
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %8, align 8
  store i32 %147, i32* %148, align 4
  br label %233

149:                                              ; preds = %123
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  br label %233

157:                                              ; preds = %123
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load double*, double** %162, align 8
  %164 = getelementptr inbounds double, double* %163, i64 0
  %165 = load double, double* %164, align 8
  %166 = fdiv double %165, 2.550000e+02
  %167 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  store double %166, double* %167, align 16
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load double*, double** %172, align 8
  %174 = getelementptr inbounds double, double* %173, i64 1
  %175 = load double, double* %174, align 8
  %176 = fdiv double %175, 2.550000e+02
  %177 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 1
  store double %176, double* %177, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load double*, double** %182, align 8
  %184 = getelementptr inbounds double, double* %183, i64 2
  %185 = load double, double* %184, align 8
  %186 = fdiv double %185, 2.550000e+02
  %187 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 2
  store double %186, double* %187, align 16
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load double*, double** %192, align 8
  %194 = getelementptr inbounds double, double* %193, i64 3
  %195 = load double, double* %194, align 8
  %196 = fdiv double %195, 2.550000e+02
  %197 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  store double %196, double* %197, align 8
  %198 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %199 = load double, double* %198, align 16
  %200 = call i32 @FLOAT_TO_INT(double %199)
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %200, i32* %202, align 4
  %203 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 1
  %204 = load double, double* %203, align 8
  %205 = call i32 @FLOAT_TO_INT(double %204)
  %206 = load i32*, i32** %8, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 2
  %209 = load double, double* %208, align 16
  %210 = call i32 @FLOAT_TO_INT(double %209)
  %211 = load i32*, i32** %8, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  store i32 %210, i32* %212, align 4
  %213 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  %214 = load double, double* %213, align 8
  %215 = call i32 @FLOAT_TO_INT(double %214)
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  store i32 %215, i32* %217, align 4
  br label %233

218:                                              ; preds = %123
  %219 = load i32, i32* @GL_TRUE, align 4
  %220 = load i32*, i32** %8, align 8
  store i32 %219, i32* %220, align 4
  br label %233

221:                                              ; preds = %123
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %8, align 8
  store i32 %227, i32* %228, align 4
  br label %233

229:                                              ; preds = %123
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = load i32, i32* @GL_INVALID_ENUM, align 4
  %232 = call i32 @gl_error(%struct.TYPE_10__* %230, i32 %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %233

233:                                              ; preds = %229, %221, %218, %157, %149, %141, %133, %125
  br label %238

234:                                              ; preds = %4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = load i32, i32* @GL_INVALID_ENUM, align 4
  %237 = call i32 @gl_error(%struct.TYPE_10__* %235, i32 %236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %238

238:                                              ; preds = %234, %233, %122
  ret void
}

declare dso_local i32 @FLOAT_TO_INT(double) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
