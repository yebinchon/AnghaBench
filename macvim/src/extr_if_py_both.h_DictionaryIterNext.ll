; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_DictionaryIterNext.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_DictionaryIterNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__*, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"hashtab changed during iteration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**)* @DictionaryIterNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DictionaryIterNext(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23, %11
  %36 = load i32, i32* @PyExc_RuntimeError, align 4
  %37 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @PyErr_SET_STRING(i32 %36, i32 %37)
  store i32* null, i32** %2, align 8
  br label %79

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %55, %39
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i64 @HASHITEM_EMPTY(%struct.TYPE_7__* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %40
  %54 = phi i1 [ false, %40 ], [ %52, %46 ]
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 1
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %58, align 8
  br label %40

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32* @PyBytes_FromString(i8* %73)
  store i32* %74, i32** %4, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  store i32* null, i32** %2, align 8
  br label %79

77:                                               ; preds = %61
  %78 = load i32*, i32** %4, align 8
  store i32* %78, i32** %2, align 8
  br label %79

79:                                               ; preds = %77, %76, %35, %10
  %80 = load i32*, i32** %2, align 8
  ret i32* %80
}

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i64 @HASHITEM_EMPTY(%struct.TYPE_7__*) #1

declare dso_local i32* @PyBytes_FromString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
