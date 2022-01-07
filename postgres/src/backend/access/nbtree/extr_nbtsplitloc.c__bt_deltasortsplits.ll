; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_deltasortsplits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_deltasortsplits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double, double, double }

@_bt_splitcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double, i32)* @_bt_deltasortsplits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_deltasortsplits(%struct.TYPE_6__* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %56, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load double, double* %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = load double, double* %5, align 8
  %32 = fsub double 1.000000e+00, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fmul double %32, %35
  %37 = fsub double %30, %36
  store double %37, double* %9, align 8
  br label %46

38:                                               ; preds = %16
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fsub double %41, %44
  store double %45, double* %9, align 8
  br label %46

46:                                               ; preds = %38, %25
  %47 = load double, double* %9, align 8
  %48 = fcmp olt double %47, 0.000000e+00
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load double, double* %9, align 8
  %51 = fneg double %50
  store double %51, double* %9, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load double, double* %9, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store double %53, double* %55, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %10

59:                                               ; preds = %10
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @_bt_splitcmp, align 4
  %67 = call i32 @qsort(%struct.TYPE_5__* %62, i32 %65, i32 24, i32 %66)
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
