; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprNodeIsConstantOrGroupBy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprNodeIsConstantOrGroupBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@WRC_Prune = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @exprNodeIsConstantOrGroupBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprNodeIsConstantOrGroupBy(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @sqlite3ExprCompare(i32* %29, i32* %30, i32 -1)
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %50

33:                                               ; preds = %20
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.TYPE_13__* @sqlite3ExprCollSeq(i32 %36, i32* %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %9, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = icmp eq %struct.TYPE_13__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %33
  %48 = load i32, i32* @WRC_Prune, align 4
  store i32 %48, i32* %3, align 4
  br label %67

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @EP_xIsSelect, align 4
  %57 = call i64 @ExprHasProperty(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @WRC_Abort, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @exprNodeIsConstant(%struct.TYPE_11__* %64, i32* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %59, %47
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @sqlite3ExprCompare(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @sqlite3ExprCollSeq(i32, i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i32) #1

declare dso_local i64 @ExprHasProperty(i32*, i32) #1

declare dso_local i32 @exprNodeIsConstant(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
