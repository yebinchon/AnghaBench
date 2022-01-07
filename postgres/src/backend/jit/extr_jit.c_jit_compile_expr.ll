; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/extr_jit.c_jit_compile_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/extr_jit.c_jit_compile_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.ExprState*)* }
%struct.ExprState = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PGJIT_PERFORM = common dso_local global i32 0, align 4
@PGJIT_EXPR = common dso_local global i32 0, align 4
@provider = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jit_compile_expr(%struct.ExprState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ExprState*, align 8
  store %struct.ExprState* %0, %struct.ExprState** %3, align 8
  %4 = load %struct.ExprState*, %struct.ExprState** %3, align 8
  %5 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.ExprState*, %struct.ExprState** %3, align 8
  %11 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PGJIT_PERFORM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %41

21:                                               ; preds = %9
  %22 = load %struct.ExprState*, %struct.ExprState** %3, align 8
  %23 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PGJIT_EXPR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %21
  %34 = call i64 (...) @provider_init()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32 (%struct.ExprState*)*, i32 (%struct.ExprState*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @provider, i32 0, i32 0), align 8
  %38 = load %struct.ExprState*, %struct.ExprState** %3, align 8
  %39 = call i32 %37(%struct.ExprState* %38)
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36, %32, %20, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @provider_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
