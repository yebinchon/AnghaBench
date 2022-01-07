; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_subxactobject.c_PLy_subtransaction_exit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_subxactobject.c_PLy_subtransaction_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"this subtransaction has not been entered\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"this subtransaction has already been exited\00", align 1
@explicit_subtransactions = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"there is no subtransaction to exit from\00", align 1
@Py_None = common dso_local global i32* null, align 8
@CurrentResourceOwner = common dso_local global i32 0, align 4
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @PLy_subtransaction_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_subtransaction_exit(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PyArg_ParseTuple(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %6, i32** %7, i32** %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @PyExc_ValueError, align 4
  %24 = call i32 @PLy_exception_set(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %66

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @PyExc_ValueError, align 4
  %32 = call i32 @PLy_exception_set(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %66

33:                                               ; preds = %25
  %34 = load i64, i64* @explicit_subtransactions, align 8
  %35 = load i64, i64* @NIL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PLy_exception_set(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %66

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** @Py_None, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  br label %50

48:                                               ; preds = %40
  %49 = call i32 (...) @ReleaseCurrentSubTransaction()
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* @explicit_subtransactions, align 8
  %52 = call i64 @linitial(i64 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %9, align 8
  %54 = load i64, i64* @explicit_subtransactions, align 8
  %55 = call i64 @list_delete_first(i64 %54)
  store i64 %55, i64* @explicit_subtransactions, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MemoryContextSwitchTo(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @CurrentResourceOwner, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = call i32 @pfree(%struct.TYPE_5__* %63)
  %65 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %66

66:                                               ; preds = %50, %37, %30, %22, %16
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**, i32**, i32**) #1

declare dso_local i32 @PLy_exception_set(i32, i8*) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
