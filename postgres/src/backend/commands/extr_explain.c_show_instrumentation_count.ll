; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_instrumentation_count.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_instrumentation_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double, double, double }
%struct.TYPE_9__ = type { i64, i32 }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_8__*, %struct.TYPE_9__*)* @show_instrumentation_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_instrumentation_count(i8* %0, i32 %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  br label %65

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %9, align 8
  br label %36

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  store double %35, double* %9, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  store double %41, double* %10, align 8
  %42 = load double, double* %9, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44, %36
  %51 = load double, double* %10, align 8
  %52 = fcmp ogt double %51, 0.000000e+00
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = load double, double* %9, align 8
  %56 = load double, double* %10, align 8
  %57 = fdiv double %55, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = call i32 @ExplainPropertyFloat(i8* %54, i32* null, double %57, i32 0, %struct.TYPE_9__* %58)
  br label %64

60:                                               ; preds = %50
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = call i32 @ExplainPropertyFloat(i8* %61, i32* null, double 0.000000e+00, i32 0, %struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %20, %64, %44
  ret void
}

declare dso_local i32 @ExplainPropertyFloat(i8*, i32*, double, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
