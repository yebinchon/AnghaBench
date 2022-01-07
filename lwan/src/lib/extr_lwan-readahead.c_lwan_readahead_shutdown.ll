; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-readahead.c_lwan_readahead_shutdown.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-readahead.c_lwan_readahead_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_readahead_cmd = type { i32 }

@SHUTDOWN = common dso_local global i32 0, align 4
@readahead_pipe_fd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Shutting down readahead thread\00", align 1
@readahead_self = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_readahead_shutdown() #0 {
  %1 = alloca %struct.lwan_readahead_cmd, align 4
  %2 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %1, i32 0, i32 0
  %3 = load i32, i32* @SHUTDOWN, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32*, i32** @readahead_pipe_fd, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @readahead_pipe_fd, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i32*, i32** @readahead_pipe_fd, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %37

17:                                               ; preds = %11, %0
  %18 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** @readahead_pipe_fd, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @write(i32 %21, %struct.lwan_readahead_cmd* %1, i32 4)
  %23 = load i32, i32* @readahead_self, align 4
  %24 = call i32 @pthread_join(i32 %23, i32* null)
  %25 = load i32*, i32** @readahead_pipe_fd, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32*, i32** @readahead_pipe_fd, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32*, i32** @readahead_pipe_fd, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 -1, i32* %34, align 4
  %35 = load i32*, i32** @readahead_pipe_fd, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local i32 @write(i32, %struct.lwan_readahead_cmd*, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
