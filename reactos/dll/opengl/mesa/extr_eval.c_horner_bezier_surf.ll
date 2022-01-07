; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_horner_bezier_surf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_horner_bezier_surf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double, double, i32, i32, i32)* @horner_bezier_surf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @horner_bezier_surf(double* %0, double* %1, double %2, double %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  store double* %0, double** %8, align 8
  store double* %1, double** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %25 = load double*, double** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %25, i64 %31
  store double* %32, double** %15, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %184

39:                                               ; preds = %7
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %176

42:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %166, %42
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %169

47:                                               ; preds = %43
  %48 = load double*, double** %8, align 8
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %48, i64 %52
  store double* %53, double** %23, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %22, align 4
  %56 = load double, double* %10, align 8
  %57 = fsub double 1.000000e+00, %56
  store double %57, double* %18, align 8
  store i32 0, i32* %21, align 4
  br label %58

58:                                               ; preds = %91, %47
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load double, double* %18, align 8
  %64 = load double*, double** %23, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fmul double %63, %68
  %70 = load i32, i32* %22, align 4
  %71 = sitofp i32 %70 to double
  %72 = load double, double* %10, align 8
  %73 = fmul double %71, %72
  %74 = load double*, double** %23, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %74, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fmul double %73, %80
  %82 = fadd double %69, %81
  %83 = load double*, double** %15, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %83, i64 %89
  store double %82, double* %90, align 8
  br label %91

91:                                               ; preds = %62
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %58

94:                                               ; preds = %58
  store i32 2, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = mul nsw i32 2, %95
  %97 = load double*, double** %23, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds double, double* %97, i64 %98
  store double* %99, double** %23, align 8
  %100 = load double, double* %10, align 8
  %101 = load double, double* %10, align 8
  %102 = fmul double %100, %101
  store double %102, double* %19, align 8
  br label %103

103:                                              ; preds = %155, %94
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %165

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %22, align 4
  %112 = mul nsw i32 %111, %110
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %22, align 4
  %115 = sdiv i32 %114, %113
  store i32 %115, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %151, %107
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %154

120:                                              ; preds = %116
  %121 = load double, double* %18, align 8
  %122 = load double*, double** %15, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %21, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %122, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %121, %130
  %132 = load i32, i32* %22, align 4
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %19, align 8
  %135 = fmul double %133, %134
  %136 = load double*, double** %23, align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  %140 = load double, double* %139, align 8
  %141 = fmul double %135, %140
  %142 = fadd double %131, %141
  %143 = load double*, double** %15, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %12, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %143, i64 %149
  store double %142, double* %150, align 8
  br label %151

151:                                              ; preds = %120
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %21, align 4
  br label %116

154:                                              ; preds = %116
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  %158 = load double, double* %10, align 8
  %159 = load double, double* %19, align 8
  %160 = fmul double %159, %158
  store double %160, double* %19, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load double*, double** %23, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds double, double* %162, i64 %163
  store double* %164, double** %23, align 8
  br label %103

165:                                              ; preds = %103
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %43

169:                                              ; preds = %43
  %170 = load double*, double** %15, align 8
  %171 = load double*, double** %9, align 8
  %172 = load double, double* %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @horner_bezier_curve(double* %170, double* %171, double %172, i32 %173, i32 %174)
  br label %183

176:                                              ; preds = %39
  %177 = load double*, double** %8, align 8
  %178 = load double*, double** %9, align 8
  %179 = load double, double* %11, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @horner_bezier_curve(double* %177, double* %178, double %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %176, %169
  br label %226

184:                                              ; preds = %7
  %185 = load i32, i32* %14, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %218

187:                                              ; preds = %184
  store i32 0, i32* %24, align 4
  br label %188

188:                                              ; preds = %204, %187
  %189 = load i32, i32* %24, align 4
  %190 = load i32, i32* %13, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %211

192:                                              ; preds = %188
  %193 = load double*, double** %8, align 8
  %194 = load double*, double** %15, align 8
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %12, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %194, i64 %198
  %200 = load double, double* %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @horner_bezier_curve(double* %193, double* %199, double %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %192
  %205 = load i32, i32* %24, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %24, align 4
  %207 = load i32, i32* %17, align 4
  %208 = load double*, double** %8, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds double, double* %208, i64 %209
  store double* %210, double** %8, align 8
  br label %188

211:                                              ; preds = %188
  %212 = load double*, double** %15, align 8
  %213 = load double*, double** %9, align 8
  %214 = load double, double* %10, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @horner_bezier_curve(double* %212, double* %213, double %214, i32 %215, i32 %216)
  br label %225

218:                                              ; preds = %184
  %219 = load double*, double** %8, align 8
  %220 = load double*, double** %9, align 8
  %221 = load double, double* %10, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @horner_bezier_curve(double* %219, double* %220, double %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %218, %211
  br label %226

226:                                              ; preds = %225, %183
  ret void
}

declare dso_local i32 @horner_bezier_curve(double*, double*, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
