; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByCatalogId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByCatalogId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@catalogIdMapValid = common dso_local global i32 0, align 4
@catalogIdMap = common dso_local global %struct.TYPE_10__** null, align 8
@numCatalogIds = common dso_local global i32 0, align 4
@DOCatalogIdCompare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @findObjectByCatalogId(i64 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_11__* %3 to i64*
  store i64 %0, i64* %8, align 4
  %9 = load i32, i32* @catalogIdMapValid, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @catalogIdMap, align 8
  %13 = icmp ne %struct.TYPE_10__** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @catalogIdMap, align 8
  %16 = call i32 @free(%struct.TYPE_10__** %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 @getDumpableObjects(%struct.TYPE_10__*** @catalogIdMap, i32* @numCatalogIds)
  %19 = load i32, i32* @numCatalogIds, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @catalogIdMap, align 8
  %23 = bitcast %struct.TYPE_10__** %22 to i8*
  %24 = load i32, i32* @numCatalogIds, align 4
  %25 = load i32, i32* @DOCatalogIdCompare, align 4
  %26 = call i32 @qsort(i8* %23, i32 %24, i32 8, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  store i32 1, i32* @catalogIdMapValid, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* @numCatalogIds, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %90

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @catalogIdMap, align 8
  store %struct.TYPE_10__** %33, %struct.TYPE_10__*** %4, align 8
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @catalogIdMap, align 8
  %35 = load i32, i32* @numCatalogIds, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %37
  store %struct.TYPE_10__** %38, %struct.TYPE_10__*** %5, align 8
  br label %39

39:                                               ; preds = %88, %32
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %42 = icmp ule %struct.TYPE_10__** %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %47 = ptrtoint %struct.TYPE_10__** %45 to i64
  %48 = ptrtoint %struct.TYPE_10__** %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = sdiv i64 %50, 2
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 %51
  store %struct.TYPE_10__** %52, %struct.TYPE_10__*** %6, align 8
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @oidcmp(i32 %57, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %43
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @oidcmp(i32 %68, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %63, %43
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %2, align 8
  br label %90

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %82, i64 1
  store %struct.TYPE_10__** %83, %struct.TYPE_10__*** %4, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 -1
  store %struct.TYPE_10__** %86, %struct.TYPE_10__*** %5, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87
  br label %39

89:                                               ; preds = %39
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %90

90:                                               ; preds = %89, %75, %31
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %91
}

declare dso_local i32 @free(%struct.TYPE_10__**) #1

declare dso_local i32 @getDumpableObjects(%struct.TYPE_10__***, i32*) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @oidcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
