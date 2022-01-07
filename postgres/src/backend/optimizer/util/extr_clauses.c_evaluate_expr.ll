; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_evaluate_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_evaluate_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @evaluate_expr(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = call %struct.TYPE_5__* (...) @CreateExecutorState()
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MemoryContextSwitchTo(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @fix_opfuncids(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @ExecInitExpr(i32* %23, i32* null)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = call i32 @GetPerTupleExprContext(%struct.TYPE_5__* %26)
  %28 = call i32 @ExecEvalExprSwitchContext(i32* %25, i32 %27, i32* %13)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @get_typlenbyval(i32 %29, i32* %14, i32* %15)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @MemoryContextSwitchTo(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @PG_DETOAST_DATUM_COPY(i32 %39)
  %41 = call i32 @PointerGetDatum(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @datumCopy(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = call i32 @FreeExecutorState(%struct.TYPE_5__* %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @makeConst(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = inttoptr i64 %58 to i32*
  ret i32* %59
}

declare dso_local %struct.TYPE_5__* @CreateExecutorState(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @fix_opfuncids(i32*) #1

declare dso_local i32* @ExecInitExpr(i32*, i32*) #1

declare dso_local i32 @ExecEvalExprSwitchContext(i32*, i32, i32*) #1

declare dso_local i32 @GetPerTupleExprContext(%struct.TYPE_5__*) #1

declare dso_local i32 @get_typlenbyval(i32, i32*, i32*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM_COPY(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @FreeExecutorState(%struct.TYPE_5__*) #1

declare dso_local i64 @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
