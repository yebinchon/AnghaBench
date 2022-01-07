; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_init_plpy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_init_plpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"plpy\00", align 1
@PLy_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not import \22plpy\22 module\00", align 1
@PLy_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_init_plpy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @PLy_plan_init_type()
  %6 = call i32 (...) @PLy_result_init_type()
  %7 = call i32 (...) @PLy_subtransaction_init_type()
  %8 = call i32 (...) @PLy_cursor_init_type()
  %9 = load i32, i32* @PLy_methods, align 4
  %10 = call i32* @Py_InitModule(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @PLy_add_exceptions(i32* %11)
  %13 = call i32* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @PyModule_GetDict(i32* %14)
  store i32* %15, i32** %2, align 8
  %16 = call i32* @PyImport_AddModule(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @PLy_elog(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @PyDict_SetItemString(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = call i64 (...) @PyErr_Occurred()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @PLy_elog(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @PLy_plan_init_type(...) #1

declare dso_local i32 @PLy_result_init_type(...) #1

declare dso_local i32 @PLy_subtransaction_init_type(...) #1

declare dso_local i32 @PLy_cursor_init_type(...) #1

declare dso_local i32* @Py_InitModule(i8*, i32) #1

declare dso_local i32 @PLy_add_exceptions(i32*) #1

declare dso_local i32* @PyImport_AddModule(i8*) #1

declare dso_local i32* @PyModule_GetDict(i32*) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
