; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_execute_reinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_execute_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.mp_refqueue = type { i32, %struct.mp_image* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_refqueue_execute_reinit(%struct.mp_refqueue* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.mp_refqueue*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.mp_refqueue* %0, %struct.mp_refqueue** %3, align 8
  %5 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %6 = call i64 @mp_refqueue_has_output(%struct.mp_refqueue* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %10 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %9, i32 0, i32 1
  %11 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %12 = icmp ne %struct.mp_image* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %44

14:                                               ; preds = %8
  %15 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %16 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %15, i32 0, i32 1
  %17 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  store %struct.mp_image* %17, %struct.mp_image** %4, align 8
  %18 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %19 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %18, i32 0, i32 1
  store %struct.mp_image* null, %struct.mp_image** %19, align 8
  %20 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %21 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %20, i32 0, i32 0
  %22 = call i32 @mp_image_unrefp(i32* %21)
  %23 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %24 = call i32 @mp_refqueue_flush(%struct.mp_refqueue* %23)
  %25 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %26 = call i32 @mp_image_new_ref(%struct.mp_image* %25)
  %27 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %28 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %30 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %14
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %14
  %36 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %37 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mp_image_unref_data(i32 %38)
  %40 = load %struct.mp_refqueue*, %struct.mp_refqueue** %3, align 8
  %41 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %42 = call i32 @mp_refqueue_add_input(%struct.mp_refqueue* %40, %struct.mp_image* %41)
  %43 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  store %struct.mp_image* %43, %struct.mp_image** %2, align 8
  br label %44

44:                                               ; preds = %35, %13
  %45 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %45
}

declare dso_local i64 @mp_refqueue_has_output(%struct.mp_refqueue*) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

declare dso_local i32 @mp_refqueue_flush(%struct.mp_refqueue*) #1

declare dso_local i32 @mp_image_new_ref(%struct.mp_image*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_image_unref_data(i32) #1

declare dso_local i32 @mp_refqueue_add_input(%struct.mp_refqueue*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
