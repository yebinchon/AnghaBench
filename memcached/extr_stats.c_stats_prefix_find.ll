; ModuleID = '/home/carl/AnghaBench/memcached/extr_stats.c_stats_prefix_find.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_stats.c_stats_prefix_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8 }
%struct.TYPE_7__ = type { i8*, i64, %struct.TYPE_7__* }

@settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 1
@PREFIX_HASH_SIZE = common dso_local global i64 0, align 8
@prefix_stats = common dso_local global %struct.TYPE_7__** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Can't allocate space for stats structure: calloc\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't allocate space for copy of prefix: malloc\00", align 1
@num_prefixes = common dso_local global i32 0, align 4
@total_prefix_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*, i64)* @stats_prefix_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @stats_prefix_find(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %14

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %124

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @hash(i8* %46, i64 %47)
  %49 = load i64, i64* @PREFIX_HASH_SIZE, align 8
  %50 = urem i64 %48, %49
  store i64 %50, i64* %7, align 8
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @prefix_stats, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %6, align 8
  br label %55

55:                                               ; preds = %69, %45
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = icmp ne %struct.TYPE_7__* null, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @strncmp(i8* %61, i8* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %3, align 8
  br label %124

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %6, align 8
  br label %55

73:                                               ; preds = %55
  %74 = call %struct.TYPE_7__* @calloc(i32 24, i32 1)
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %6, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = icmp eq %struct.TYPE_7__* null, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %124

79:                                               ; preds = %73
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  %82 = call i8* @malloc(i64 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* null, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = call i32 @free(%struct.TYPE_7__* %91)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %124

93:                                               ; preds = %79
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @strncpy(i8* %96, i8* %97, i64 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @prefix_stats, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %108, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @prefix_stats, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %115, i64 %116
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %117, align 8
  %118 = load i32, i32* @num_prefixes, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @num_prefixes, align 4
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @total_prefix_size, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* @total_prefix_size, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %3, align 8
  br label %124

124:                                              ; preds = %93, %89, %77, %66, %44
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @hash(i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
