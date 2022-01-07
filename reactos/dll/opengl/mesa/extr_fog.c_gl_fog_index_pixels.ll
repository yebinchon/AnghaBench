; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_index_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_index_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, double, float, double, double }
%struct.TYPE_6__ = type { double, float }

@.str = private unnamed_addr constant [36 x i8] c"Bad fog mode in gl_fog_index_pixels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_fog_index_pixels(%struct.TYPE_8__* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load double*, double** %27, align 8
  %29 = getelementptr inbounds double, double* %28, i64 10
  %30 = load double, double* %29, align 8
  store double %30, double* %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  %34 = getelementptr inbounds double, double* %33, i64 14
  %35 = load double, double* %34, align 8
  store double %35, double* %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  store double %39, double* %12, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load float, float* %42, align 8
  %44 = fdiv float 1.000000e+00, %43
  %45 = fpext float %44 to double
  store double %45, double* %13, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %244 [
    i32 128, label %50
    i32 130, label %120
    i32 129, label %178
  ]

50:                                               ; preds = %4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  store double %54, double* %14, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 8
  %63 = fpext float %62 to double
  %64 = fsub double %58, %63
  %65 = fdiv double 1.000000e+00, %64
  store double %65, double* %15, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %116, %50
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %119

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %12, align 8
  %77 = fsub double %75, %76
  %78 = load double, double* %13, align 8
  %79 = fmul double %77, %78
  store double %79, double* %16, align 8
  %80 = load double, double* %10, align 8
  %81 = fneg double %80
  %82 = load double, double* %9, align 8
  %83 = load double, double* %16, align 8
  %84 = fadd double %82, %83
  %85 = fdiv double %81, %84
  store double %85, double* %17, align 8
  %86 = load double, double* %17, align 8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load double, double* %17, align 8
  %90 = fneg double %89
  store double %90, double* %17, align 8
  br label %91

91:                                               ; preds = %88, %70
  %92 = load double, double* %14, align 8
  %93 = load double, double* %17, align 8
  %94 = fsub double %92, %93
  %95 = load double, double* %15, align 8
  %96 = fmul double %94, %95
  store double %96, double* %18, align 8
  %97 = load double, double* %18, align 8
  %98 = call double @CLAMP(double %97, float 0.000000e+00, float 1.000000e+00)
  store double %98, double* %18, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = uitofp i64 %102 to double
  %104 = load double, double* %18, align 8
  %105 = fsub double 1.000000e+00, %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load double, double* %108, align 8
  %110 = fmul double %105, %109
  %111 = fadd double %103, %110
  %112 = fptoui double %111 to i64
  %113 = load i64*, i64** %8, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %91
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %66

119:                                              ; preds = %66
  br label %247

120:                                              ; preds = %4
  store i64 0, i64* %11, align 8
  br label %121

121:                                              ; preds = %174, %120
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %6, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %177

125:                                              ; preds = %121
  %126 = load i32*, i32** %7, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sitofp i32 %129 to double
  %131 = load double, double* %12, align 8
  %132 = fsub double %130, %131
  %133 = load double, double* %13, align 8
  %134 = fmul double %132, %133
  store double %134, double* %19, align 8
  %135 = load double, double* %10, align 8
  %136 = fneg double %135
  %137 = load double, double* %9, align 8
  %138 = load double, double* %19, align 8
  %139 = fadd double %137, %138
  %140 = fdiv double %136, %139
  store double %140, double* %20, align 8
  %141 = load double, double* %20, align 8
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load double, double* %20, align 8
  %145 = fneg double %144
  store double %145, double* %20, align 8
  br label %146

146:                                              ; preds = %143, %125
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load double, double* %149, align 8
  %151 = fneg double %150
  %152 = load double, double* %20, align 8
  %153 = fmul double %151, %152
  %154 = call double @exp(double %153) #3
  store double %154, double* %21, align 8
  %155 = load double, double* %21, align 8
  %156 = call double @CLAMP(double %155, float 0.000000e+00, float 1.000000e+00)
  store double %156, double* %21, align 8
  %157 = load i64*, i64** %8, align 8
  %158 = load i64, i64* %11, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = uitofp i64 %160 to double
  %162 = load double, double* %21, align 8
  %163 = fsub double 1.000000e+00, %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load double, double* %166, align 8
  %168 = fmul double %163, %167
  %169 = fadd double %161, %168
  %170 = fptoui double %169 to i64
  %171 = load i64*, i64** %8, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %170, i64* %173, align 8
  br label %174

174:                                              ; preds = %146
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %11, align 8
  br label %121

177:                                              ; preds = %121
  br label %247

178:                                              ; preds = %4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 4
  %182 = load double, double* %181, align 8
  %183 = fneg double %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = load double, double* %186, align 8
  %188 = fmul double %183, %187
  store double %188, double* %22, align 8
  store i64 0, i64* %11, align 8
  br label %189

189:                                              ; preds = %240, %178
  %190 = load i64, i64* %11, align 8
  %191 = load i64, i64* %6, align 8
  %192 = icmp ult i64 %190, %191
  br i1 %192, label %193, label %243

193:                                              ; preds = %189
  %194 = load i32*, i32** %7, align 8
  %195 = load i64, i64* %11, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sitofp i32 %197 to double
  %199 = load double, double* %12, align 8
  %200 = fsub double %198, %199
  %201 = load double, double* %13, align 8
  %202 = fmul double %200, %201
  store double %202, double* %23, align 8
  %203 = load double, double* %10, align 8
  %204 = fneg double %203
  %205 = load double, double* %9, align 8
  %206 = load double, double* %23, align 8
  %207 = fadd double %205, %206
  %208 = fdiv double %204, %207
  store double %208, double* %24, align 8
  %209 = load double, double* %24, align 8
  %210 = fcmp olt double %209, 0.000000e+00
  br i1 %210, label %211, label %214

211:                                              ; preds = %193
  %212 = load double, double* %24, align 8
  %213 = fneg double %212
  store double %213, double* %24, align 8
  br label %214

214:                                              ; preds = %211, %193
  %215 = load double, double* %22, align 8
  %216 = load double, double* %24, align 8
  %217 = fmul double %215, %216
  %218 = load double, double* %24, align 8
  %219 = fmul double %217, %218
  %220 = call double @exp(double %219) #3
  store double %220, double* %25, align 8
  %221 = load double, double* %25, align 8
  %222 = call double @CLAMP(double %221, float 0.000000e+00, float 1.000000e+00)
  store double %222, double* %25, align 8
  %223 = load i64*, i64** %8, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = uitofp i64 %226 to double
  %228 = load double, double* %25, align 8
  %229 = fsub double 1.000000e+00, %228
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load double, double* %232, align 8
  %234 = fmul double %229, %233
  %235 = fadd double %227, %234
  %236 = fptoui double %235 to i64
  %237 = load i64*, i64** %8, align 8
  %238 = load i64, i64* %11, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %214
  %241 = load i64, i64* %11, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %11, align 8
  br label %189

243:                                              ; preds = %189
  br label %247

244:                                              ; preds = %4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = call i32 @gl_problem(%struct.TYPE_8__* %245, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %243, %177, %119
  ret void
}

declare dso_local double @CLAMP(double, float, float) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local i32 @gl_problem(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
