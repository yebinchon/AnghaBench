; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_start_conn_timeout_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_start_conn_timeout_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@do_run_conn_timeout_thread = common dso_local global i32 0, align 4
@conn_timeout_tid = common dso_local global i32 0, align 4
@conn_timeout_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't create idle connection timeout thread: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_conn_timeout_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_conn_timeout_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %16

6:                                                ; preds = %0
  store i32 1, i32* @do_run_conn_timeout_thread, align 4
  %7 = load i32, i32* @conn_timeout_thread, align 4
  %8 = call i32 @pthread_create(i32* @conn_timeout_tid, i32* null, i32 %7, i32* null)
  store i32 %8, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %1, align 4
  br label %16

15:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %10, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
