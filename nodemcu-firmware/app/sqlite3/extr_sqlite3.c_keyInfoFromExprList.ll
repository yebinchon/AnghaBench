; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_keyInfoFromExprList.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_keyInfoFromExprList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32)* @keyInfoFromExprList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @keyInfoFromExprList(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.ExprList_item*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %12, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = call %struct.TYPE_14__* @sqlite3KeyInfoAlloc(%struct.TYPE_12__* %21, i32 %24, i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %10, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = call i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_14__* %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.ExprList_item*, %struct.ExprList_item** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %37, i64 %39
  store %struct.ExprList_item* %40, %struct.ExprList_item** %11, align 8
  br label %41

41:                                               ; preds = %78, %30
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %48 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_13__* %46, i32 %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %14, align 8
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32*, i32** %14, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %61, i64 %65
  store i32* %58, i32** %66, align 8
  %67 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %68 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %82 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %81, i32 1
  store %struct.ExprList_item* %82, %struct.ExprList_item** %11, align 8
  br label %41

83:                                               ; preds = %41
  br label %84

84:                                               ; preds = %83, %4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  ret %struct.TYPE_14__* %85
}

declare dso_local %struct.TYPE_14__* @sqlite3KeyInfoAlloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_14__*) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
