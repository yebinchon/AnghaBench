; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_fmodf.c_fmodf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_fmodf.c_fmodf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fmodf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %13 = bitcast %union.anon* %6 to float*
  %14 = load float, float* %4, align 4
  store float %14, float* %13, align 4
  %15 = bitcast %union.anon* %7 to float*
  %16 = load float, float* %5, align 4
  store float %16, float* %15, align 4
  %17 = bitcast %union.anon* %6 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 23
  %20 = and i32 %19, 255
  store i32 %20, i32* %8, align 4
  %21 = bitcast %union.anon* %7 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 23
  %24 = and i32 %23, 255
  store i32 %24, i32* %9, align 4
  %25 = bitcast %union.anon* %6 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -2147483648
  store i32 %27, i32* %10, align 4
  %28 = bitcast %union.anon* %6 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = bitcast %union.anon* %7 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load float, float* %5, align 4
  %36 = call i64 @isnan(float %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %34, %2
  %42 = load float, float* %4, align 4
  %43 = load float, float* %5, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %4, align 4
  %46 = load float, float* %5, align 4
  %47 = fmul float %45, %46
  %48 = fdiv float %44, %47
  store float %48, float* %3, align 4
  br label %204

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 1
  %52 = bitcast %union.anon* %7 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 1
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 1
  %59 = bitcast %union.anon* %7 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load float, float* %4, align 4
  %65 = fmul float 0.000000e+00, %64
  store float %65, float* %3, align 4
  br label %204

66:                                               ; preds = %56
  %67 = load float, float* %4, align 4
  store float %67, float* %3, align 4
  br label %204

68:                                               ; preds = %49
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = shl i32 %72, 9
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %79, %71
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 31
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
  br label %95

90:                                               ; preds = %68
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, 8388607
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, 8388608
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = bitcast %union.anon* %7 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 9
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %107, %98
  %103 = load i32, i32* %11, align 4
  %104 = ashr i32 %103, 31
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %11, align 4
  %111 = shl i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %102

112:                                              ; preds = %102
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 0, %113
  %115 = add nsw i32 %114, 1
  %116 = bitcast %union.anon* %7 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %126

119:                                              ; preds = %95
  %120 = bitcast %union.anon* %7 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 8388607
  store i32 %122, i32* %120, align 4
  %123 = bitcast %union.anon* %7 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, 8388608
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %119, %112
  br label %127

127:                                              ; preds = %150, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = bitcast %union.anon* %7 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %132, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = ashr i32 %136, 31
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load float, float* %4, align 4
  %144 = fmul float 0.000000e+00, %143
  store float %144, float* %3, align 4
  br label %204

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %145, %131
  %148 = load i32, i32* %12, align 4
  %149 = shl i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %8, align 4
  br label %127

153:                                              ; preds = %127
  %154 = load i32, i32* %12, align 4
  %155 = bitcast %union.anon* %7 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %154, %156
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = ashr i32 %158, 31
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load float, float* %4, align 4
  %166 = fmul float 0.000000e+00, %165
  store float %166, float* %3, align 4
  br label %204

167:                                              ; preds = %161
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %167, %153
  br label %170

170:                                              ; preds = %175, %169
  %171 = load i32, i32* %12, align 4
  %172 = ashr i32 %171, 23
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %12, align 4
  %177 = shl i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %8, align 4
  br label %170

180:                                              ; preds = %170
  %181 = load i32, i32* %8, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = sub i32 %184, 8388608
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %8, align 4
  %187 = shl i32 %186, 23
  %188 = load i32, i32* %12, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %12, align 4
  br label %196

190:                                              ; preds = %180
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 0, %191
  %193 = add nsw i32 %192, 1
  %194 = load i32, i32* %12, align 4
  %195 = ashr i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %190, %183
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = bitcast %union.anon* %6 to i32*
  store i32 %200, i32* %201, align 4
  %202 = bitcast %union.anon* %6 to float*
  %203 = load float, float* %202, align 4
  store float %203, float* %3, align 4
  br label %204

204:                                              ; preds = %196, %164, %142, %66, %63, %41
  %205 = load float, float* %3, align 4
  ret float %205
}

declare dso_local i64 @isnan(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
