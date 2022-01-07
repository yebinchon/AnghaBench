; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalCoord1f.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalCoord1f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { double*, double*, i32, i64 }
%struct.TYPE_10__ = type { %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map }
%struct.gl_1d_map = type { double, double, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_EvalCoord1f(%struct.TYPE_12__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca double, align 8
  %5 = alloca [4 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [4 x double], align 16
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64*, align 8
  %10 = alloca [4 x double], align 16
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gl_1d_map*, align 8
  %14 = alloca %struct.gl_1d_map*, align 8
  %15 = alloca %struct.gl_1d_map*, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gl_1d_map*, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca %struct.gl_1d_map*, align 8
  %20 = alloca %struct.gl_1d_map*, align 8
  %21 = alloca %struct.gl_1d_map*, align 8
  %22 = alloca %struct.gl_1d_map*, align 8
  %23 = alloca %struct.gl_1d_map*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store double %1, double* %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 8
  store %struct.gl_1d_map* %32, %struct.gl_1d_map** %13, align 8
  %33 = load double, double* %4, align 8
  %34 = load %struct.gl_1d_map*, %struct.gl_1d_map** %13, align 8
  %35 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fsub double %33, %36
  %38 = load %struct.gl_1d_map*, %struct.gl_1d_map** %13, align 8
  %39 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load %struct.gl_1d_map*, %struct.gl_1d_map** %13, align 8
  %42 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = fdiv double %37, %44
  store double %45, double* %12, align 8
  %46 = load %struct.gl_1d_map*, %struct.gl_1d_map** %13, align 8
  %47 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %50 = load double, double* %12, align 8
  %51 = load %struct.gl_1d_map*, %struct.gl_1d_map** %13, align 8
  %52 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @horner_bezier_curve(i32 %48, double* %49, double %50, i32 4, i32 %53)
  br label %89

55:                                               ; preds = %2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 7
  store %struct.gl_1d_map* %64, %struct.gl_1d_map** %14, align 8
  %65 = load double, double* %4, align 8
  %66 = load %struct.gl_1d_map*, %struct.gl_1d_map** %14, align 8
  %67 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fsub double %65, %68
  %70 = load %struct.gl_1d_map*, %struct.gl_1d_map** %14, align 8
  %71 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = load %struct.gl_1d_map*, %struct.gl_1d_map** %14, align 8
  %74 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fsub double %72, %75
  %77 = fdiv double %69, %76
  store double %77, double* %12, align 8
  %78 = load %struct.gl_1d_map*, %struct.gl_1d_map** %14, align 8
  %79 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %82 = load double, double* %12, align 8
  %83 = load %struct.gl_1d_map*, %struct.gl_1d_map** %14, align 8
  %84 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @horner_bezier_curve(i32 %80, double* %81, double %82, i32 3, i32 %85)
  %87 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  store double 1.000000e+00, double* %87, align 8
  br label %88

88:                                               ; preds = %61, %55
  br label %89

89:                                               ; preds = %88, %29
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  store %struct.gl_1d_map* %98, %struct.gl_1d_map** %15, align 8
  %99 = load double, double* %4, align 8
  %100 = load %struct.gl_1d_map*, %struct.gl_1d_map** %15, align 8
  %101 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %100, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fsub double %99, %102
  %104 = load %struct.gl_1d_map*, %struct.gl_1d_map** %15, align 8
  %105 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %104, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = load %struct.gl_1d_map*, %struct.gl_1d_map** %15, align 8
  %108 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %107, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = fsub double %106, %109
  %111 = fdiv double %103, %110
  store double %111, double* %12, align 8
  %112 = load %struct.gl_1d_map*, %struct.gl_1d_map** %15, align 8
  %113 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load double, double* %12, align 8
  %116 = load %struct.gl_1d_map*, %struct.gl_1d_map** %15, align 8
  %117 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @horner_bezier_curve(i32 %114, double* %16, double %115, i32 1, i32 %118)
  %120 = load double, double* %16, align 8
  %121 = fptosi double %120 to i64
  store i64 %121, i64* %11, align 8
  br label %127

122:                                              ; preds = %89
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %11, align 8
  br label %127

127:                                              ; preds = %122, %95
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %200

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 5
  store %struct.gl_1d_map* %136, %struct.gl_1d_map** %17, align 8
  %137 = load double, double* %4, align 8
  %138 = load %struct.gl_1d_map*, %struct.gl_1d_map** %17, align 8
  %139 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %138, i32 0, i32 0
  %140 = load double, double* %139, align 8
  %141 = fsub double %137, %140
  %142 = load %struct.gl_1d_map*, %struct.gl_1d_map** %17, align 8
  %143 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %142, i32 0, i32 1
  %144 = load double, double* %143, align 8
  %145 = load %struct.gl_1d_map*, %struct.gl_1d_map** %17, align 8
  %146 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %145, i32 0, i32 0
  %147 = load double, double* %146, align 8
  %148 = fsub double %144, %147
  %149 = fdiv double %141, %148
  store double %149, double* %12, align 8
  %150 = load %struct.gl_1d_map*, %struct.gl_1d_map** %17, align 8
  %151 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %154 = load double, double* %12, align 8
  %155 = load %struct.gl_1d_map*, %struct.gl_1d_map** %17, align 8
  %156 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @horner_bezier_curve(i32 %152, double* %153, double %154, i32 4, i32 %157)
  %159 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %160 = load double, double* %159, align 16
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fmul double %160, %165
  %167 = fptosi double %166 to i64
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %167, i64* %168, align 16
  %169 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 1
  %170 = load double, double* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load double, double* %174, align 8
  %176 = fmul double %170, %175
  %177 = fptosi double %176 to i64
  %178 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %177, i64* %178, align 8
  %179 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 2
  %180 = load double, double* %179, align 16
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load double, double* %184, align 8
  %186 = fmul double %180, %185
  %187 = fptosi double %186 to i64
  %188 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  store i64 %187, i64* %188, align 16
  %189 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  %190 = load double, double* %189, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load double, double* %194, align 8
  %196 = fmul double %190, %195
  %197 = fptosi double %196 to i64
  %198 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 3
  store i64 %197, i64* %198, align 8
  %199 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64* %199, i64** %9, align 8
  br label %208

200:                                              ; preds = %127
  %201 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @COPY_4V(i64* %201, i32 %205)
  %207 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  store i64* %207, i64** %9, align 8
  br label %208

208:                                              ; preds = %200, %133
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %240

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  store %struct.gl_1d_map* %217, %struct.gl_1d_map** %19, align 8
  %218 = load double, double* %4, align 8
  %219 = load %struct.gl_1d_map*, %struct.gl_1d_map** %19, align 8
  %220 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %219, i32 0, i32 0
  %221 = load double, double* %220, align 8
  %222 = fsub double %218, %221
  %223 = load %struct.gl_1d_map*, %struct.gl_1d_map** %19, align 8
  %224 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %223, i32 0, i32 1
  %225 = load double, double* %224, align 8
  %226 = load %struct.gl_1d_map*, %struct.gl_1d_map** %19, align 8
  %227 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %226, i32 0, i32 0
  %228 = load double, double* %227, align 8
  %229 = fsub double %225, %228
  %230 = fdiv double %222, %229
  store double %230, double* %12, align 8
  %231 = load %struct.gl_1d_map*, %struct.gl_1d_map** %19, align 8
  %232 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %235 = load double, double* %12, align 8
  %236 = load %struct.gl_1d_map*, %struct.gl_1d_map** %19, align 8
  %237 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @horner_bezier_curve(i32 %233, double* %234, double %235, i32 3, i32 %238)
  br label %262

240:                                              ; preds = %208
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load double*, double** %243, align 8
  %245 = getelementptr inbounds double, double* %244, i64 0
  %246 = load double, double* %245, align 8
  %247 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  store double %246, double* %247, align 16
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load double*, double** %250, align 8
  %252 = getelementptr inbounds double, double* %251, i64 1
  %253 = load double, double* %252, align 8
  %254 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  store double %253, double* %254, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load double*, double** %257, align 8
  %259 = getelementptr inbounds double, double* %258, i64 2
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  store double %260, double* %261, align 16
  br label %262

262:                                              ; preds = %240, %214
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %294

268:                                              ; preds = %262
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  store %struct.gl_1d_map* %271, %struct.gl_1d_map** %20, align 8
  %272 = load double, double* %4, align 8
  %273 = load %struct.gl_1d_map*, %struct.gl_1d_map** %20, align 8
  %274 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %273, i32 0, i32 0
  %275 = load double, double* %274, align 8
  %276 = fsub double %272, %275
  %277 = load %struct.gl_1d_map*, %struct.gl_1d_map** %20, align 8
  %278 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %277, i32 0, i32 1
  %279 = load double, double* %278, align 8
  %280 = load %struct.gl_1d_map*, %struct.gl_1d_map** %20, align 8
  %281 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %280, i32 0, i32 0
  %282 = load double, double* %281, align 8
  %283 = fsub double %279, %282
  %284 = fdiv double %276, %283
  store double %284, double* %12, align 8
  %285 = load %struct.gl_1d_map*, %struct.gl_1d_map** %20, align 8
  %286 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %289 = load double, double* %12, align 8
  %290 = load %struct.gl_1d_map*, %struct.gl_1d_map** %20, align 8
  %291 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @horner_bezier_curve(i32 %287, double* %288, double %289, i32 4, i32 %292)
  br label %428

294:                                              ; preds = %262
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %327

300:                                              ; preds = %294
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  store %struct.gl_1d_map* %303, %struct.gl_1d_map** %21, align 8
  %304 = load double, double* %4, align 8
  %305 = load %struct.gl_1d_map*, %struct.gl_1d_map** %21, align 8
  %306 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %305, i32 0, i32 0
  %307 = load double, double* %306, align 8
  %308 = fsub double %304, %307
  %309 = load %struct.gl_1d_map*, %struct.gl_1d_map** %21, align 8
  %310 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %309, i32 0, i32 1
  %311 = load double, double* %310, align 8
  %312 = load %struct.gl_1d_map*, %struct.gl_1d_map** %21, align 8
  %313 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %312, i32 0, i32 0
  %314 = load double, double* %313, align 8
  %315 = fsub double %311, %314
  %316 = fdiv double %308, %315
  store double %316, double* %12, align 8
  %317 = load %struct.gl_1d_map*, %struct.gl_1d_map** %21, align 8
  %318 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %321 = load double, double* %12, align 8
  %322 = load %struct.gl_1d_map*, %struct.gl_1d_map** %21, align 8
  %323 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @horner_bezier_curve(i32 %319, double* %320, double %321, i32 3, i32 %324)
  %326 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  store double 1.000000e+00, double* %326, align 8
  br label %427

327:                                              ; preds = %294
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %361

333:                                              ; preds = %327
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  store %struct.gl_1d_map* %336, %struct.gl_1d_map** %22, align 8
  %337 = load double, double* %4, align 8
  %338 = load %struct.gl_1d_map*, %struct.gl_1d_map** %22, align 8
  %339 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %338, i32 0, i32 0
  %340 = load double, double* %339, align 8
  %341 = fsub double %337, %340
  %342 = load %struct.gl_1d_map*, %struct.gl_1d_map** %22, align 8
  %343 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %342, i32 0, i32 1
  %344 = load double, double* %343, align 8
  %345 = load %struct.gl_1d_map*, %struct.gl_1d_map** %22, align 8
  %346 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %345, i32 0, i32 0
  %347 = load double, double* %346, align 8
  %348 = fsub double %344, %347
  %349 = fdiv double %341, %348
  store double %349, double* %12, align 8
  %350 = load %struct.gl_1d_map*, %struct.gl_1d_map** %22, align 8
  %351 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %354 = load double, double* %12, align 8
  %355 = load %struct.gl_1d_map*, %struct.gl_1d_map** %22, align 8
  %356 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @horner_bezier_curve(i32 %352, double* %353, double %354, i32 2, i32 %357)
  %359 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 2
  store double 0.000000e+00, double* %359, align 16
  %360 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  store double 1.000000e+00, double* %360, align 8
  br label %426

361:                                              ; preds = %327
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %396

367:                                              ; preds = %361
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  store %struct.gl_1d_map* %370, %struct.gl_1d_map** %23, align 8
  %371 = load double, double* %4, align 8
  %372 = load %struct.gl_1d_map*, %struct.gl_1d_map** %23, align 8
  %373 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %372, i32 0, i32 0
  %374 = load double, double* %373, align 8
  %375 = fsub double %371, %374
  %376 = load %struct.gl_1d_map*, %struct.gl_1d_map** %23, align 8
  %377 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %376, i32 0, i32 1
  %378 = load double, double* %377, align 8
  %379 = load %struct.gl_1d_map*, %struct.gl_1d_map** %23, align 8
  %380 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %379, i32 0, i32 0
  %381 = load double, double* %380, align 8
  %382 = fsub double %378, %381
  %383 = fdiv double %375, %382
  store double %383, double* %12, align 8
  %384 = load %struct.gl_1d_map*, %struct.gl_1d_map** %23, align 8
  %385 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %388 = load double, double* %12, align 8
  %389 = load %struct.gl_1d_map*, %struct.gl_1d_map** %23, align 8
  %390 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @horner_bezier_curve(i32 %386, double* %387, double %388, i32 1, i32 %391)
  %393 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 1
  store double 0.000000e+00, double* %393, align 8
  %394 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 2
  store double 0.000000e+00, double* %394, align 16
  %395 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  store double 1.000000e+00, double* %395, align 8
  br label %425

396:                                              ; preds = %361
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  %400 = load double*, double** %399, align 8
  %401 = getelementptr inbounds double, double* %400, i64 0
  %402 = load double, double* %401, align 8
  %403 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  store double %402, double* %403, align 16
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 1
  %407 = load double*, double** %406, align 8
  %408 = getelementptr inbounds double, double* %407, i64 1
  %409 = load double, double* %408, align 8
  %410 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 1
  store double %409, double* %410, align 8
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 1
  %414 = load double*, double** %413, align 8
  %415 = getelementptr inbounds double, double* %414, i64 2
  %416 = load double, double* %415, align 8
  %417 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 2
  store double %416, double* %417, align 16
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 1
  %421 = load double*, double** %420, align 8
  %422 = getelementptr inbounds double, double* %421, i64 3
  %423 = load double, double* %422, align 8
  %424 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 3
  store double %423, double* %424, align 8
  br label %425

425:                                              ; preds = %396, %367
  br label %426

426:                                              ; preds = %425, %333
  br label %427

427:                                              ; preds = %426, %300
  br label %428

428:                                              ; preds = %427, %268
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %430 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %431 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %432 = load i64*, i64** %9, align 8
  %433 = load i64, i64* %11, align 8
  %434 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %435 = call i32 @gl_eval_vertex(%struct.TYPE_12__* %429, double* %430, double* %431, i64* %432, i64 %433, double* %434)
  ret void
}

declare dso_local i32 @horner_bezier_curve(i32, double*, double, i32, i32) #1

declare dso_local i32 @COPY_4V(i64*, i32) #1

declare dso_local i32 @gl_eval_vertex(%struct.TYPE_12__*, double*, double*, i64*, i64, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
