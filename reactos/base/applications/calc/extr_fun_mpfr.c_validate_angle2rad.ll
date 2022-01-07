; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_validate_angle2rad.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_validate_angle2rad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @validate_angle2rad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_angle2rad(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mpfr_number_p(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 4
  br label %62

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mpfr_init(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mpfr_init(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  switch i32 %17, label %39 [
    i32 130, label %18
    i32 128, label %25
    i32 129, label %32
  ]

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %21 = call i32 @mpfr_const_pi(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %24 = call i32 @mpfr_set_ui(i32 %22, i32 180, i32 %23)
  br label %39

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %28 = call i32 @mpfr_set_ui(i32 %26, i32 1, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %31 = call i32 @mpfr_set_ui(i32 %29, i32 1, i32 %30)
  br label %39

32:                                               ; preds = %12
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %35 = call i32 @mpfr_const_pi(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %38 = call i32 @mpfr_set_ui(i32 %36, i32 200, i32 %37)
  br label %39

39:                                               ; preds = %12, %32, %25, %18
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %48 = call i32 @mpfr_mul(i32 %42, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %57 = call i32 @mpfr_div(i32 %51, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @mpfr_clear(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @mpfr_clear(i32 %60)
  br label %62

62:                                               ; preds = %39, %10
  ret void
}

declare dso_local i32 @mpfr_number_p(i32) #1

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_const_pi(i32, i32) #1

declare dso_local i32 @mpfr_set_ui(i32, i32, i32) #1

declare dso_local i32 @mpfr_mul(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_div(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
