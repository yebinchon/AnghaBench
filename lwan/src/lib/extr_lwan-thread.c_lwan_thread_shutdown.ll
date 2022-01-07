; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_shutdown.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.lwan_thread*, i32 }
%struct.lwan_thread = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Shutting down threads\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_shutdown(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lwan_thread*, align 8
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  %7 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.lwan*, %struct.lwan** %2, align 8
  %11 = getelementptr inbounds %struct.lwan, %struct.lwan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = load %struct.lwan*, %struct.lwan** %2, align 8
  %17 = getelementptr inbounds %struct.lwan, %struct.lwan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.lwan_thread*, %struct.lwan_thread** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %19, i64 %21
  store %struct.lwan_thread* %22, %struct.lwan_thread** %4, align 8
  %23 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %24 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @close(i32 %25)
  %27 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %28 = call i32 @lwan_thread_nudge(%struct.lwan_thread* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.lwan*, %struct.lwan** %2, align 8
  %34 = getelementptr inbounds %struct.lwan, %struct.lwan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @pthread_barrier_wait(i32* %35)
  %37 = load %struct.lwan*, %struct.lwan** %2, align 8
  %38 = getelementptr inbounds %struct.lwan, %struct.lwan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @pthread_barrier_destroy(i32* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %85, %32
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.lwan*, %struct.lwan** %2, align 8
  %44 = getelementptr inbounds %struct.lwan, %struct.lwan* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load %struct.lwan*, %struct.lwan** %2, align 8
  %50 = getelementptr inbounds %struct.lwan, %struct.lwan* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.lwan_thread*, %struct.lwan_thread** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %52, i64 %54
  store %struct.lwan_thread* %55, %struct.lwan_thread** %6, align 8
  %56 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %57 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %63 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load %struct.lwan*, %struct.lwan** %2, align 8
  %69 = getelementptr inbounds %struct.lwan, %struct.lwan* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.lwan_thread*, %struct.lwan_thread** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %71, i64 %73
  %75 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pthread_join(i32 %76, i32* null)
  %78 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %79 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %78, i32 0, i32 1
  %80 = call i32 @spsc_queue_free(i32* %79)
  %81 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %82 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @timeouts_close(i32 %83)
  br label %85

85:                                               ; preds = %48
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %41

88:                                               ; preds = %41
  %89 = load %struct.lwan*, %struct.lwan** %2, align 8
  %90 = getelementptr inbounds %struct.lwan, %struct.lwan* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load %struct.lwan_thread*, %struct.lwan_thread** %91, align 8
  %93 = call i32 @free(%struct.lwan_thread* %92)
  ret void
}

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lwan_thread_nudge(%struct.lwan_thread*) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @pthread_barrier_destroy(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @spsc_queue_free(i32*) #1

declare dso_local i32 @timeouts_close(i32) #1

declare dso_local i32 @free(%struct.lwan_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
