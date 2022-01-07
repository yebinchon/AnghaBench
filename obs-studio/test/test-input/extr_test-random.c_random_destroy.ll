; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-random.c_random_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-random.c_random_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.random_tex = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @random_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.random_tex*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.random_tex*
  store %struct.random_tex* %5, %struct.random_tex** %3, align 8
  %6 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %7 = icmp ne %struct.random_tex* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %10 = getelementptr inbounds %struct.random_tex, %struct.random_tex* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %15 = getelementptr inbounds %struct.random_tex, %struct.random_tex* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @os_event_signal(i32 %16)
  %18 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %19 = getelementptr inbounds %struct.random_tex, %struct.random_tex* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pthread_join(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %13, %8
  %23 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %24 = getelementptr inbounds %struct.random_tex, %struct.random_tex* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @os_event_destroy(i32 %25)
  %27 = load %struct.random_tex*, %struct.random_tex** %3, align 8
  %28 = call i32 @bfree(%struct.random_tex* %27)
  br label %29

29:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(%struct.random_tex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
