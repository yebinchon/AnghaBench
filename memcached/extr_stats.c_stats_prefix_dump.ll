; ModuleID = '/home/carl/AnghaBench/memcached/extr_stats.c_stats_prefix_dump.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_stats.c_stats_prefix_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [48 x i8] c"PREFIX %s get %llu hit %llu set %llu del %llu\0D\0A\00", align 1
@total_prefix_size = common dso_local global i32 0, align 4
@num_prefixes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't allocate stats response: malloc\00", align 1
@PREFIX_HASH_SIZE = common dso_local global i32 0, align 4
@prefix_stats = common dso_local global %struct.TYPE_3__** null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stats_prefix_dump(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = call i32 (...) @STATS_LOCK()
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i32, i32* @total_prefix_size, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @num_prefixes, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sub nsw i32 %19, 2
  %21 = add nsw i32 %20, 64
  %22 = mul nsw i32 %17, %21
  %23 = add nsw i32 %16, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 6
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* null, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @STATS_UNLOCK()
  store i8* null, i8** %2, align 8
  br label %105

33:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %91, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PREFIX_HASH_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %94

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @prefix_stats, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %5, align 8
  br label %44

44:                                               ; preds = %86, %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = icmp ne %struct.TYPE_3__* null, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %52, %54
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @snprintf(i8* %51, i64 %55, i8* %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ult i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %47
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %5, align 8
  br label %44

90:                                               ; preds = %44
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %34

94:                                               ; preds = %34
  %95 = call i32 (...) @STATS_UNLOCK()
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = call i32 @memcpy(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 5
  %103 = load i32*, i32** %3, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %2, align 8
  br label %105

105:                                              ; preds = %94, %30
  %106 = load i8*, i8** %2, align 8
  ret i8* %106
}

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
