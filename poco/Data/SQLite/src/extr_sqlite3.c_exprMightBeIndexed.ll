; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprMightBeIndexed.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprMightBeIndexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@TK_GT = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@TK_ISNULL = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i32 0, align 4
@TK_VECTOR = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_10__*, i32)* @exprMightBeIndexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprMightBeIndexed(i32* %0, i32 %1, i32* %2, %struct.TYPE_10__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* @TK_GT, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @TK_LE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i32, i32* @TK_GT, align 4
  %18 = add nsw i32 %17, 2
  %19 = load i32, i32* @TK_LT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @TK_GT, align 4
  %23 = add nsw i32 %22, 3
  %24 = load i32, i32* @TK_GE, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %21, %16, %5
  %27 = phi i1 [ false, %16 ], [ false, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @TK_IS, align 4
  %31 = load i32, i32* @TK_GE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @TK_ISNULL, align 4
  %35 = load i32, i32* @TK_GE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @TK_IN, align 4
  %39 = load i32, i32* @TK_GE, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33, %26
  %42 = phi i1 [ false, %33 ], [ false, %26 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TK_GE, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TK_VECTOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @TK_GT, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @TK_GE, align 4
  %62 = icmp sle i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @ALWAYS(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %10, align 8
  br label %76

76:                                               ; preds = %66, %59, %55, %41
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TK_COLUMN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  store i32 1, i32* %6, align 4
  br label %110

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %110

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %110

104:                                              ; preds = %97
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = call i32 @exprMightBeIndexed2(i32* %105, i32 %106, i32* %107, %struct.TYPE_10__* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %103, %96, %82
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @exprMightBeIndexed2(i32*, i32, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
