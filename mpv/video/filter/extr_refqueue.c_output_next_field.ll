; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_output_next_field.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_output_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_refqueue = type { i32, i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { double }

@MP_MODE_OUTPUT_FIELDS = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_refqueue*)* @output_next_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_next_field(%struct.mp_refqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_refqueue*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.mp_refqueue* %0, %struct.mp_refqueue** %3, align 8
  %7 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %8 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %14 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MP_MODE_OUTPUT_FIELDS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %93

20:                                               ; preds = %12
  %21 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %22 = call i32 @mp_refqueue_should_deint(%struct.mp_refqueue* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %93

25:                                               ; preds = %20
  %26 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %27 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %33 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %93

37:                                               ; preds = %25
  %38 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %39 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %42 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  store double %47, double* %4, align 8
  %48 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %49 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %52 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  store double %58, double* %5, align 8
  %59 = load double, double* %4, align 8
  %60 = load double, double* @MP_NOPTS_VALUE, align 8
  %61 = fcmp oeq double %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %37
  %63 = load double, double* %5, align 8
  %64 = load double, double* @MP_NOPTS_VALUE, align 8
  %65 = fcmp oeq double %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %37
  store i32 0, i32* %2, align 4
  br label %93

67:                                               ; preds = %62
  %68 = load double, double* %5, align 8
  %69 = load double, double* %4, align 8
  %70 = fsub double %68, %69
  store double %70, double* %6, align 8
  %71 = load double, double* %6, align 8
  %72 = fcmp ole double %71, 0.000000e+00
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load double, double* %6, align 8
  %75 = fcmp oge double %74, 1.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %67
  store i32 0, i32* %2, align 4
  br label %93

77:                                               ; preds = %73
  %78 = load double, double* %4, align 8
  %79 = load double, double* %6, align 8
  %80 = fdiv double %79, 2.000000e+00
  %81 = fadd double %78, %80
  %82 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %83 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %83, align 8
  %85 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %86 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %84, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store double %81, double* %90, align 8
  %91 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %92 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %77, %76, %66, %36, %24, %19, %11
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @mp_refqueue_should_deint(%struct.mp_refqueue*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
