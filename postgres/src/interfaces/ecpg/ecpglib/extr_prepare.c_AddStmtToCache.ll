; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_AddStmtToCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_AddStmtToCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8*, i32*, i32 }

@stmtCacheEntries = common dso_local global %struct.TYPE_3__* null, align 8
@stmtCacheArraySize = common dso_local global i32 0, align 4
@stmtCacheEntPerBucket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i8*)* @AddStmtToCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddStmtToCache(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load i32, i32* @stmtCacheArraySize, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 40, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ecpg_alloc(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %28 = icmp eq %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %108

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @HashStmt(i8* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %68, %31
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @stmtCacheEntPerBucket, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %16, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %71

52:                                               ; preds = %40
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %55, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %36

71:                                               ; preds = %51, %36
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @stmtCacheEntPerBucket, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @ecpg_freeStmtCacheEntry(i32 %78, i32 %79, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %108

84:                                               ; preds = %77
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stmtCacheEntries, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %16, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ecpg_strdup(i8* %92, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @memcpy(i32* %104, i8* %105, i32 8)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %84, %83, %29
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @ecpg_alloc(i32, i32) #1

declare dso_local i32 @HashStmt(i8*) #1

declare dso_local i64 @ecpg_freeStmtCacheEntry(i32, i32, i32) #1

declare dso_local i32 @ecpg_strdup(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
