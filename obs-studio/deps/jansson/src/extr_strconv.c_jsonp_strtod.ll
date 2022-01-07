; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strconv.c_jsonp_strtod.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strconv.c_jsonp_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@errno = common dso_local global i64 0, align 8
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonp_strtod(%struct.TYPE_4__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double* %1, double** %5, align 8
  store i64 0, i64* @errno, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call double @strtod(i32 %10, i8** %7)
  store double %11, double* %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = icmp eq i8* %12, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load double, double* %6, align 8
  %25 = load double, double* @HUGE_VAL, align 8
  %26 = fcmp oeq double %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load double, double* %6, align 8
  %29 = load double, double* @HUGE_VAL, align 8
  %30 = fneg double %29
  %31 = fcmp oeq double %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %2
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ERANGE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %40

37:                                               ; preds = %32, %27
  %38 = load double, double* %6, align 8
  %39 = load double*, double** %5, align 8
  store double %38, double* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local double @strtod(i32, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
