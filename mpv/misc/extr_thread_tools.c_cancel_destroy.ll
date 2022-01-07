; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_cancel_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_cancel_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cancel = type { i64*, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cancel_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cancel*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mp_cancel*
  store %struct.mp_cancel* %5, %struct.mp_cancel** %3, align 8
  %6 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %7 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %15 = call i32 @mp_cancel_set_parent(%struct.mp_cancel* %14, i32* null)
  %16 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %17 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @close(i64 %27)
  %29 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %30 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @close(i64 %33)
  br label %35

35:                                               ; preds = %22, %1
  %36 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %37 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %36, i32 0, i32 2
  %38 = call i32 @pthread_mutex_destroy(i32* %37)
  %39 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %40 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %39, i32 0, i32 1
  %41 = call i32 @pthread_cond_destroy(i32* %40)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_cancel_set_parent(%struct.mp_cancel*, i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
