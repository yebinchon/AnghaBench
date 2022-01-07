; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_free_dr_buffer_on_dr_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_free_dr_buffer_on_dr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_dr_context = type { %struct.dr_helper* }
%struct.dr_helper = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @free_dr_buffer_on_dr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dr_buffer_on_dr_thread(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.free_dr_context*, align 8
  %6 = alloca %struct.dr_helper*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.free_dr_context*
  store %struct.free_dr_context* %9, %struct.free_dr_context** %5, align 8
  %10 = load %struct.free_dr_context*, %struct.free_dr_context** %5, align 8
  %11 = getelementptr inbounds %struct.free_dr_context, %struct.free_dr_context* %10, i32 0, i32 0
  %12 = load %struct.dr_helper*, %struct.dr_helper** %11, align 8
  store %struct.dr_helper* %12, %struct.dr_helper** %6, align 8
  %13 = load %struct.dr_helper*, %struct.dr_helper** %6, align 8
  %14 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.dr_helper*, %struct.dr_helper** %6, align 8
  %17 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.free_dr_context*, %struct.free_dr_context** %5, align 8
  %22 = getelementptr inbounds %struct.free_dr_context, %struct.free_dr_context* %21, i32 0, i32 0
  %23 = load %struct.dr_helper*, %struct.dr_helper** %22, align 8
  %24 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (...) @pthread_self()
  %27 = call i64 @pthread_equal(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi i1 [ false, %2 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.dr_helper*, %struct.dr_helper** %6, align 8
  %33 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %32, i32 0, i32 1
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.free_dr_context*, %struct.free_dr_context** %5, align 8
  %39 = call i32 @dr_thread_free(%struct.free_dr_context* %38)
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.dr_helper*, %struct.dr_helper** %6, align 8
  %42 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.free_dr_context*, %struct.free_dr_context** %5, align 8
  %45 = call i32 @mp_dispatch_enqueue(i32 %43, i32 (%struct.free_dr_context*)* @dr_thread_free, %struct.free_dr_context* %44)
  br label %46

46:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @dr_thread_free(%struct.free_dr_context*) #1

declare dso_local i32 @mp_dispatch_enqueue(i32, i32 (%struct.free_dr_context*)*, %struct.free_dr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
