; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_ListAssIndex.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_ListAssIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@RAISE_LOCKED_LIST = common dso_local global i32 0, align 4
@PyExc_IndexError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"list index out of range\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to add item to list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i32*)* @ListAssIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ListAssIndex(%struct.TYPE_15__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = call i64 @ListLength(%struct.TYPE_15__* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @RAISE_LOCKED_LIST, align 4
  store i32 -1, i32* %4, align 4
  br label %85

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23
  %35 = load i32, i32* @PyExc_IndexError, align 4
  %36 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @PyErr_SET_STRING(i32 %35, i32 %36)
  store i32 -1, i32* %4, align 4
  br label %85

38:                                               ; preds = %31, %27
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call %struct.TYPE_13__* @list_find(%struct.TYPE_14__* %42, i64 %43)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %10, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = call i32 @vimlist_remove(%struct.TYPE_14__* %45, %struct.TYPE_13__* %46, %struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = call i32 @clear_tv(i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = call i32 @vim_free(%struct.TYPE_13__* %52)
  store i32 0, i32* %4, align 4
  br label %85

54:                                               ; preds = %38
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ConvertFromPyObject(i32* %55, i32* %8)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %85

59:                                               ; preds = %54
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = call i64 @list_append_tv(%struct.TYPE_14__* %64, i32* %8)
  %66 = load i64, i64* @FAIL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @clear_tv(i32* %8)
  %70 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @PyErr_SET_VIM(i32 %70)
  store i32 -1, i32* %4, align 4
  br label %85

72:                                               ; preds = %63
  br label %84

73:                                               ; preds = %59
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call %struct.TYPE_13__* @list_find(%struct.TYPE_14__* %74, i64 %75)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %10, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = call i32 @clear_tv(i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = call i32 @copy_tv(i32* %8, i32* %81)
  %83 = call i32 @clear_tv(i32* %8)
  br label %84

84:                                               ; preds = %73, %72
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %68, %58, %41, %34, %21
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @ListLength(%struct.TYPE_15__*) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local %struct.TYPE_13__* @list_find(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @vimlist_remove(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @clear_tv(i32*) #1

declare dso_local i32 @vim_free(%struct.TYPE_13__*) #1

declare dso_local i32 @ConvertFromPyObject(i32*, i32*) #1

declare dso_local i64 @list_append_tv(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @copy_tv(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
