; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_convert_dl.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_convert_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@VAR_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, i32 (i32*, %struct.TYPE_17__*, i32*)*, i32*)* @convert_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_dl(i32* %0, %struct.TYPE_17__* %1, i32 (i32*, %struct.TYPE_17__*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32 (i32*, %struct.TYPE_17__*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [19 x i8], align 16
  %12 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 (i32*, %struct.TYPE_17__*, i32*)* %2, i32 (i32*, %struct.TYPE_17__*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  %18 = call i32* @PyDict_GetItemString(i32* %16, i8* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %71

21:                                               ; preds = %4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = call i32* @PyCObject_FromVoidPtr(%struct.TYPE_17__* %22, i32* null)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @PyDict_SetItemString(i32* %24, i8* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @Py_DECREF(i32* %30)
  %32 = load i8*, i8** @VAR_UNKNOWN, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 -1, i32* %5, align 4
  br label %78

36:                                               ; preds = %21
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @Py_DECREF(i32* %37)
  %39 = load i32 (i32*, %struct.TYPE_17__*, i32*)*, i32 (i32*, %struct.TYPE_17__*, i32*)** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 %39(i32* %40, %struct.TYPE_17__* %41, i32* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i8*, i8** @VAR_UNKNOWN, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 -1, i32* %5, align 4
  br label %78

50:                                               ; preds = %36
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %70 [
    i32 129, label %54
    i32 128, label %62
  ]

54:                                               ; preds = %50
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %70

62:                                               ; preds = %50
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %50, %62, %54
  br label %77

71:                                               ; preds = %4
  %72 = load i32*, i32** %10, align 8
  %73 = call %struct.TYPE_17__* @PyCObject_AsVoidPtr(i32* %72)
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %12, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = call i32 @copy_tv(%struct.TYPE_17__* %74, %struct.TYPE_17__* %75)
  br label %77

77:                                               ; preds = %71, %70
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %45, %29
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32* @PyCObject_FromVoidPtr(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_17__* @PyCObject_AsVoidPtr(i32*) #1

declare dso_local i32 @copy_tv(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
