; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@stats_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"curr_items\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"total_items\00", align 1
@stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"slab_global_page_pool\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"slabs\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sizes\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"sizes_enable\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"sizes_disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8*)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stats(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %81

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @STATS_LOCK()
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 1), align 8
  %18 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 0), align 8
  %20 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stats, i32 0, i32 0), align 8
  %22 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = call i32 (...) @STATS_UNLOCK()
  %24 = call i64 @global_page_pool_size(i32* null)
  %25 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @item_stats_totals(i32* %26, i8* %27)
  br label %80

29:                                               ; preds = %12
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @nz_strcmp(i32 %30, i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @item_stats(i32* %35, i8* %36)
  br label %79

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @nz_strcmp(i32 %39, i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @slabs_stats(i32* %44, i8* %45)
  br label %78

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @nz_strcmp(i32 %48, i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @item_stats_sizes(i32* %53, i8* %54)
  br label %77

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @nz_strcmp(i32 %57, i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @item_stats_sizes_enable(i32* %62, i8* %63)
  br label %76

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @nz_strcmp(i32 %66, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32*, i32** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @item_stats_sizes_disable(i32* %71, i8* %72)
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %70
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %43
  br label %79

79:                                               ; preds = %78, %34
  br label %80

80:                                               ; preds = %79, %15
  br label %82

81:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @APPEND_STAT(i8*, i8*, i64) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i64 @global_page_pool_size(i32*) #1

declare dso_local i32 @item_stats_totals(i32*, i8*) #1

declare dso_local i64 @nz_strcmp(i32, i8*, i8*) #1

declare dso_local i32 @item_stats(i32*, i8*) #1

declare dso_local i32 @slabs_stats(i32*, i8*) #1

declare dso_local i32 @item_stats_sizes(i32*, i8*) #1

declare dso_local i32 @item_stats_sizes_enable(i32*, i8*) #1

declare dso_local i32 @item_stats_sizes_disable(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
