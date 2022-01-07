; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgehd2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgehd2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgehd2_.i__ = internal global i32 0, align 4
@sgehd2_.aii = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGEHD2\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgehd2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 -1
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %17, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32*, i32** %17, align 8
  store i32 -1, i32* %41, align 4
  br label %84

42:                                               ; preds = %8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 1, i32 %50)
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %42
  %54 = load i32*, i32** %17, align 8
  store i32 -2, i32* %54, align 4
  br label %83

55:                                               ; preds = %46
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @min(i32 %59, i32 %61)
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %55
  %71 = load i32*, i32** %17, align 8
  store i32 -3, i32* %71, align 4
  br label %82

72:                                               ; preds = %64
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @max(i32 1, i32 %76)
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32*, i32** %17, align 8
  store i32 -5, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %72
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32*, i32** %17, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %20, align 4
  %92 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %233

93:                                               ; preds = %84
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* @sgehd2_.i__, align 4
  br label %99

99:                                               ; preds = %229, %93
  %100 = load i32, i32* @sgehd2_.i__, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %232

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @sgehd2_.i__, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* @sgehd2_.i__, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %22, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @sgehd2_.i__, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* @sgehd2_.i__, align 4
  %114 = load i32, i32* %18, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @min(i32 %120, i32 %122)
  %124 = load i32, i32* @sgehd2_.i__, align 4
  %125 = load i32, i32* %18, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %119, i64 %128
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* @sgehd2_.i__, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 @slarfg_(i32* %21, i32* %118, i32* %129, i32* @c__1, i32* %133)
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @sgehd2_.i__, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* @sgehd2_.i__, align 4
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %137, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %135, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* @sgehd2_.aii, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* @sgehd2_.i__, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* @sgehd2_.i__, align 4
  %149 = load i32, i32* %18, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %145, i64 %152
  store i32 1, i32* %153, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @sgehd2_.i__, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %21, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* @sgehd2_.i__, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* @sgehd2_.i__, align 4
  %163 = load i32, i32* %18, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %161, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %159, i64 %166
  %168 = load i32*, i32** %15, align 8
  %169 = load i32, i32* @sgehd2_.i__, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* @sgehd2_.i__, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %172, i64 %178
  %180 = load i32*, i32** %14, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = call i32 @slarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %158, i32* %21, i32* %167, i32* @c__1, i32* %171, i32* %179, i32* %180, i32* %182)
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @sgehd2_.i__, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %21, align 4
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @sgehd2_.i__, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %22, align 4
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* @sgehd2_.i__, align 4
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* @sgehd2_.i__, align 4
  %196 = load i32, i32* %18, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %192, i64 %199
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* @sgehd2_.i__, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* @sgehd2_.i__, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* @sgehd2_.i__, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* %18, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %207, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %205, i64 %213
  %215 = load i32*, i32** %14, align 8
  %216 = load i32*, i32** %16, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = call i32 @slarf_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %21, i32* %22, i32* %200, i32* @c__1, i32* %204, i32* %214, i32* %215, i32* %217)
  %219 = load i32, i32* @sgehd2_.aii, align 4
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* @sgehd2_.i__, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i32, i32* @sgehd2_.i__, align 4
  %224 = load i32, i32* %18, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %220, i64 %227
  store i32 %219, i32* %228, align 4
  br label %229

229:                                              ; preds = %103
  %230 = load i32, i32* @sgehd2_.i__, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* @sgehd2_.i__, align 4
  br label %99

232:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %232, %88
  %234 = load i32, i32* %9, align 4
  ret i32 %234
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @slarfg_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarf_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
