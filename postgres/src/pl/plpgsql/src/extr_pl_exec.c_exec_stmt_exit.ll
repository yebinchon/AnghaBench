; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_exit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32* }

@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@PLPGSQL_RC_EXIT = common dso_local global i32 0, align 4
@PLPGSQL_RC_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @exec_stmt_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_exit(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @exec_eval_boolean(%struct.TYPE_8__* %13, i32* %16, i32* %7)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @exec_eval_cleanup(%struct.TYPE_8__* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %12
  %26 = load i32, i32* @PLPGSQL_RC_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @PLPGSQL_RC_EXIT, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @PLPGSQL_RC_CONTINUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @exec_eval_boolean(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
