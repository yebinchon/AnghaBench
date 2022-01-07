; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dtrti2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dtrti2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrti2_.j = internal global i32 0, align 4
@dtrti2_.ajj = internal global i32 0, align 4
@dtrti2_.upper = internal global i8* null, align 8
@dtrti2_.nounit = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DTRTI2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrti2_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 1, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = sext i32 %22 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %13, align 8
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @lsame_(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** @dtrti2_.upper, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @lsame_(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** @dtrti2_.nounit, align 8
  %32 = load i8*, i8** @dtrti2_.upper, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %6
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  store i32 -1, i32* %39, align 4
  br label %67

40:                                               ; preds = %34, %6
  %41 = load i8*, i8** @dtrti2_.nounit, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @lsame_(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  store i32 -2, i32* %48, align 4
  br label %66

49:                                               ; preds = %43, %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32*, i32** %13, align 8
  store i32 -3, i32* %54, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @max(i32 1, i32 %59)
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %13, align 8
  store i32 -5, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  %75 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %245

76:                                               ; preds = %67
  %77 = load i8*, i8** @dtrti2_.upper, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %152

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  store i32 1, i32* @dtrti2_.j, align 4
  br label %82

82:                                               ; preds = %148, %79
  %83 = load i32, i32* @dtrti2_.j, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %151

86:                                               ; preds = %82
  %87 = load i8*, i8** @dtrti2_.nounit, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @dtrti2_.j, align 4
  %92 = load i32, i32* @dtrti2_.j, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double 1.000000e+00, %99
  %101 = fptosi double %100 to i32
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @dtrti2_.j, align 4
  %104 = load i32, i32* @dtrti2_.j, align 4
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  store i32 %101, i32* %109, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* @dtrti2_.j, align 4
  %112 = load i32, i32* @dtrti2_.j, align 4
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* @dtrti2_.ajj, align 4
  br label %121

120:                                              ; preds = %86
  store i32 -1, i32* @dtrti2_.ajj, align 4
  br label %121

121:                                              ; preds = %120, %89
  %122 = load i32, i32* @dtrti2_.j, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* @dtrti2_.j, align 4
  %132 = load i32, i32* %14, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = call i32 @dtrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %124, i32* %17, i32* %128, i32* %129, i32* %136, i32* @c__1)
  %138 = load i32, i32* @dtrti2_.j, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* @dtrti2_.j, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  %147 = call i32 @dscal_(i32* %17, i32* @dtrti2_.ajj, i32* %146, i32* @c__1)
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* @dtrti2_.j, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @dtrti2_.j, align 4
  br label %82

151:                                              ; preds = %82
  br label %244

152:                                              ; preds = %76
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* @dtrti2_.j, align 4
  br label %155

155:                                              ; preds = %240, %152
  %156 = load i32, i32* @dtrti2_.j, align 4
  %157 = icmp sge i32 %156, 1
  br i1 %157, label %158, label %243

158:                                              ; preds = %155
  %159 = load i8*, i8** @dtrti2_.nounit, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %158
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* @dtrti2_.j, align 4
  %164 = load i32, i32* @dtrti2_.j, align 4
  %165 = load i32, i32* %14, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sitofp i32 %170 to double
  %172 = fdiv double 1.000000e+00, %171
  %173 = fptosi double %172 to i32
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* @dtrti2_.j, align 4
  %176 = load i32, i32* @dtrti2_.j, align 4
  %177 = load i32, i32* %14, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %174, i64 %180
  store i32 %173, i32* %181, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* @dtrti2_.j, align 4
  %184 = load i32, i32* @dtrti2_.j, align 4
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %183, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* @dtrti2_.ajj, align 4
  br label %193

192:                                              ; preds = %158
  store i32 -1, i32* @dtrti2_.ajj, align 4
  br label %193

193:                                              ; preds = %192, %161
  %194 = load i32, i32* @dtrti2_.j, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %239

198:                                              ; preds = %193
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @dtrti2_.j, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %16, align 4
  %203 = load i8*, i8** %9, align 8
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* @dtrti2_.j, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @dtrti2_.j, align 4
  %208 = add nsw i32 %207, 1
  %209 = load i32, i32* %14, align 4
  %210 = mul nsw i32 %208, %209
  %211 = add nsw i32 %206, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %204, i64 %212
  %214 = load i32*, i32** %12, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* @dtrti2_.j, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* @dtrti2_.j, align 4
  %219 = load i32, i32* %14, align 4
  %220 = mul nsw i32 %218, %219
  %221 = add nsw i32 %217, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %215, i64 %222
  %224 = call i32 @dtrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %203, i32* %16, i32* %213, i32* %214, i32* %223, i32* @c__1)
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @dtrti2_.j, align 4
  %228 = sub nsw i32 %226, %227
  store i32 %228, i32* %16, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = load i32, i32* @dtrti2_.j, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* @dtrti2_.j, align 4
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %229, i64 %236
  %238 = call i32 @dscal_(i32* %16, i32* @dtrti2_.ajj, i32* %237, i32* @c__1)
  br label %239

239:                                              ; preds = %198, %193
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* @dtrti2_.j, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* @dtrti2_.j, align 4
  br label %155

243:                                              ; preds = %155
  br label %244

244:                                              ; preds = %243, %151
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %244, %71
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dtrmv_(i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dscal_(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
