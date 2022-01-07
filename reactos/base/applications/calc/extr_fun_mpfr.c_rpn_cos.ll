; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_cos.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpn_cos(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @validate_angle2rad(%struct.TYPE_6__* %7)
  %9 = call i32 @build_rad_const(i32* %3, i32* %4, i32* %5, i32* %6)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mpfr_cmp(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mpfr_cmp(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @rpn_zero(%struct.TYPE_6__* %24)
  br label %71

26:                                               ; preds = %16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mpfr_cmp(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %38 = call i32 @mpfr_set_si(i32 %36, i32 -1, i32 %37)
  br label %70

39:                                               ; preds = %26
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mpfr_cmp(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %51 = call i32 @mpfr_set_si(i32 %49, i32 1, i32 %50)
  br label %69

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %60 = call i32 @mpfr_cos(i32 %55, i32 %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mpfr_number_p(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %52
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 4
  br label %68

68:                                               ; preds = %66, %52
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @mpfr_clear(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @mpfr_clear(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mpfr_clear(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @mpfr_clear(i32 %78)
  ret void
}

declare dso_local i32 @validate_angle2rad(%struct.TYPE_6__*) #1

declare dso_local i32 @build_rad_const(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mpfr_cmp(i32, i32) #1

declare dso_local i32 @rpn_zero(%struct.TYPE_6__*) #1

declare dso_local i32 @mpfr_set_si(i32, i32, i32) #1

declare dso_local i32 @mpfr_cos(i32, i32, i32) #1

declare dso_local i32 @mpfr_number_p(i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
