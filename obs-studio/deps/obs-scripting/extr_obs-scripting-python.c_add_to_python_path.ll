; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_add_to_python_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_add_to_python_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8** }

@python_paths = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"import sys\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_to_python_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_python_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  br label %72

16:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @python_paths, i32 0, i32 0), align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @python_paths, i32 0, i32 1), align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %72

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %17

35:                                               ; preds = %17
  %36 = call i32 @PyRun_SimpleString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  %37 = call i64 (...) @py_error()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %35
  br label %69

43:                                               ; preds = %39
  %44 = call i32* @PySys_GetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %4, align 8
  %45 = call i64 (...) @py_error()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %43
  br label %69

51:                                               ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = call i32* @PyUnicode_FromString(i8* %52)
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @PyList_Append(i32* %54, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = call i64 (...) @py_error()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %51
  br label %69

63:                                               ; preds = %59
  %64 = load i8*, i8** %2, align 8
  %65 = call i8* @bstrdup(i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i64, i64* getelementptr inbounds ({ i64, i8** }, { i64, i8** }* bitcast (%struct.TYPE_3__* @python_paths to { i64, i8** }*), i32 0, i32 0), align 8
  %67 = load i8**, i8*** getelementptr inbounds ({ i64, i8** }, { i64, i8** }* bitcast (%struct.TYPE_3__* @python_paths to { i64, i8** }*), i32 0, i32 1), align 8
  %68 = call i32 @da_push_back(i64 %66, i8** %67, i8** %8)
  br label %69

69:                                               ; preds = %63, %62, %50, %42
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @Py_XDECREF(i32* %70)
  br label %72

72:                                               ; preds = %69, %30, %15
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyRun_SimpleString(i8*) #1

declare dso_local i64 @py_error(...) #1

declare dso_local i32* @PySys_GetObject(i8*) #1

declare dso_local i32* @PyUnicode_FromString(i8*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @da_push_back(i64, i8**, i8**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
