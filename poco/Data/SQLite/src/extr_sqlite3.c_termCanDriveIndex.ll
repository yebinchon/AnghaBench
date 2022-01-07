; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_termCanDriveIndex.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_termCanDriveIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.SrcList_item = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8 }
%struct.TYPE_9__ = type { i32 }

@WO_EQ = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@JT_LEFT = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.SrcList_item*, i32)* @termCanDriveIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @termCanDriveIndex(%struct.TYPE_13__* %0, %struct.SrcList_item* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %13 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @WO_EQ, align 4
  %22 = load i32, i32* @WO_IS, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %95

27:                                               ; preds = %17
  %28 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %29 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @JT_LEFT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i32, i32* @EP_FromJoin, align 4
  %40 = call i32 @ExprHasProperty(%struct.TYPE_14__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WO_IS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %95

50:                                               ; preds = %42, %35, %27
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %95

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %95

65:                                               ; preds = %58
  %66 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %67 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %8, align 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i8, i8* %8, align 1
  %82 = call i32 @sqlite3IndexAffinityOk(%struct.TYPE_14__* %80, i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %95

85:                                               ; preds = %65
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TK_IS, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @testcase(i32 %93)
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %85, %84, %64, %57, %49, %26, %16
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ExprHasProperty(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3IndexAffinityOk(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
