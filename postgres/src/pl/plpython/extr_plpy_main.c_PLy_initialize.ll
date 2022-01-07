; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c_PLy_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c_PLy_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLy_initialize.inited = internal global i32 0, align 4
@plpython_version_bitmask_ptr = common dso_local global i32* null, align 8
@PY_MAJOR_VERSION = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"multiple Python libraries are present in session\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Only one Python major version can be used in one session.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"untrapped error in initialization\00", align 1
@NIL = common dso_local global i32 0, align 4
@explicit_subtransactions = common dso_local global i32 0, align 4
@PLy_execution_contexts = common dso_local global i32* null, align 8
@PyInit_plpy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PLy_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_initialize() #0 {
  %1 = load i32*, i32** @plpython_version_bitmask_ptr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @PY_MAJOR_VERSION, align 4
  %4 = shl i32 1, %3
  %5 = icmp ne i32 %2, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @FATAL, align 4
  %8 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @errdetail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @ereport(i32 %7, i32 %9)
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @PLy_initialize.inited, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %27

15:                                               ; preds = %11
  %16 = call i32 (...) @Py_Initialize()
  %17 = call i32 (...) @PLy_init_interp()
  %18 = call i32 (...) @PLy_init_plpy()
  %19 = call i64 (...) @PyErr_Occurred()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @FATAL, align 4
  %23 = call i32 @PLy_elog(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  %25 = call i32 (...) @init_procedure_caches()
  %26 = load i32, i32* @NIL, align 4
  store i32 %26, i32* @explicit_subtransactions, align 4
  store i32* null, i32** @PLy_execution_contexts, align 8
  store i32 1, i32* @PLy_initialize.inited, align 4
  br label %27

27:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @Py_Initialize(...) #1

declare dso_local i32 @PLy_init_interp(...) #1

declare dso_local i32 @PLy_init_plpy(...) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32 @init_procedure_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
