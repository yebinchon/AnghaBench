; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_lru_maintainer_juggle.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_lru_maintainer_juggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TEMP_LRU = common dso_local global i32 0, align 4
@lru_locks = common dso_local global i32* null, align 8
@COLD_LRU = common dso_local global i32 0, align 4
@tails = common dso_local global %struct.TYPE_3__** null, align 8
@current_time = common dso_local global i32 0, align 4
@sizes_bytes = common dso_local global i64* null, align 8
@HOT_LRU = common dso_local global i32 0, align 4
@WARM_LRU = common dso_local global i32 0, align 4
@LRU_PULL_CRAWL_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lru_maintainer_juggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_maintainer_juggle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @slabs_available_chunks(i32 %11, i32* null, i32* %6)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 3), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 500
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @TEMP_LRU, align 4
  %22 = call i64 @lru_pull_tail(i32 %20, i32 %21, i64 0, i32 0, i32 0, i32* null)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %16

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 2), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %133

36:                                               ; preds = %33
  %37 = load i32*, i32** @lru_locks, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @COLD_LRU, align 4
  %40 = or i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = call i32 @pthread_mutex_lock(i32* %42)
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tails, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @COLD_LRU, align 4
  %47 = or i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load i32, i32* @current_time, align 4
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tails, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @COLD_LRU, align 4
  %57 = or i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %53, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %36
  %65 = load i64*, i64** @sizes_bytes, align 8
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @COLD_LRU, align 4
  %68 = or i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %5, align 8
  %74 = load i32*, i32** @lru_locks, align 8
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @COLD_LRU, align 4
  %77 = or i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = call i32 @pthread_mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 1), align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32*, i32** @lru_locks, align 8
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @HOT_LRU, align 4
  %90 = or i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = call i32 @pthread_mutex_lock(i32* %92)
  %94 = load i64*, i64** @sizes_bytes, align 8
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @HOT_LRU, align 4
  %97 = or i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %5, align 8
  %103 = load i32*, i32** @lru_locks, align 8
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @HOT_LRU, align 4
  %106 = or i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = call i32 @pthread_mutex_unlock(i32* %108)
  %110 = load i32*, i32** @lru_locks, align 8
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @WARM_LRU, align 4
  %113 = or i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = call i32 @pthread_mutex_lock(i32* %115)
  %117 = load i64*, i64** @sizes_bytes, align 8
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @WARM_LRU, align 4
  %120 = or i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %5, align 8
  %126 = load i32*, i32** @lru_locks, align 8
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @WARM_LRU, align 4
  %129 = or i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = call i32 @pthread_mutex_unlock(i32* %131)
  br label %133

133:                                              ; preds = %64, %33
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %176, %133
  %135 = load i32, i32* %3, align 4
  %136 = icmp slt i32 %135, 500
  br i1 %136, label %137, label %179

137:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @HOT_LRU, align 4
  %140 = load i64, i64* %5, align 8
  %141 = load i32, i32* @LRU_PULL_CRAWL_BLOCKS, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @lru_pull_tail(i32 %138, i32 %139, i64 %140, i32 %141, i32 %142, i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* @WARM_LRU, align 4
  %148 = load i64, i64* %5, align 8
  %149 = load i32, i32* @LRU_PULL_CRAWL_BLOCKS, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i64 @lru_pull_tail(i32 %146, i32 %147, i64 %148, i32 %149, i32 %150, i32* null)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145, %137
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %153, %145
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 2), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* @COLD_LRU, align 4
  %162 = load i64, i64* %5, align 8
  %163 = load i32, i32* @LRU_PULL_CRAWL_BLOCKS, align 4
  %164 = call i64 @lru_pull_tail(i32 %160, i32 %161, i64 %162, i32 %163, i32 0, i32* null)
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %159, %156
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %179

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %134

179:                                              ; preds = %172, %134
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @slabs_available_chunks(i32, i32*, i32*) #1

declare dso_local i64 @lru_pull_tail(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
