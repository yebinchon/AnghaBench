; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_assign_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_assign_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32* }

@PLPGSQL_DTYPE_VAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @exec_assign_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_assign_expr(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = call i32 @exec_prepare_plan(i32* %16, %struct.TYPE_9__* %17, i32 0, i32 1)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PLPGSQL_DTYPE_VAR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @exec_check_rw_parameter(%struct.TYPE_9__* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %15
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = call i32 @exec_eval_expr(i32* %32, %struct.TYPE_9__* %33, i32* %8, i32* %9, i32* %10)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @exec_assign_value(i32* %35, %struct.TYPE_10__* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @exec_eval_cleanup(i32* %42)
  ret void
}

declare dso_local i32 @exec_prepare_plan(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @exec_check_rw_parameter(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @exec_eval_expr(i32*, %struct.TYPE_9__*, i32*, i32*, i32*) #1

declare dso_local i32 @exec_assign_value(i32*, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @exec_eval_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
