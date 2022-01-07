; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_shutdown.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Shutting down\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Shutting down URL handlers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_shutdown(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  %3 = call i32 @lwan_status_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.lwan*, %struct.lwan** %2, align 8
  %5 = getelementptr inbounds %struct.lwan, %struct.lwan* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @free(i32 %7)
  %9 = load %struct.lwan*, %struct.lwan** %2, align 8
  %10 = getelementptr inbounds %struct.lwan, %struct.lwan* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free(i32 %12)
  %14 = load %struct.lwan*, %struct.lwan** %2, align 8
  %15 = getelementptr inbounds %struct.lwan, %struct.lwan* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free(i32 %17)
  %19 = call i32 (...) @lwan_job_thread_shutdown()
  %20 = load %struct.lwan*, %struct.lwan** %2, align 8
  %21 = call i32 @lwan_thread_shutdown(%struct.lwan* %20)
  %22 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.lwan*, %struct.lwan** %2, align 8
  %24 = getelementptr inbounds %struct.lwan, %struct.lwan* %23, i32 0, i32 1
  %25 = call i32 @lwan_trie_destroy(i32* %24)
  %26 = load %struct.lwan*, %struct.lwan** %2, align 8
  %27 = getelementptr inbounds %struct.lwan, %struct.lwan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free(i32 %28)
  %30 = load %struct.lwan*, %struct.lwan** %2, align 8
  %31 = call i32 @lwan_response_shutdown(%struct.lwan* %30)
  %32 = call i32 (...) @lwan_tables_shutdown()
  %33 = load %struct.lwan*, %struct.lwan** %2, align 8
  %34 = call i32 @lwan_status_shutdown(%struct.lwan* %33)
  %35 = call i32 (...) @lwan_http_authorize_shutdown()
  %36 = call i32 (...) @lwan_readahead_shutdown()
  %37 = load %struct.lwan*, %struct.lwan** %2, align 8
  %38 = call i32 @lwan_fd_watch_shutdown(%struct.lwan* %37)
  ret void
}

declare dso_local i32 @lwan_status_info(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @lwan_job_thread_shutdown(...) #1

declare dso_local i32 @lwan_thread_shutdown(%struct.lwan*) #1

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local i32 @lwan_trie_destroy(i32*) #1

declare dso_local i32 @lwan_response_shutdown(%struct.lwan*) #1

declare dso_local i32 @lwan_tables_shutdown(...) #1

declare dso_local i32 @lwan_status_shutdown(%struct.lwan*) #1

declare dso_local i32 @lwan_http_authorize_shutdown(...) #1

declare dso_local i32 @lwan_readahead_shutdown(...) #1

declare dso_local i32 @lwan_fd_watch_shutdown(%struct.lwan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
