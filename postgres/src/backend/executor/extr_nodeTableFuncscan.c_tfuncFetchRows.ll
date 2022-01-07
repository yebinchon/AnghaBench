; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeTableFuncscan.c_tfuncFetchRows.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeTableFuncscan.c_tfuncFetchRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32*, i32, %struct.TYPE_19__, i32, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_22__ = type { i32 }

@work_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*)* @tfuncFetchRows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfuncFetchRows(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @work_mem, align 4
  %23 = call i32 @tuplestore_begin_heap(i32 0, i32 0, i32 %22)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  %30 = call i32 (...) @PG_TRY()
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %33(%struct.TYPE_20__* %34, i32 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = call i32 @ExecEvalExpr(i32 %46, %struct.TYPE_22__* %47, i32* %8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %2
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @tfuncInitialize(%struct.TYPE_20__* %52, %struct.TYPE_22__* %53, i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = call i32 @tfuncLoadRows(%struct.TYPE_20__* %58, %struct.TYPE_22__* %59)
  br label %61

61:                                               ; preds = %51, %2
  %62 = call i32 (...) @PG_CATCH()
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = call i32 %70(%struct.TYPE_20__* %71)
  br label %73

73:                                               ; preds = %67, %61
  %74 = call i32 (...) @PG_RE_THROW()
  %75 = call i32 (...) @PG_END_TRY()
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = call i32 %83(%struct.TYPE_20__* %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %80, %73
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @MemoryContextSwitchTo(i32 %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MemoryContextReset(i32 %93)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @ExecEvalExpr(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @tfuncInitialize(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @tfuncLoadRows(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
