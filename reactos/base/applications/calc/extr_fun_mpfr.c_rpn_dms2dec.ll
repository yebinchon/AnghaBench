; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_dms2dec.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_dms2dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpn_dms2dec(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @mpfr_init(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mpfr_init(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @mpfr_init(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mpfr_trunc(i32 %12, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %22 = call i32 @mpfr_frac(i32 %17, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %26 = call i32 @mpfr_mul_ui(i32 %23, i32 %24, i32 100, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %30 = call i32 @mpfr_frac(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mpfr_trunc(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %37 = call i32 @mpfr_mul_ui(i32 %34, i32 %35, i32 100, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mpfr_ceil(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %44 = call i32 @mpfr_div_ui(i32 %41, i32 %42, i32 60, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %48 = call i32 @mpfr_div_ui(i32 %45, i32 %46, i32 3600, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %55 = call i32 @mpfr_add(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %64 = call i32 @mpfr_add(i32 %58, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @mpfr_clear(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @mpfr_clear(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @mpfr_clear(i32 %69)
  ret void
}

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_trunc(i32, i32) #1

declare dso_local i32 @mpfr_frac(i32, i32, i32) #1

declare dso_local i32 @mpfr_mul_ui(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_ceil(i32, i32) #1

declare dso_local i32 @mpfr_div_ui(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_add(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
