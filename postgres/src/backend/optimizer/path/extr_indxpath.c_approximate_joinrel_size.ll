; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_approximate_joinrel_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_approximate_joinrel_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, i32)* @approximate_joinrel_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @approximate_joinrel_size(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 1.000000e+00, double* %5, align 8
  store i32 -1, i32* %6, align 4
  br label %8

8:                                                ; preds = %43, %42, %30, %19, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @bms_next_member(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %8

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %8

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = call i64 @IS_DUMMY_REL(%struct.TYPE_5__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %8

43:                                               ; preds = %31
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fcmp ogt double %46, 0.000000e+00
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = load double, double* %5, align 8
  %54 = fmul double %53, %52
  store double %54, double* %5, align 8
  br label %8

55:                                               ; preds = %8
  %56 = load double, double* %5, align 8
  ret double %56
}

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
