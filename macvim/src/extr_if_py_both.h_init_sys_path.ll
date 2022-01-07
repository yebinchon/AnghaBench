; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_init_sys_path.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_init_sys_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vim_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"path_hook\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"path_hooks\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"Failed to set path hook: sys.path_hooks is not a list\0AYou should now do the following:\0A- append vim.path_hook to sys.path_hooks\0A- append vim.VIM_SPECIAL_PATH to sys.path\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@vim_special_path_object = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [98 x i8] c"Failed to set path: sys.path is not a list\0AYou should now append vim.VIM_SPECIAL_PATH to sys.path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_sys_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sys_path() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @vim_module, align 4
  %6 = call i32* @PyObject_GetAttrString(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %88

9:                                                ; preds = %0
  %10 = call i32* @PySys_GetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = call i32 (...) @PyErr_Clear()
  %14 = call i32* @PyList_New(i32 1)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @PyList_SET_ITEM(i32* %15, i32 0, i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @Py_DECREF(i32* %22)
  store i32 -1, i32* %1, align 4
  br label %88

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @Py_DECREF(i32* %25)
  br label %50

27:                                               ; preds = %9
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @PyList_Check(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @PyList_Append(i32* %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @Py_DECREF(i32* %37)
  store i32 -1, i32* %1, align 4
  br label %88

39:                                               ; preds = %31
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @Py_DECREF(i32* %40)
  br label %49

42:                                               ; preds = %27
  %43 = call i32 (...) @VimTryStart()
  %44 = call i32 @_(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @EMSG(i32 %44)
  %46 = call i32 (...) @VimTryEnd()
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  store i32 0, i32* %1, align 4
  br label %88

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %24
  %51 = call i32* @PySys_GetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %2, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @PyErr_Clear()
  %55 = call i32* @PyList_New(i32 1)
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** @vim_special_path_object, align 8
  %57 = call i32 @Py_INCREF(i32* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** @vim_special_path_object, align 8
  %60 = call i32 @PyList_SET_ITEM(i32* %58, i32 0, i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @PySys_SetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @Py_DECREF(i32* %65)
  store i32 -1, i32* %1, align 4
  br label %88

67:                                               ; preds = %53
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @Py_DECREF(i32* %68)
  br label %87

70:                                               ; preds = %50
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @PyList_Check(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32*, i32** %2, align 8
  %76 = load i32*, i32** @vim_special_path_object, align 8
  %77 = call i64 @PyList_Append(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %1, align 4
  br label %88

80:                                               ; preds = %74
  br label %86

81:                                               ; preds = %70
  %82 = call i32 (...) @VimTryStart()
  %83 = call i32 @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 @EMSG(i32 %83)
  %85 = call i32 (...) @VimTryEnd()
  br label %86

86:                                               ; preds = %81, %80
  br label %87

87:                                               ; preds = %86, %67
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %87, %79, %64, %42, %36, %21, %8
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32* @PyObject_GetAttrString(i32, i8*) #1

declare dso_local i32* @PySys_GetObject(i8*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i64 @PySys_SetObject(i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyList_Check(i32*) #1

declare dso_local i64 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @VimTryEnd(...) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
