; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_searchWith.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_searchWith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cte = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.Cte*, %struct.TYPE_4__* }
%struct.SrcList_item = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Cte* (%struct.TYPE_4__*, %struct.SrcList_item*, %struct.TYPE_4__**)* @searchWith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Cte* @searchWith(%struct.TYPE_4__* %0, %struct.SrcList_item* %1, %struct.TYPE_4__** %2) #0 {
  %4 = alloca %struct.Cte*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %6, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %7, align 8
  %11 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %12 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %3
  %16 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %17 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  br label %22

22:                                               ; preds = %58, %20
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.Cte*, %struct.Cte** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Cte, %struct.Cte* %36, i64 %38
  %40 = getelementptr inbounds %struct.Cte, %struct.Cte* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sqlite3StrICmp(i8* %33, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.Cte*, %struct.Cte** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.Cte, %struct.Cte* %49, i64 %51
  store %struct.Cte* %52, %struct.Cte** %4, align 8
  br label %64

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %26

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %9, align 8
  br label %22

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %15, %3
  store %struct.Cte* null, %struct.Cte** %4, align 8
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.Cte*, %struct.Cte** %4, align 8
  ret %struct.Cte* %65
}

declare dso_local i64 @sqlite3StrICmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
