; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExprInterp.c_get_cached_rowtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExprInterp.c_get_cached_rowtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@ShutdownTupleDescRef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i64, i64, %struct.TYPE_7__**, i32*)* @get_cached_rowtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_cached_rowtype(i64 %0, i64 %1, %struct.TYPE_7__** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20, %14, %4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_7__* @lookup_rowtype_tupdesc(i64 %27, i64 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @ReleaseTupleDesc(%struct.TYPE_7__* %35)
  br label %43

37:                                               ; preds = %26
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ShutdownTupleDescRef, align 4
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %41 = call i32 @PointerGetDatum(%struct.TYPE_7__** %40)
  %42 = call i32 @RegisterExprContextCallback(i32* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %45, align 8
  br label %46

46:                                               ; preds = %43, %20
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local %struct.TYPE_7__* @lookup_rowtype_tupdesc(i64, i64) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_7__*) #1

declare dso_local i32 @RegisterExprContextCallback(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
