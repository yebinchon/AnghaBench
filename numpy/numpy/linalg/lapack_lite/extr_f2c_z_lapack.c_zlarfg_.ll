; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlarfg_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlarfg_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@zlarfg_.j = internal global i32 0, align 4
@zlarfg_.knt = internal global i32 0, align 4
@zlarfg_.beta = internal global i32 0, align 4
@zlarfg_.alphi = internal global i32 0, align 4
@zlarfg_.alphr = internal global i32 0, align 4
@zlarfg_.xnorm = internal global i32 0, align 4
@zlarfg_.safmin = internal global i32 0, align 4
@zlarfg_.rsafmn = internal global i32 0, align 4
@SAFEMINIMUM = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@c_b57 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlarfg_(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 -1
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %183

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 1
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @dznrm2_(i32* %12, %struct.TYPE_8__* %32, i32* %33)
  store i32 %34, i32* @zlarfg_.xnorm, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @zlarfg_.alphr, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = call i32 @d_imag(%struct.TYPE_8__* %38)
  store i32 %39, i32* @zlarfg_.alphi, align 4
  %40 = load i32, i32* @zlarfg_.xnorm, align 4
  %41 = sitofp i32 %40 to double
  %42 = fcmp oeq double %41, 0.000000e+00
  br i1 %42, label %43, label %52

43:                                               ; preds = %27
  %44 = load i32, i32* @zlarfg_.alphi, align 4
  %45 = sitofp i32 %44 to double
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %182

52:                                               ; preds = %43, %27
  %53 = call i32 @dlapy3_(i32* @zlarfg_.alphr, i32* @zlarfg_.alphi, i32* @zlarfg_.xnorm)
  store i32 %53, i32* %13, align 4
  %54 = call i32 @d_sign(i32* %13, i32* @zlarfg_.alphr)
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* @zlarfg_.beta, align 4
  %56 = load i32, i32* @SAFEMINIMUM, align 4
  %57 = load i32, i32* @EPSILON, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* @zlarfg_.safmin, align 4
  %59 = load i32, i32* @zlarfg_.safmin, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double 1.000000e+00, %60
  %62 = fptosi double %61 to i32
  store i32 %62, i32* @zlarfg_.rsafmn, align 4
  store i32 0, i32* @zlarfg_.knt, align 4
  %63 = load i32, i32* @zlarfg_.beta, align 4
  %64 = call i32 @abs(i32 %63) #3
  %65 = load i32, i32* @zlarfg_.safmin, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i32, i32* @zlarfg_.knt, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @zlarfg_.knt, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 1
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @zdscal_(i32* %12, i32* @zlarfg_.rsafmn, %struct.TYPE_8__* %75, i32* %76)
  %78 = load i32, i32* @zlarfg_.rsafmn, align 4
  %79 = load i32, i32* @zlarfg_.beta, align 4
  %80 = mul nsw i32 %79, %78
  store i32 %80, i32* @zlarfg_.beta, align 4
  %81 = load i32, i32* @zlarfg_.rsafmn, align 4
  %82 = load i32, i32* @zlarfg_.alphi, align 4
  %83 = mul nsw i32 %82, %81
  store i32 %83, i32* @zlarfg_.alphi, align 4
  %84 = load i32, i32* @zlarfg_.rsafmn, align 4
  %85 = load i32, i32* @zlarfg_.alphr, align 4
  %86 = mul nsw i32 %85, %84
  store i32 %86, i32* @zlarfg_.alphr, align 4
  %87 = load i32, i32* @zlarfg_.beta, align 4
  %88 = call i32 @abs(i32 %87) #3
  %89 = load i32, i32* @zlarfg_.safmin, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %68

92:                                               ; preds = %68
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 1
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @dznrm2_(i32* %12, %struct.TYPE_8__* %97, i32* %98)
  store i32 %99, i32* @zlarfg_.xnorm, align 4
  %100 = load i32, i32* @zlarfg_.alphr, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @zlarfg_.alphi, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = call i32 @dlapy3_(i32* @zlarfg_.alphr, i32* @zlarfg_.alphi, i32* @zlarfg_.xnorm)
  store i32 %112, i32* %13, align 4
  %113 = call i32 @d_sign(i32* %13, i32* @zlarfg_.alphr)
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* @zlarfg_.beta, align 4
  br label %115

115:                                              ; preds = %92, %52
  %116 = load i32, i32* @zlarfg_.beta, align 4
  %117 = load i32, i32* @zlarfg_.alphr, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* @zlarfg_.beta, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* @zlarfg_.alphi, align 4
  %122 = sub nsw i32 0, %121
  %123 = load i32, i32* @zlarfg_.beta, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %14, align 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @zlarfg_.beta, align 4
  %141 = sub nsw i32 %139, %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %145, i32* %146, align 4
  %147 = call i32 @zladiv_(%struct.TYPE_8__* %15, %struct.TYPE_8__* @c_b57, %struct.TYPE_8__* %16)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 1
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @zscal_(i32* %12, %struct.TYPE_8__* %159, %struct.TYPE_8__* %161, i32* %162)
  %164 = load i32, i32* @zlarfg_.knt, align 4
  store i32 %164, i32* %12, align 4
  store i32 1, i32* @zlarfg_.j, align 4
  br label %165

165:                                              ; preds = %173, %115
  %166 = load i32, i32* @zlarfg_.j, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* @zlarfg_.safmin, align 4
  %171 = load i32, i32* @zlarfg_.beta, align 4
  %172 = mul nsw i32 %171, %170
  store i32 %172, i32* @zlarfg_.beta, align 4
  br label %173

173:                                              ; preds = %169
  %174 = load i32, i32* @zlarfg_.j, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @zlarfg_.j, align 4
  br label %165

176:                                              ; preds = %165
  %177 = load i32, i32* @zlarfg_.beta, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %47
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %22
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @dznrm2_(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @d_imag(%struct.TYPE_8__*) #1

declare dso_local i32 @dlapy3_(i32*, i32*, i32*) #1

declare dso_local i32 @d_sign(i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @zdscal_(i32*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @zladiv_(%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @zscal_(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
