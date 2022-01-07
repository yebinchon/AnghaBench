; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c_PLy_init_interp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c_PLy_init_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLy_init_interp.PLy_interp_safe_globals = internal global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not import \22__main__\22 module\00", align 1
@PLy_interp_globals = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"GD\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not initialize globals\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PLy_init_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_init_interp() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = call i64 (...) @PyErr_Occurred()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @ERROR, align 4
  %10 = call i32 @PLy_elog(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @Py_INCREF(i32* %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @PyModule_GetDict(i32* %14)
  store i32* %15, i32** @PLy_interp_globals, align 8
  %16 = call i32* (...) @PyDict_New()
  store i32* %16, i32** @PLy_init_interp.PLy_interp_safe_globals, align 8
  %17 = load i32*, i32** @PLy_init_interp.PLy_interp_safe_globals, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @PLy_elog(i32 %20, i8* null)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load i32*, i32** @PLy_interp_globals, align 8
  %24 = load i32*, i32** @PLy_init_interp.PLy_interp_safe_globals, align 8
  %25 = call i32 @PyDict_SetItemString(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @Py_DECREF(i32* %26)
  %28 = load i32*, i32** @PLy_interp_globals, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = call i64 (...) @PyErr_Occurred()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %22
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @PLy_elog(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32* @PyImport_AddModule(i8*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyModule_GetDict(i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
