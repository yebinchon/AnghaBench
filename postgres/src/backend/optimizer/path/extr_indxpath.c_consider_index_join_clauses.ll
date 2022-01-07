; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_consider_index_join_clauses.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_consider_index_join_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32**)* @consider_index_join_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consider_index_join_clauses(i32* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  store i32** %6, i32*** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %82, %7
  %20 = load i32, i32* %17, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @list_length(i32 %32)
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = load i32**, i32*** %14, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @consider_index_join_outer_rels(i32* %38, i32* %39, %struct.TYPE_11__* %40, %struct.TYPE_12__* %41, %struct.TYPE_12__* %42, %struct.TYPE_12__* %43, i32** %44, i32 %51, i32 %52, i32** %16)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @list_length(i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = load i32**, i32*** %14, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @consider_index_join_outer_rels(i32* %66, i32* %67, %struct.TYPE_11__* %68, %struct.TYPE_12__* %69, %struct.TYPE_12__* %70, %struct.TYPE_12__* %71, i32** %72, i32 %79, i32 %80, i32** %16)
  br label %82

82:                                               ; preds = %25
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %19

85:                                               ; preds = %19
  ret void
}

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @consider_index_join_outer_rels(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32**, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
