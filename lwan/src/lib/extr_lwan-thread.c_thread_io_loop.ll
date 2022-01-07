; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_thread_io_loop.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_thread_io_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_thread = type { i32, i32*, %struct.lwan* }
%struct.lwan = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.lwan_thread*, i64 }
%struct.epoll_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.lwan_connection* }
%struct.lwan_connection = type { i32 }
%struct.coro_switcher = type { i32 }
%struct.timeout_queue = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Worker thread #%zd starting\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not allocate memory for events\00", align 1
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_io_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_io_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwan_thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwan*, align 8
  %8 = alloca %struct.epoll_event*, align 8
  %9 = alloca %struct.coro_switcher, align 4
  %10 = alloca %struct.timeout_queue, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.epoll_event*, align 8
  %14 = alloca %struct.lwan_connection*, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.lwan_thread*
  store %struct.lwan_thread* %16, %struct.lwan_thread** %3, align 8
  %17 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %18 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %21 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %26 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %25, i32 0, i32 2
  %27 = load %struct.lwan*, %struct.lwan** %26, align 8
  %28 = getelementptr inbounds %struct.lwan, %struct.lwan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @min(i32 %31, i32 1024)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %34 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %33, i32 0, i32 2
  %35 = load %struct.lwan*, %struct.lwan** %34, align 8
  store %struct.lwan* %35, %struct.lwan** %7, align 8
  %36 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %37 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %38 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %37, i32 0, i32 2
  %39 = load %struct.lwan*, %struct.lwan** %38, align 8
  %40 = getelementptr inbounds %struct.lwan, %struct.lwan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.lwan_thread*, %struct.lwan_thread** %41, align 8
  %43 = ptrtoint %struct.lwan_thread* %36 to i64
  %44 = ptrtoint %struct.lwan_thread* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 24
  %47 = add nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 @lwan_set_thread_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = call %struct.epoll_event* @calloc(i64 %52, i32 16)
  store %struct.epoll_event* %53, %struct.epoll_event** %8, align 8
  %54 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %55 = icmp ne %struct.epoll_event* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @UNLIKELY(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %1
  %61 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %1
  %63 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %64 = call i32 @update_date_cache(%struct.lwan_thread* %63)
  %65 = load %struct.lwan*, %struct.lwan** %7, align 8
  %66 = call i32 @timeout_queue_init(%struct.timeout_queue* %10, %struct.lwan* %65)
  %67 = load %struct.lwan*, %struct.lwan** %7, align 8
  %68 = getelementptr inbounds %struct.lwan, %struct.lwan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @pthread_barrier_wait(i32* %69)
  br label %71

71:                                               ; preds = %145, %94, %62
  %72 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @turn_timer_wheel(%struct.timeout_queue* %10, %struct.lwan_thread* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @epoll_wait(i32 %75, %struct.epoll_event* %76, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @UNLIKELY(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %71
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EBADF, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EINVAL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %85
  br label %146

94:                                               ; preds = %89
  br label %71

95:                                               ; preds = %71
  %96 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  store %struct.epoll_event* %96, %struct.epoll_event** %13, align 8
  br label %97

97:                                               ; preds = %142, %95
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = load %struct.epoll_event*, %struct.epoll_event** %13, align 8
  %103 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.lwan_connection*, %struct.lwan_connection** %104, align 8
  %106 = icmp ne %struct.lwan_connection* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @UNLIKELY(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %114 = load %struct.lwan*, %struct.lwan** %7, align 8
  %115 = getelementptr inbounds %struct.lwan, %struct.lwan* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @accept_nudge(i32 %112, %struct.lwan_thread* %113, i32 %116, %struct.timeout_queue* %10, %struct.coro_switcher* %9, i32 %117)
  br label %142

119:                                              ; preds = %101
  %120 = load %struct.epoll_event*, %struct.epoll_event** %13, align 8
  %121 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load %struct.lwan_connection*, %struct.lwan_connection** %122, align 8
  store %struct.lwan_connection* %123, %struct.lwan_connection** %14, align 8
  %124 = load %struct.epoll_event*, %struct.epoll_event** %13, align 8
  %125 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EPOLLRDHUP, align 4
  %128 = load i32, i32* @EPOLLHUP, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = call i64 @UNLIKELY(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load %struct.lwan_connection*, %struct.lwan_connection** %14, align 8
  %135 = call i32 @timeout_queue_kill(%struct.timeout_queue* %10, %struct.lwan_connection* %134)
  br label %142

136:                                              ; preds = %119
  %137 = load %struct.lwan_connection*, %struct.lwan_connection** %14, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @resume_coro(%struct.timeout_queue* %10, %struct.lwan_connection* %137, i32 %138)
  %140 = load %struct.lwan_connection*, %struct.lwan_connection** %14, align 8
  %141 = call i32 @timeout_queue_move_to_last(%struct.timeout_queue* %10, %struct.lwan_connection* %140)
  br label %142

142:                                              ; preds = %136, %133, %111
  %143 = load %struct.epoll_event*, %struct.epoll_event** %13, align 8
  %144 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %143, i32 1
  store %struct.epoll_event* %144, %struct.epoll_event** %13, align 8
  br label %97

145:                                              ; preds = %97
  br label %71

146:                                              ; preds = %93
  %147 = load %struct.lwan*, %struct.lwan** %7, align 8
  %148 = getelementptr inbounds %struct.lwan, %struct.lwan* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @pthread_barrier_wait(i32* %149)
  %151 = call i32 @timeout_queue_kill_all(%struct.timeout_queue* %10)
  %152 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %153 = call i32 @free(%struct.epoll_event* %152)
  ret i8* null
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @lwan_status_debug(i8*, i32) #1

declare dso_local i32 @lwan_set_thread_name(i8*) #1

declare dso_local %struct.epoll_event* @calloc(i64, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local i32 @update_date_cache(%struct.lwan_thread*) #1

declare dso_local i32 @timeout_queue_init(%struct.timeout_queue*, %struct.lwan*) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @turn_timer_wheel(%struct.timeout_queue*, %struct.lwan_thread*, i32) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @accept_nudge(i32, %struct.lwan_thread*, i32, %struct.timeout_queue*, %struct.coro_switcher*, i32) #1

declare dso_local i32 @timeout_queue_kill(%struct.timeout_queue*, %struct.lwan_connection*) #1

declare dso_local i32 @resume_coro(%struct.timeout_queue*, %struct.lwan_connection*, i32) #1

declare dso_local i32 @timeout_queue_move_to_last(%struct.timeout_queue*, %struct.lwan_connection*) #1

declare dso_local i32 @timeout_queue_kill_all(%struct.timeout_queue*) #1

declare dso_local i32 @free(%struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
