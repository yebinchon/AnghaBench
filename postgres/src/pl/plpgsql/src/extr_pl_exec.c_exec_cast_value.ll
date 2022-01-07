; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_cast_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_cast_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32*, i64, i32, i64, i32)* @exec_cast_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_cast_value(%struct.TYPE_10__* %0, i32 %1, i32* %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %64

28:                                               ; preds = %25, %7
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.TYPE_9__* @get_cast_hashentry(%struct.TYPE_10__* %29, i64 %30, i32 %31, i64 %32, i32 %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %15, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %16, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = call i32 @get_eval_mcontext(%struct.TYPE_10__* %41)
  %43 = call i32 @MemoryContextSwitchTo(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @ExecEvalExpr(i32 %55, %struct.TYPE_11__* %56, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @MemoryContextSwitchTo(i32 %61)
  br label %63

63:                                               ; preds = %37, %28
  br label %64

64:                                               ; preds = %63, %25, %21
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_9__* @get_cast_hashentry(%struct.TYPE_10__*, i64, i32, i64, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_10__*) #1

declare dso_local i32 @ExecEvalExpr(i32, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
