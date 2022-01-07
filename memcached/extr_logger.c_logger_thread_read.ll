; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_read.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.logger_stats = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@LOGGER_PARSE_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"LOGGER: Got %d bytes from bipbuffer\0A\00", align 1
@watcher_count = common dso_local global i64 0, align 8
@LOGGER_PARSE_ENTRY_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"LOGGER: Failed to parse log entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"LOGGER: unexpectedly couldn't advance buf pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.logger_stats*)* @logger_thread_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_thread_read(%struct.TYPE_6__* %0, %struct.logger_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.logger_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.logger_stats* %1, %struct.logger_stats** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @bipbuf_peek_all(i32 %24, i32* %6)
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @pthread_mutex_unlock(i32* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %124

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @L_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %64, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @watcher_count, align 8
  %41 = icmp sgt i64 %40, 0
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i1 [ false, %35 ], [ %41, %39 ]
  br i1 %43, label %44, label %77

44:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = load %struct.logger_stats*, %struct.logger_stats** %5, align 8
  %52 = call i32 @logger_thread_parse_entry(%struct.TYPE_7__* %50, %struct.logger_stats* %51, i8* %18, i32* %14)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @LOGGER_PARSE_ENTRY_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %64

59:                                               ; preds = %44
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = load %struct.logger_stats*, %struct.logger_stats** %5, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @logger_thread_write_entry(%struct.TYPE_7__* %60, %struct.logger_stats* %61, i8* %18, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 16, %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %68, %71
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = add i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %35

77:                                               ; preds = %42
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ule i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @pthread_mutex_lock(i32* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @bipbuf_poll(i32 %88, i32 %89)
  store i8* %90, i8** %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.logger_stats*, %struct.logger_stats** %5, align 8
  %95 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.logger_stats*, %struct.logger_stats** %5, align 8
  %104 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = call i32 @pthread_mutex_unlock(i32* %114)
  %116 = load i8*, i8** %8, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %77
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %121 = call i32 @assert(i32 0)
  br label %122

122:                                              ; preds = %118, %77
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %124

124:                                              ; preds = %122, %31
  %125 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i8* @bipbuf_peek_all(i32, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @L_DEBUG(i8*, i32) #2

declare dso_local i32 @logger_thread_parse_entry(%struct.TYPE_7__*, %struct.logger_stats*, i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @logger_thread_write_entry(%struct.TYPE_7__*, %struct.logger_stats*, i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @bipbuf_poll(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
