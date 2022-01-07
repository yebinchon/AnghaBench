; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaswp_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaswp_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlaswp_.i__ = internal global i32 0, align 4
@dlaswp_.j = internal global i32 0, align 4
@dlaswp_.k = internal global i32 0, align 4
@dlaswp_.i1 = internal global i32 0, align 4
@dlaswp_.i2 = internal global i32 0, align 4
@dlaswp_.n32 = internal global i32 0, align 4
@dlaswp_.ip = internal global i32 0, align 4
@dlaswp_.ix = internal global i32 0, align 4
@dlaswp_.ix0 = internal global i32 0, align 4
@dlaswp_.inc = internal global i32 0, align 4
@dlaswp_.temp = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlaswp_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %7
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @dlaswp_.ix0, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @dlaswp_.i1, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @dlaswp_.i2, align 4
  store i32 1, i32* @dlaswp_.inc, align 4
  br label %61

43:                                               ; preds = %7
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 1, %49
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @dlaswp_.ix0, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* @dlaswp_.i1, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @dlaswp_.i2, align 4
  store i32 -1, i32* @dlaswp_.inc, align 4
  br label %60

59:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %262

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 32
  %65 = shl i32 %64, 5
  store i32 %65, i32* @dlaswp_.n32, align 4
  %66 = load i32, i32* @dlaswp_.n32, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %166

68:                                               ; preds = %61
  %69 = load i32, i32* @dlaswp_.n32, align 4
  store i32 %69, i32* %18, align 4
  store i32 1, i32* @dlaswp_.j, align 4
  br label %70

70:                                               ; preds = %162, %68
  %71 = load i32, i32* @dlaswp_.j, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %165

74:                                               ; preds = %70
  %75 = load i32, i32* @dlaswp_.ix0, align 4
  store i32 %75, i32* @dlaswp_.ix, align 4
  %76 = load i32, i32* @dlaswp_.i2, align 4
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* @dlaswp_.inc, align 4
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* @dlaswp_.i1, align 4
  store i32 %78, i32* @dlaswp_.i__, align 4
  br label %79

79:                                               ; preds = %157, %74
  %80 = load i32, i32* %20, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* @dlaswp_.i__, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp sge i32 %83, %84
  %86 = zext i1 %85 to i32
  br label %92

87:                                               ; preds = %79
  %88 = load i32, i32* @dlaswp_.i__, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp sle i32 %88, %89
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i32 [ %86, %82 ], [ %91, %87 ]
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %161

95:                                               ; preds = %92
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* @dlaswp_.ix, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* @dlaswp_.ip, align 4
  %101 = load i32, i32* @dlaswp_.ip, align 4
  %102 = load i32, i32* @dlaswp_.i__, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %95
  %105 = load i32, i32* @dlaswp_.j, align 4
  %106 = add nsw i32 %105, 31
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* @dlaswp_.j, align 4
  store i32 %107, i32* @dlaswp_.k, align 4
  br label %108

108:                                              ; preds = %148, %104
  %109 = load i32, i32* @dlaswp_.k, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* @dlaswp_.i__, align 4
  %115 = load i32, i32* @dlaswp_.k, align 4
  %116 = load i32, i32* %16, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* @dlaswp_.temp, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* @dlaswp_.ip, align 4
  %124 = load i32, i32* @dlaswp_.k, align 4
  %125 = load i32, i32* %16, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* @dlaswp_.i__, align 4
  %133 = load i32, i32* @dlaswp_.k, align 4
  %134 = load i32, i32* %16, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32 %130, i32* %138, align 4
  %139 = load i32, i32* @dlaswp_.temp, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* @dlaswp_.ip, align 4
  %142 = load i32, i32* @dlaswp_.k, align 4
  %143 = load i32, i32* %16, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  store i32 %139, i32* %147, align 4
  br label %148

148:                                              ; preds = %112
  %149 = load i32, i32* @dlaswp_.k, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @dlaswp_.k, align 4
  br label %108

151:                                              ; preds = %108
  br label %152

152:                                              ; preds = %151, %95
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @dlaswp_.ix, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* @dlaswp_.ix, align 4
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @dlaswp_.i__, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* @dlaswp_.i__, align 4
  br label %79

161:                                              ; preds = %92
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* @dlaswp_.j, align 4
  %164 = add nsw i32 %163, 32
  store i32 %164, i32* @dlaswp_.j, align 4
  br label %70

165:                                              ; preds = %70
  br label %166

166:                                              ; preds = %165, %61
  %167 = load i32, i32* @dlaswp_.n32, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %261

171:                                              ; preds = %166
  %172 = load i32, i32* @dlaswp_.n32, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* @dlaswp_.n32, align 4
  %174 = load i32, i32* @dlaswp_.ix0, align 4
  store i32 %174, i32* @dlaswp_.ix, align 4
  %175 = load i32, i32* @dlaswp_.i2, align 4
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* @dlaswp_.inc, align 4
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* @dlaswp_.i1, align 4
  store i32 %177, i32* @dlaswp_.i__, align 4
  br label %178

178:                                              ; preds = %256, %171
  %179 = load i32, i32* %20, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* @dlaswp_.i__, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp sge i32 %182, %183
  %185 = zext i1 %184 to i32
  br label %191

186:                                              ; preds = %178
  %187 = load i32, i32* @dlaswp_.i__, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp sle i32 %187, %188
  %190 = zext i1 %189 to i32
  br label %191

191:                                              ; preds = %186, %181
  %192 = phi i32 [ %185, %181 ], [ %190, %186 ]
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %191
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* @dlaswp_.ix, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* @dlaswp_.ip, align 4
  %200 = load i32, i32* @dlaswp_.ip, align 4
  %201 = load i32, i32* @dlaswp_.i__, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %251

203:                                              ; preds = %194
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* @dlaswp_.n32, align 4
  store i32 %206, i32* @dlaswp_.k, align 4
  br label %207

207:                                              ; preds = %247, %203
  %208 = load i32, i32* @dlaswp_.k, align 4
  %209 = load i32, i32* %19, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %250

211:                                              ; preds = %207
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* @dlaswp_.i__, align 4
  %214 = load i32, i32* @dlaswp_.k, align 4
  %215 = load i32, i32* %16, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %212, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* @dlaswp_.temp, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* @dlaswp_.ip, align 4
  %223 = load i32, i32* @dlaswp_.k, align 4
  %224 = load i32, i32* %16, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %221, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %10, align 8
  %231 = load i32, i32* @dlaswp_.i__, align 4
  %232 = load i32, i32* @dlaswp_.k, align 4
  %233 = load i32, i32* %16, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  store i32 %229, i32* %237, align 4
  %238 = load i32, i32* @dlaswp_.temp, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* @dlaswp_.ip, align 4
  %241 = load i32, i32* @dlaswp_.k, align 4
  %242 = load i32, i32* %16, align 4
  %243 = mul nsw i32 %241, %242
  %244 = add nsw i32 %240, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %239, i64 %245
  store i32 %238, i32* %246, align 4
  br label %247

247:                                              ; preds = %211
  %248 = load i32, i32* @dlaswp_.k, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* @dlaswp_.k, align 4
  br label %207

250:                                              ; preds = %207
  br label %251

251:                                              ; preds = %250, %194
  %252 = load i32*, i32** %15, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @dlaswp_.ix, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* @dlaswp_.ix, align 4
  br label %256

256:                                              ; preds = %251
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* @dlaswp_.i__, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* @dlaswp_.i__, align 4
  br label %178

260:                                              ; preds = %191
  br label %261

261:                                              ; preds = %260, %166
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %261, %59
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
