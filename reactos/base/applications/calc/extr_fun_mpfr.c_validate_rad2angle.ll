; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_validate_rad2angle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_validate_rad2angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @validate_rad2angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_rad2angle(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @mpfr_init(i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mpfr_init(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  switch i32 %9, label %31 [
    i32 130, label %10
    i32 128, label %17
    i32 129, label %24
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %13 = call i32 @mpfr_set_ui(i32 %11, i32 180, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %16 = call i32 @mpfr_const_pi(i32 %14, i32 %15)
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %20 = call i32 @mpfr_set_ui(i32 %18, i32 1, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %23 = call i32 @mpfr_set_ui(i32 %21, i32 1, i32 %22)
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %27 = call i32 @mpfr_set_ui(i32 %25, i32 200, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %30 = call i32 @mpfr_const_pi(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %1, %24, %17, %10
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %40 = call i32 @mpfr_mul(i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %49 = call i32 @mpfr_div(i32 %43, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @mpfr_clear(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mpfr_clear(i32 %52)
  ret void
}

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_set_ui(i32, i32, i32) #1

declare dso_local i32 @mpfr_const_pi(i32, i32) #1

declare dso_local i32 @mpfr_mul(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_div(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
