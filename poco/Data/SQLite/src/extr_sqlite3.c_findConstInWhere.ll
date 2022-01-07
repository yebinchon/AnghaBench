; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_findConstInWhere.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_findConstInWhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__* }

@EP_FromJoin = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@EP_FixedCol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @findConstInWhere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findConstInWhere(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %111

10:                                               ; preds = %2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = load i32, i32* @EP_FromJoin, align 4
  %13 = call i64 @ExprHasProperty(%struct.TYPE_13__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %111

16:                                               ; preds = %10
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TK_AND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  call void @findConstInWhere(%struct.TYPE_12__* %23, %struct.TYPE_13__* %26)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  call void @findConstInWhere(%struct.TYPE_12__* %27, %struct.TYPE_13__* %30)
  br label %111

31:                                               ; preds = %16
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TK_EQ, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %111

38:                                               ; preds = %31
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %5, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %6, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TK_COLUMN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %38
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i32, i32* @EP_FixedCol, align 4
  %61 = call i64 @ExprHasProperty(%struct.TYPE_13__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = call i64 @sqlite3ExprIsConstant(%struct.TYPE_13__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = call i32 @sqlite3BinaryCompareCollSeq(i32 %70, %struct.TYPE_13__* %71, %struct.TYPE_13__* %72)
  %74 = call i64 @sqlite3IsBinary(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = call i32 @constInsert(%struct.TYPE_12__* %77, %struct.TYPE_13__* %78, %struct.TYPE_13__* %79)
  br label %111

81:                                               ; preds = %67, %63, %58, %38
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TK_COLUMN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %81
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = load i32, i32* @EP_FixedCol, align 4
  %90 = call i64 @ExprHasProperty(%struct.TYPE_13__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = call i64 @sqlite3ExprIsConstant(%struct.TYPE_13__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = call i32 @sqlite3BinaryCompareCollSeq(i32 %99, %struct.TYPE_13__* %100, %struct.TYPE_13__* %101)
  %103 = call i64 @sqlite3IsBinary(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = call i32 @constInsert(%struct.TYPE_12__* %106, %struct.TYPE_13__* %107, %struct.TYPE_13__* %108)
  br label %110

110:                                              ; preds = %105, %96, %92, %87, %81
  br label %111

111:                                              ; preds = %9, %15, %22, %37, %110, %76
  ret void
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprIsConstant(%struct.TYPE_13__*) #1

declare dso_local i64 @sqlite3IsBinary(i32) #1

declare dso_local i32 @sqlite3BinaryCompareCollSeq(i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @constInsert(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
