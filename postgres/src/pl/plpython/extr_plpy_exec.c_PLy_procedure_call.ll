; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_exec.c_PLy_procedure_call.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_exec.c_PLy_procedure_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@explicit_subtransactions = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @PLy_procedure_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_procedure_call(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* @explicit_subtransactions, align 4
  %10 = call i32 @list_length(i32 %9)
  store volatile i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @PyDict_SetItemString(i32 %13, i8* %14, i32* %15)
  %17 = call i32 (...) @PG_TRY()
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @PyEval_EvalCode(i32* %20, i32 %23, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* @explicit_subtransactions, align 4
  %29 = call i32 @list_length(i32 %28)
  %30 = load volatile i32, i32* %8, align 4
  %31 = icmp sge i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = call i32 (...) @PG_FINALLY()
  %35 = load volatile i32, i32* %8, align 4
  %36 = call i32 @PLy_abort_open_subtransactions(i32 %35)
  %37 = call i32 (...) @PG_END_TRY()
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @PLy_elog(i32 %41, i32* null)
  br label %43

43:                                               ; preds = %40, %3
  %44 = load i32*, i32** %7, align 8
  ret i32* %44
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @PyDict_SetItemString(i32, i8*, i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32* @PyEval_EvalCode(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PLy_abort_open_subtransactions(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @PLy_elog(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
