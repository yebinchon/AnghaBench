; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprListAppendList.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprListAppendList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@TK_INTEGER = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@EP_IntValue = common dso_local global i32 0, align 4
@EP_IsTrue = common dso_local global i32 0, align 4
@EP_IsFalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @exprListAppendList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @exprListAppendList(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %98

14:                                               ; preds = %4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %94, %22
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_17__* @sqlite3ExprDup(i32 %33, i32 %41, i32 0)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %30
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TK_INTEGER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i64, i64* @TK_NULL, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @EP_IntValue, align 4
  %59 = load i32, i32* @EP_IsTrue, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EP_IsFalse, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %54, %48, %45, %30
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = call %struct.TYPE_16__* @sqlite3ExprListAppend(%struct.TYPE_15__* %69, %struct.TYPE_16__* %70, %struct.TYPE_17__* %71)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = icmp ne %struct.TYPE_16__* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i32 %83, i32* %92, align 4
  br label %93

93:                                               ; preds = %75, %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %24

97:                                               ; preds = %24
  br label %98

98:                                               ; preds = %97, %4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %99
}

declare dso_local %struct.TYPE_17__* @sqlite3ExprDup(i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3ExprListAppend(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
