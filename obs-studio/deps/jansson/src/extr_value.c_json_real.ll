; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_real.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32 }

@JSON_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_real(double %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = call i64 @isnan(double %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = call i64 @isinf(double %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32* null, i32** %2, align 8
  br label %28

13:                                               ; preds = %8
  %14 = call %struct.TYPE_3__* @jsonp_malloc(i32 16)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* @JSON_REAL, align 4
  %22 = call i32 @json_init(i32* %20, i32 %21)
  %23 = load double, double* %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store double %23, double* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %18, %17, %12
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

declare dso_local %struct.TYPE_3__* @jsonp_malloc(i32) #1

declare dso_local i32 @json_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
