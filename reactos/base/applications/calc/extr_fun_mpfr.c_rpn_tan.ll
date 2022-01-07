; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_tan.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@calc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpn_tan(%struct.TYPE_6__* %0) #0 {
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
  br i1 %22, label %25, label %23

23:                                               ; preds = %16, %1
  %24 = load i8*, i8** @TRUE, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 8
  br label %60

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mpfr_cmp(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mpfr_cmp(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = call i32 @rpn_zero(%struct.TYPE_6__* %40)
  br label %59

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %50 = call i32 @mpfr_tan(i32 %45, i32 %48, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mpfr_number_p(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %42
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %56, %42
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @mpfr_clear(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mpfr_clear(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mpfr_clear(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @mpfr_clear(i32 %67)
  ret void
}

declare dso_local i32 @validate_angle2rad(%struct.TYPE_6__*) #1

declare dso_local i32 @build_rad_const(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mpfr_cmp(i32, i32) #1

declare dso_local i32 @rpn_zero(%struct.TYPE_6__*) #1

declare dso_local i32 @mpfr_tan(i32, i32, i32) #1

declare dso_local i32 @mpfr_number_p(i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
