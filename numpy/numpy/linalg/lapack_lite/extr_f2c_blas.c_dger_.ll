; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dger_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dger_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dger_.i__ = internal global i32 0, align 4
@dger_.j = internal global i32 0, align 4
@dger_.ix = internal global i32 0, align 4
@dger_.jy = internal global i32 0, align 4
@dger_.kx = internal global i32 0, align 4
@dger_.info = internal global i32 0, align 4
@dger_.temp = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGER  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dger_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 -1
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 -1
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load i32*, i32** %18, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %18, align 8
  store i32 0, i32* @dger_.info, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  store i32 1, i32* @dger_.info, align 4
  br label %68

41:                                               ; preds = %9
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 2, i32* @dger_.info, align 4
  br label %67

46:                                               ; preds = %41
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 5, i32* @dger_.info, align 4
  br label %66

51:                                               ; preds = %46
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 7, i32* @dger_.info, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %19, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 9, i32* @dger_.info, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* @dger_.info, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @dger_.info)
  store i32 0, i32* %10, align 4
  br label %245

73:                                               ; preds = %68
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to double
  %85 = fcmp oeq double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %77, %73
  store i32 0, i32* %10, align 4
  br label %245

87:                                               ; preds = %81
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1, i32* @dger_.jy, align 4
  br label %100

92:                                               ; preds = %87
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %95, %97
  %99 = sub nsw i32 1, %98
  store i32 %99, i32* @dger_.jy, align 4
  br label %100

100:                                              ; preds = %92, %91
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %165

104:                                              ; preds = %100
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  store i32 1, i32* @dger_.j, align 4
  br label %107

107:                                              ; preds = %161, %104
  %108 = load i32, i32* @dger_.j, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* @dger_.jy, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to double
  %118 = fcmp une double %117, 0.000000e+00
  br i1 %118, label %119, label %156

119:                                              ; preds = %111
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* @dger_.jy, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %121, %126
  store i32 %127, i32* @dger_.temp, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %23, align 4
  store i32 1, i32* @dger_.i__, align 4
  br label %130

130:                                              ; preds = %152, %119
  %131 = load i32, i32* @dger_.i__, align 4
  %132 = load i32, i32* %23, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* @dger_.i__, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @dger_.temp, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32*, i32** %18, align 8
  %143 = load i32, i32* @dger_.i__, align 4
  %144 = load i32, i32* @dger_.j, align 4
  %145 = load i32, i32* %20, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %141
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %134
  %153 = load i32, i32* @dger_.i__, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @dger_.i__, align 4
  br label %130

155:                                              ; preds = %130
  br label %156

156:                                              ; preds = %155, %111
  %157 = load i32*, i32** %17, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @dger_.jy, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* @dger_.jy, align 4
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @dger_.j, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @dger_.j, align 4
  br label %107

164:                                              ; preds = %107
  br label %244

165:                                              ; preds = %100
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 1, i32* @dger_.kx, align 4
  br label %178

170:                                              ; preds = %165
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %173, %175
  %177 = sub nsw i32 1, %176
  store i32 %177, i32* @dger_.kx, align 4
  br label %178

178:                                              ; preds = %170, %169
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %22, align 4
  store i32 1, i32* @dger_.j, align 4
  br label %181

181:                                              ; preds = %240, %178
  %182 = load i32, i32* @dger_.j, align 4
  %183 = load i32, i32* %22, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %243

185:                                              ; preds = %181
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* @dger_.jy, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sitofp i32 %190 to double
  %192 = fcmp une double %191, 0.000000e+00
  br i1 %192, label %193, label %235

193:                                              ; preds = %185
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* @dger_.jy, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %195, %200
  store i32 %201, i32* @dger_.temp, align 4
  %202 = load i32, i32* @dger_.kx, align 4
  store i32 %202, i32* @dger_.ix, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %23, align 4
  store i32 1, i32* @dger_.i__, align 4
  br label %205

205:                                              ; preds = %231, %193
  %206 = load i32, i32* @dger_.i__, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %234

209:                                              ; preds = %205
  %210 = load i32*, i32** %14, align 8
  %211 = load i32, i32* @dger_.ix, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @dger_.temp, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32*, i32** %18, align 8
  %218 = load i32, i32* @dger_.i__, align 4
  %219 = load i32, i32* @dger_.j, align 4
  %220 = load i32, i32* %20, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %218, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %216
  store i32 %226, i32* %224, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @dger_.ix, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* @dger_.ix, align 4
  br label %231

231:                                              ; preds = %209
  %232 = load i32, i32* @dger_.i__, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @dger_.i__, align 4
  br label %205

234:                                              ; preds = %205
  br label %235

235:                                              ; preds = %234, %185
  %236 = load i32*, i32** %17, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @dger_.jy, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* @dger_.jy, align 4
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* @dger_.j, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* @dger_.j, align 4
  br label %181

243:                                              ; preds = %181
  br label %244

244:                                              ; preds = %243, %164
  store i32 0, i32* %10, align 4
  br label %245

245:                                              ; preds = %244, %86, %71
  %246 = load i32, i32* %10, align 4
  ret i32 %246
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
