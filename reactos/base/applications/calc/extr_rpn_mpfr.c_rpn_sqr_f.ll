; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_rpn_sqr_f.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_rpn_sqr_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @rpn_sqr_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpn_sqr_f(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @mpfr_sgn(i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 4
  br label %39

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mpfr_init(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %23 = call i32 @mpfr_set(i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %27 = call i32 @mpfr_ui_div(i32 %24, i32 1, i32 %25, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %36 = call i32 @mpfr_pow(i32 %30, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mpfr_clear(i32 %37)
  br label %39

39:                                               ; preds = %15, %13
  ret void
}

declare dso_local i64 @mpfr_sgn(i32) #1

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_set(i32, i32, i32) #1

declare dso_local i32 @mpfr_ui_div(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_pow(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
