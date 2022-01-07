; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_write_entry.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.logger_stats = type { i32, i32 }

@WATCHER_LIMIT = common dso_local global i32 0, align 4
@watchers = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [57 x i8] c"LOGGER: Watcher had no free space for line of size (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"LOGGER: Fast skipped for watcher [%d] due to failed_flush\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"skipped=%llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"LOGGER: Failed to flatten skipped message into watcher [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.logger_stats*, i8*, i32)* @logger_thread_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logger_thread_write_entry(%struct.TYPE_6__* %0, %struct.logger_stats* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.logger_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.logger_stats* %1, %struct.logger_stats** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %129, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @WATCHER_LIMIT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %132

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @watchers, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %11, align 8
  store i8* null, i8** %12, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %17
  br label %129

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %62, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 128
  %47 = call i64 @bipbuf_request(i32 %44, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %12, align 8
  %49 = icmp eq i8* %48, null
  br label %50

50:                                               ; preds = %41, %36
  %51 = phi i1 [ false, %36 ], [ %49, %41 ]
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @logger_thread_poll_watchers(i32 0, i32 %53)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 128
  %59 = call i32 @L_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %52
  br label %36

63:                                               ; preds = %50
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @L_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.logger_stats*, %struct.logger_stats** %6, align 8
  %78 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %129

81:                                               ; preds = %63
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @snprintf(i8* %87, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sge i32 %92, 128
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94, %86
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @L_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.logger_stats*, %struct.logger_stats** %6, align 8
  %107 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %129

110:                                              ; preds = %94
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @bipbuf_push(i32 %113, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %110, %81
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @bipbuf_offer(i32 %121, i8* %122, i32 %123)
  %125 = load %struct.logger_stats*, %struct.logger_stats** %6, align 8
  %126 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %118, %97, %68, %34
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %13

132:                                              ; preds = %13
  ret void
}

declare dso_local i64 @bipbuf_request(i32, i32) #1

declare dso_local i64 @logger_thread_poll_watchers(i32, i32) #1

declare dso_local i32 @L_DEBUG(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @bipbuf_push(i32, i32) #1

declare dso_local i32 @bipbuf_offer(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
