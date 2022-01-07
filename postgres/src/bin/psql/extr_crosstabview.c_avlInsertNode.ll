; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_avlInsertNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_avlInsertNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__**, i32)* @avlInsertNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avlInsertNode(%struct.TYPE_7__* %0, %struct.TYPE_8__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp eq %struct.TYPE_8__* %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = call i64 @pg_malloc(i32 24)
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %41, align 8
  br label %69

42:                                               ; preds = %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @pivotFieldCompare(i32* %6, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 1
  br label %62

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 0
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi %struct.TYPE_8__** [ %56, %52 ], [ %61, %57 ]
  %64 = load i32, i32* %6, align 4
  call void @avlInsertNode(%struct.TYPE_7__* %49, %struct.TYPE_8__** %63, i32 %64)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %67 = call i32 @avlAdjustBalance(%struct.TYPE_7__* %65, %struct.TYPE_8__** %66)
  br label %68

68:                                               ; preds = %62, %42
  br label %69

69:                                               ; preds = %68, %17
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @pivotFieldCompare(i32*, i32*) #1

declare dso_local i32 @avlAdjustBalance(%struct.TYPE_7__*, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
