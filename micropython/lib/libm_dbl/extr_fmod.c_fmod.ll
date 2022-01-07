; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_fmod.c_fmod.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_fmod.c_fmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fmod(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %13 = bitcast %union.anon* %6 to double*
  %14 = load double, double* %4, align 8
  store double %14, double* %13, align 8
  %15 = bitcast %union.anon* %7 to double*
  %16 = load double, double* %5, align 8
  store double %16, double* %15, align 8
  %17 = bitcast %union.anon* %6 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 52
  %20 = and i32 %19, 2047
  store i32 %20, i32* %8, align 4
  %21 = bitcast %union.anon* %7 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 52
  %24 = and i32 %23, 2047
  store i32 %24, i32* %9, align 4
  %25 = bitcast %union.anon* %6 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 63
  store i32 %27, i32* %10, align 4
  %28 = bitcast %union.anon* %6 to i32*
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = bitcast %union.anon* %7 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load double, double* %5, align 8
  %36 = call i64 @isnan(double %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 2047
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %34, %2
  %42 = load double, double* %4, align 8
  %43 = load double, double* %5, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %4, align 8
  %46 = load double, double* %5, align 8
  %47 = fmul double %45, %46
  %48 = fdiv double %44, %47
  store double %48, double* %3, align 8
  br label %215

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 1
  %52 = bitcast %union.anon* %7 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %53, 1
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 1
  %59 = bitcast %union.anon* %7 to i32*
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 1
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load double, double* %4, align 8
  %65 = fmul double 0.000000e+00, %64
  store double %65, double* %3, align 8
  br label %215

66:                                               ; preds = %56
  %67 = load double, double* %4, align 8
  store double %67, double* %3, align 8
  br label %215

68:                                               ; preds = %49
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = shl i32 %72, 12
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %79, %71
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 63
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %74

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 0, %85
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %12, align 4
  %89 = shl i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %99

90:                                               ; preds = %68
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, 4503599627370495
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = or i64 %96, 4503599627370496
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %90, %84
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %99
  %103 = bitcast %union.anon* %7 to i32*
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 12
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %111, %102
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 63
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %106

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 0, %117
  %119 = add nsw i32 %118, 1
  %120 = bitcast %union.anon* %7 to i32*
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, %119
  store i32 %122, i32* %120, align 8
  br label %134

123:                                              ; preds = %99
  %124 = bitcast %union.anon* %7 to i32*
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = and i64 %126, 4503599627370495
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = bitcast %union.anon* %7 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = or i64 %131, 4503599627370496
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  br label %134

134:                                              ; preds = %123, %116
  br label %135

135:                                              ; preds = %158, %134
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = bitcast %union.anon* %7 to i32*
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %140, %142
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = ashr i32 %144, 63
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load double, double* %4, align 8
  %152 = fmul double 0.000000e+00, %151
  store double %152, double* %3, align 8
  br label %215

153:                                              ; preds = %147
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %139
  %156 = load i32, i32* %12, align 4
  %157 = shl i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %8, align 4
  br label %135

161:                                              ; preds = %135
  %162 = load i32, i32* %12, align 4
  %163 = bitcast %union.anon* %7 to i32*
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = ashr i32 %166, 63
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %161
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load double, double* %4, align 8
  %174 = fmul double 0.000000e+00, %173
  store double %174, double* %3, align 8
  br label %215

175:                                              ; preds = %169
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %175, %161
  br label %178

178:                                              ; preds = %183, %177
  %179 = load i32, i32* %12, align 4
  %180 = ashr i32 %179, 52
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = shl i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %8, align 4
  br label %178

188:                                              ; preds = %178
  %189 = load i32, i32* %8, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 %193, 4503599627370496
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %8, align 4
  %197 = shl i32 %196, 52
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %12, align 4
  br label %206

200:                                              ; preds = %188
  %201 = load i32, i32* %8, align 4
  %202 = sub nsw i32 0, %201
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %12, align 4
  %205 = ashr i32 %204, %203
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %200, %191
  %207 = load i32, i32* %10, align 4
  %208 = shl i32 %207, 63
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = bitcast %union.anon* %6 to i32*
  store i32 %211, i32* %212, align 8
  %213 = bitcast %union.anon* %6 to double*
  %214 = load double, double* %213, align 8
  store double %214, double* %3, align 8
  br label %215

215:                                              ; preds = %206, %172, %150, %66, %63, %41
  %216 = load double, double* %3, align 8
  ret double %216
}

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
