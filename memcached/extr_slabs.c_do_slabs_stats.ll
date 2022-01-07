; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_stats.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.thread_stats = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@POWER_SMALLEST = common dso_local global i32 0, align 4
@power_largest = common dso_local global i32 0, align 4
@slabclass = common dso_local global %struct.TYPE_5__* null, align 8
@STAT_KEY_LEN = common dso_local global i32 0, align 4
@STAT_VAL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"chunks_per_page\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"total_pages\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"total_chunks\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"used_chunks\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"free_chunks\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"free_chunks_end\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"get_hits\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cmd_set\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"delete_hits\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"incr_hits\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"decr_hits\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"cas_hits\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"cas_badval\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"touch_hits\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"active_slabs\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"total_malloced\00", align 1
@mem_malloced = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32*, i32, i32*, i32, i8*)*, i8*)* @do_slabs_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_slabs_stats(i32 (i32*, i32, i32*, i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i32*, i32, i32*, i32, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread_stats, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 (i32*, i32, i32*, i32, i8*)* %0, i32 (i32*, i32, i32*, i32, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = call i32 @threadlocal_stats_aggregate(%struct.thread_stats* %7)
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @POWER_SMALLEST, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %153, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @power_largest, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %156

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @slabclass, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %152

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* @STAT_KEY_LEN, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %11, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %42 = load i32, i32* @STAT_VAL_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @APPEND_NUM_STAT(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @APPEND_NUM_STAT(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @APPEND_NUM_STAT(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = mul i64 %57, %58
  %60 = call i32 @APPEND_NUM_STAT(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = mul i64 %62, %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = call i32 @APPEND_NUM_STAT(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @APPEND_NUM_STAT(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @APPEND_NUM_STAT(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @APPEND_NUM_STAT(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %5, align 4
  %87 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @APPEND_NUM_STAT(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @APPEND_NUM_STAT(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* %5, align 4
  %105 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @APPEND_NUM_STAT(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* %5, align 4
  %114 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @APPEND_NUM_STAT(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @APPEND_NUM_STAT(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @APPEND_NUM_STAT(i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* %5, align 4
  %141 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %7, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @APPEND_NUM_STAT(i32 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  %151 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %152

152:                                              ; preds = %31, %22
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %18

156:                                              ; preds = %18
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i64 %158)
  %160 = load i64, i64* @mem_malloced, align 8
  %161 = call i32 @APPEND_STAT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %160)
  %162 = load i32 (i32*, i32, i32*, i32, i8*)*, i32 (i32*, i32, i32*, i32, i8*)** %3, align 8
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 %162(i32* null, i32 0, i32* null, i32 0, i8* %163)
  ret void
}

declare dso_local i32 @threadlocal_stats_aggregate(%struct.thread_stats*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @APPEND_NUM_STAT(i32, i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @APPEND_STAT(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
