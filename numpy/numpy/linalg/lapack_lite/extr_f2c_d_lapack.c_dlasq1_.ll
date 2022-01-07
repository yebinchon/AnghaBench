; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasq1_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasq1_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlasq1_.i__ = internal global i32 0, align 4
@dlasq1_.eps = internal global i32 0, align 4
@dlasq1_.scale = internal global i32 0, align 4
@dlasq1_.iinfo = internal global i32 0, align 4
@dlasq1_.sigmn = internal global i32 0, align 4
@dlasq1_.sigmx = internal global i32 0, align 4
@dlasq1_.safmin = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DLASQ1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@PRECISION = common dso_local global i32 0, align 4
@SAFEMINIMUM = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlasq1_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 -1
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i32*, i32** %11, align 8
  store i32 -2, i32* %28, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 0, i32* %6, align 4
  br label %245

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %245

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @abs(i32 %45) #3
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %245

49:                                               ; preds = %38
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = call i32 @dlas2_(i32* %55, i32* %57, i32* %59, i32* @dlasq1_.sigmn, i32* @dlasq1_.sigmx)
  %61 = load i32, i32* @dlasq1_.sigmx, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @dlasq1_.sigmn, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %245

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  store i32 0, i32* @dlasq1_.sigmx, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  store i32 1, i32* @dlasq1_.i__, align 4
  br label %74

74:                                               ; preds = %101, %70
  %75 = load i32, i32* @dlasq1_.i__, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @dlasq1_.i__, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @abs(i32 %84) #3
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @dlasq1_.i__, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @dlasq1_.sigmx, align 4
  store i32 %90, i32* %15, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* @dlasq1_.i__, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @abs(i32 %96) #3
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @max(i32 %98, i32 %99)
  store i32 %100, i32* @dlasq1_.sigmx, align 4
  br label %101

101:                                              ; preds = %78
  %102 = load i32, i32* @dlasq1_.i__, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @dlasq1_.i__, align 4
  br label %74

104:                                              ; preds = %74
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @abs(i32 %111) #3
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* @dlasq1_.sigmx, align 4
  %119 = sitofp i32 %118 to double
  %120 = fcmp oeq double %119, 0.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = call i32 @dlasrt_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %122, i32* %124, i32* @dlasq1_.iinfo)
  store i32 0, i32* %6, align 4
  br label %245

126:                                              ; preds = %104
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %12, align 4
  store i32 1, i32* @dlasq1_.i__, align 4
  br label %129

129:                                              ; preds = %143, %126
  %130 = load i32, i32* @dlasq1_.i__, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* @dlasq1_.sigmx, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* @dlasq1_.i__, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @max(i32 %140, i32 %141)
  store i32 %142, i32* @dlasq1_.sigmx, align 4
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* @dlasq1_.i__, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @dlasq1_.i__, align 4
  br label %129

146:                                              ; preds = %129
  %147 = load i32, i32* @PRECISION, align 4
  store i32 %147, i32* @dlasq1_.eps, align 4
  %148 = load i32, i32* @SAFEMINIMUM, align 4
  store i32 %148, i32* @dlasq1_.safmin, align 4
  %149 = load i32, i32* @dlasq1_.eps, align 4
  %150 = load i32, i32* @dlasq1_.safmin, align 4
  %151 = sdiv i32 %149, %150
  %152 = call i32 @sqrt(i32 %151)
  store i32 %152, i32* @dlasq1_.scale, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = call i32 @dcopy_(i32* %153, i32* %155, i32* @c__1, i32* %157, i32* @c__2)
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = call i32 @dcopy_(i32* %12, i32* %163, i32* @c__1, i32* %165, i32* @c__2)
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 1
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 1
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = call i32 @dlascl_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* @c__0, i32* @c__0, i32* @dlasq1_.sigmx, i32* @dlasq1_.scale, i32* %12, i32* @c__1, i32* %176, i32* %13, i32* @dlasq1_.iinfo)
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 1
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  store i32 1, i32* @dlasq1_.i__, align 4
  br label %182

182:                                              ; preds = %199, %146
  %183 = load i32, i32* @dlasq1_.i__, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* @dlasq1_.i__, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* @dlasq1_.i__, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %186
  %200 = load i32, i32* @dlasq1_.i__, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @dlasq1_.i__, align 4
  br label %182

202:                                              ; preds = %182
  %203 = load i32*, i32** %10, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  store i32 0, i32* %208, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32*, i32** %11, align 8
  %213 = call i32 @dlasq2_(i32* %209, i32* %211, i32* %212)
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %202
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %12, align 4
  store i32 1, i32* @dlasq1_.i__, align 4
  br label %220

220:                                              ; preds = %235, %217
  %221 = load i32, i32* @dlasq1_.i__, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* @dlasq1_.i__, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @sqrt(i32 %229)
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* @dlasq1_.i__, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %224
  %236 = load i32, i32* @dlasq1_.i__, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @dlasq1_.i__, align 4
  br label %220

238:                                              ; preds = %220
  %239 = load i32*, i32** %7, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32*, i32** %7, align 8
  %243 = call i32 @dlascl_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* @c__0, i32* @c__0, i32* @dlasq1_.scale, i32* @dlasq1_.sigmx, i32* %239, i32* @c__1, i32* %241, i32* %242, i32* @dlasq1_.iinfo)
  br label %244

244:                                              ; preds = %238, %202
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %244, %121, %53, %42, %37, %27
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local i32 @xerbla_(i8*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dlas2_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dlasrt_(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @dcopy_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlascl_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlasq2_(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
