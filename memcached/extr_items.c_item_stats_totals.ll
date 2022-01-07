; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_item_stats_totals.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_item_stats_totals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@lru_type_map = common dso_local global i32* null, align 8
@lru_locks = common dso_local global i32* null, align 8
@itemstats = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"expired_unfetched\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"evicted_unfetched\00", align 1
@settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"evicted_active\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"evictions\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reclaimed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"crawler_reclaimed\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"crawler_items_checked\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"lrutail_reflocked\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"moves_to_cold\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"moves_to_warm\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"moves_within_lru\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"direct_reclaims\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"lru_bumps_dropped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_stats_totals(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call i32 @memset(%struct.TYPE_5__* %5, i32 0, i32 96)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %148, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %151

14:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %144, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %147

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** @lru_type_map, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %19, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** @lru_locks, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %63
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %90
  store i64 %93, i64* %91, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %108
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %117
  store i64 %120, i64* %118, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemstats, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %135
  store i64 %138, i64* %136, align 8
  %139 = load i32*, i32** @lru_locks, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  br label %144

144:                                              ; preds = %18
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %15

147:                                              ; preds = %15
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %10

151:                                              ; preds = %10
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 11
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %156)
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 0), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %160, %151
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %166)
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %169)
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %172)
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %175)
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %178)
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 0), align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %164
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %184)
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %187)
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %190)
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %193)
  %195 = call i64 (...) @lru_total_bumps_dropped()
  %196 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %182, %164
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @APPEND_STAT(i8*, i8*, i64) #1

declare dso_local i64 @lru_total_bumps_dropped(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
