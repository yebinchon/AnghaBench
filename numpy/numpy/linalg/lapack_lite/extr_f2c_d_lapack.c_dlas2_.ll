; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlas2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlas2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlas2_.c__ = internal global i32 0, align 4
@dlas2_.fa = internal global i32 0, align 4
@dlas2_.ga = internal global i32 0, align 4
@dlas2_.ha = internal global i32 0, align 4
@dlas2_.as = internal global i32 0, align 4
@dlas2_.at = internal global i32 0, align 4
@dlas2_.au = internal global i32 0, align 4
@dlas2_.fhmn = internal global i32 0, align 4
@dlas2_.fhmx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlas2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @abs(i32 %14) #3
  store i32 %15, i32* @dlas2_.fa, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @abs(i32 %17) #3
  store i32 %18, i32* @dlas2_.ga, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @abs(i32 %20) #3
  store i32 %21, i32* @dlas2_.ha, align 4
  %22 = load i32, i32* @dlas2_.fa, align 4
  %23 = load i32, i32* @dlas2_.ha, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* @dlas2_.fhmn, align 4
  %25 = load i32, i32* @dlas2_.fa, align 4
  %26 = load i32, i32* @dlas2_.ha, align 4
  %27 = call i32 @max(i32 %25, i32 %26)
  store i32 %27, i32* @dlas2_.fhmx, align 4
  %28 = load i32, i32* @dlas2_.fhmn, align 4
  %29 = sitofp i32 %28 to double
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %60

31:                                               ; preds = %5
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @dlas2_.fhmx, align 4
  %34 = sitofp i32 %33 to double
  %35 = fcmp oeq double %34, 0.000000e+00
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @dlas2_.ga, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %59

39:                                               ; preds = %31
  %40 = load i32, i32* @dlas2_.fhmx, align 4
  %41 = load i32, i32* @dlas2_.ga, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  %43 = load i32, i32* @dlas2_.fhmx, align 4
  %44 = load i32, i32* @dlas2_.ga, align 4
  %45 = call i32 @max(i32 %43, i32 %44)
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @dlas2_.fhmx, align 4
  %48 = load i32, i32* @dlas2_.ga, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sitofp i32 %52 to double
  %54 = fadd double %53, 1.000000e+00
  %55 = fptosi double %54 to i32
  %56 = call i32 @sqrt(i32 %55)
  %57 = mul nsw i32 %49, %56
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %39, %36
  br label %177

60:                                               ; preds = %5
  %61 = load i32, i32* @dlas2_.ga, align 4
  %62 = load i32, i32* @dlas2_.fhmx, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = load i32, i32* @dlas2_.fhmn, align 4
  %66 = load i32, i32* @dlas2_.fhmx, align 4
  %67 = sdiv i32 %65, %66
  %68 = sitofp i32 %67 to double
  %69 = fadd double %68, 1.000000e+00
  %70 = fptosi double %69 to i32
  store i32 %70, i32* @dlas2_.as, align 4
  %71 = load i32, i32* @dlas2_.fhmx, align 4
  %72 = load i32, i32* @dlas2_.fhmn, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* @dlas2_.fhmx, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* @dlas2_.at, align 4
  %76 = load i32, i32* @dlas2_.ga, align 4
  %77 = load i32, i32* @dlas2_.fhmx, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* @dlas2_.au, align 4
  %82 = load i32, i32* @dlas2_.as, align 4
  %83 = load i32, i32* @dlas2_.as, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* @dlas2_.au, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @sqrt(i32 %86)
  %88 = load i32, i32* @dlas2_.at, align 4
  %89 = load i32, i32* @dlas2_.at, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* @dlas2_.au, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @sqrt(i32 %92)
  %94 = add nsw i32 %87, %93
  %95 = sitofp i32 %94 to double
  %96 = fdiv double 2.000000e+00, %95
  %97 = fptosi double %96 to i32
  store i32 %97, i32* @dlas2_.c__, align 4
  %98 = load i32, i32* @dlas2_.fhmn, align 4
  %99 = load i32, i32* @dlas2_.c__, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @dlas2_.fhmx, align 4
  %103 = load i32, i32* @dlas2_.c__, align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  br label %176

106:                                              ; preds = %60
  %107 = load i32, i32* @dlas2_.fhmx, align 4
  %108 = load i32, i32* @dlas2_.ga, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* @dlas2_.au, align 4
  %110 = load i32, i32* @dlas2_.au, align 4
  %111 = sitofp i32 %110 to double
  %112 = fcmp oeq double %111, 0.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i32, i32* @dlas2_.fhmn, align 4
  %115 = load i32, i32* @dlas2_.fhmx, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* @dlas2_.ga, align 4
  %118 = sdiv i32 %116, %117
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @dlas2_.ga, align 4
  %121 = load i32*, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  br label %175

122:                                              ; preds = %106
  %123 = load i32, i32* @dlas2_.fhmn, align 4
  %124 = load i32, i32* @dlas2_.fhmx, align 4
  %125 = sdiv i32 %123, %124
  %126 = sitofp i32 %125 to double
  %127 = fadd double %126, 1.000000e+00
  %128 = fptosi double %127 to i32
  store i32 %128, i32* @dlas2_.as, align 4
  %129 = load i32, i32* @dlas2_.fhmx, align 4
  %130 = load i32, i32* @dlas2_.fhmn, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* @dlas2_.fhmx, align 4
  %133 = sdiv i32 %131, %132
  store i32 %133, i32* @dlas2_.at, align 4
  %134 = load i32, i32* @dlas2_.as, align 4
  %135 = load i32, i32* @dlas2_.au, align 4
  %136 = mul nsw i32 %134, %135
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @dlas2_.at, align 4
  %138 = load i32, i32* @dlas2_.au, align 4
  %139 = mul nsw i32 %137, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sitofp i32 %142 to double
  %144 = fadd double %143, 1.000000e+00
  %145 = fptosi double %144 to i32
  %146 = call i32 @sqrt(i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sitofp i32 %149 to double
  %151 = fadd double %150, 1.000000e+00
  %152 = fptosi double %151 to i32
  %153 = call i32 @sqrt(i32 %152)
  %154 = add nsw i32 %146, %153
  %155 = sitofp i32 %154 to double
  %156 = fdiv double 1.000000e+00, %155
  %157 = fptosi double %156 to i32
  store i32 %157, i32* @dlas2_.c__, align 4
  %158 = load i32, i32* @dlas2_.fhmn, align 4
  %159 = load i32, i32* @dlas2_.c__, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* @dlas2_.au, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %165
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @dlas2_.ga, align 4
  %170 = load i32, i32* @dlas2_.c__, align 4
  %171 = load i32, i32* @dlas2_.c__, align 4
  %172 = add nsw i32 %170, %171
  %173 = sdiv i32 %169, %172
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %122, %113
  br label %176

176:                                              ; preds = %175, %64
  br label %177

177:                                              ; preds = %176, %59
  ret i32 0
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @sqrt(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
