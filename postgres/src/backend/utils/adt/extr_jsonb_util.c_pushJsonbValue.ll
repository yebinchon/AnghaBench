; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_pushJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_pushJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@WJB_ELEM = common dso_local global i64 0, align 8
@WJB_VALUE = common dso_local global i64 0, align 8
@jbvBinary = common dso_local global i64 0, align 8
@WJB_DONE = common dso_local global i64 0, align 8
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @pushJsonbValue(i32** %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @WJB_ELEM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @WJB_VALUE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @jbvBinary, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %18, %3
  %29 = load i32**, i32*** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = call %struct.TYPE_11__* @pushJsonbValueScalar(i32** %29, i64 %30, %struct.TYPE_11__* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %4, align 8
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @JsonbIteratorInit(i32 %38)
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %52, %33
  %41 = call i64 @JsonbIteratorNext(i32** %8, %struct.TYPE_11__* %10, i32 0)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* @WJB_DONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32**, i32*** %5, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi %struct.TYPE_11__* [ %10, %50 ], [ null, %51 ]
  %54 = call %struct.TYPE_11__* @pushJsonbValueScalar(i32** %45, i64 %46, %struct.TYPE_11__* %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %9, align 8
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %4, align 8
  br label %57

57:                                               ; preds = %55, %28
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %58
}

declare dso_local %struct.TYPE_11__* @pushJsonbValueScalar(i32**, i64, %struct.TYPE_11__*) #1

declare dso_local i32* @JsonbIteratorInit(i32) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
