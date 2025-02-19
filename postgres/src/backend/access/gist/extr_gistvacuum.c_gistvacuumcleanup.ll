; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumcleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gistvacuumcleanup(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %3, align 8
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call %struct.TYPE_12__* (...) @create_GistBulkDeleteResult()
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call i32 @gistvacuumscan(%struct.TYPE_11__* %20, %struct.TYPE_12__* %21, i32* null, i32* null)
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32 @gistvacuum_delete_empty_pages(%struct.TYPE_11__* %24, %struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @MemoryContextDelete(i32* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %23
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %41
  br label %58

58:                                               ; preds = %57, %23
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = bitcast %struct.TYPE_12__* %59 to i32*
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %58, %13
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_12__* @create_GistBulkDeleteResult(...) #1

declare dso_local i32 @gistvacuumscan(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @gistvacuum_delete_empty_pages(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
