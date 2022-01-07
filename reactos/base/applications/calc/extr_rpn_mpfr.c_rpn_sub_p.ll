; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_rpn_sub_p.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_rpn_sub_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @rpn_sub_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpn_sub_p(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mpfr_init(i32 %8)
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %15 = call i32 @mpfr_set(i32 %10, i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %19 = call i32 @mpfr_div_ui(i32 %16, i32 %17, i32 100, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %23 = call i32 @mpfr_sub_ui(i32 %20, i32 %21, i32 1, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %32 = call i32 @mpfr_mul(i32 %26, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mpfr_clear(i32 %33)
  ret void
}

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_set(i32, i32, i32) #1

declare dso_local i32 @mpfr_div_ui(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_sub_ui(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_mul(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
