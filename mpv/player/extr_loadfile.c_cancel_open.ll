; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_cancel_open.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_cancel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i64, i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @cancel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_open(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @mp_cancel_trigger(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pthread_join(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @demux_cancel_and_free(i32* %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 4
  %39 = call i32 @TA_FREEP(i64* %38)
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 3
  %42 = call i32 @TA_FREEP(i64* %41)
  %43 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 2
  %45 = call i32 @TA_FREEP(i64* %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 1
  %48 = call i32 @atomic_store(i32* %47, i32 0)
  ret void
}

declare dso_local i32 @mp_cancel_trigger(i64) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @demux_cancel_and_free(i32*) #1

declare dso_local i32 @TA_FREEP(i64*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
