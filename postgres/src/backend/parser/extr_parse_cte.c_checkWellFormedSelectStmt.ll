; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_cte.c_checkWellFormedSelectStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_cte.c_checkWellFormedSelectStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@RECURSION_OK = common dso_local global i64 0, align 8
@RECURSION_INTERSECT = common dso_local global i64 0, align 8
@RECURSION_EXCEPT = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unrecognized set op: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @checkWellFormedSelectStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkWellFormedSelectStmt(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @RECURSION_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = bitcast %struct.TYPE_7__* %13 to i32*
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to i8*
  %17 = call i32 @raw_expression_tree_walker(i32* %14, i32 (i32*, %struct.TYPE_8__*)* @checkWellFormedRecursionWalker, i8* %16)
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %131 [
    i32 129, label %22
    i32 128, label %22
    i32 130, label %28
    i32 131, label %77
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = bitcast %struct.TYPE_7__* %23 to i32*
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to i8*
  %27 = call i32 @raw_expression_tree_walker(i32* %24, i32 (i32*, %struct.TYPE_8__*)* @checkWellFormedRecursionWalker, i8* %26)
  br label %137

28:                                               ; preds = %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @RECURSION_INTERSECT, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32 @checkWellFormedRecursionWalker(i32* %41, %struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @checkWellFormedRecursionWalker(i32* %47, %struct.TYPE_8__* %48)
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @checkWellFormedRecursionWalker(i32* %56, %struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = call i32 @checkWellFormedRecursionWalker(i32* %62, %struct.TYPE_8__* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 @checkWellFormedRecursionWalker(i32* %68, %struct.TYPE_8__* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = call i32 @checkWellFormedRecursionWalker(i32* %74, %struct.TYPE_8__* %75)
  br label %137

77:                                               ; preds = %18
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** @RECURSION_EXCEPT, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = call i32 @checkWellFormedRecursionWalker(i32* %91, %struct.TYPE_8__* %92)
  %94 = load i8*, i8** @RECURSION_EXCEPT, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = call i32 @checkWellFormedRecursionWalker(i32* %101, %struct.TYPE_8__* %102)
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = call i32 @checkWellFormedRecursionWalker(i32* %110, %struct.TYPE_8__* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = call i32 @checkWellFormedRecursionWalker(i32* %116, %struct.TYPE_8__* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = call i32 @checkWellFormedRecursionWalker(i32* %122, %struct.TYPE_8__* %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = call i32 @checkWellFormedRecursionWalker(i32* %128, %struct.TYPE_8__* %129)
  br label %137

131:                                              ; preds = %18
  %132 = load i32, i32* @ERROR, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @elog(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %87, %37, %22
  br label %138

138:                                              ; preds = %137, %12
  ret void
}

declare dso_local i32 @raw_expression_tree_walker(i32*, i32 (i32*, %struct.TYPE_8__*)*, i8*) #1

declare dso_local i32 @checkWellFormedRecursionWalker(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
