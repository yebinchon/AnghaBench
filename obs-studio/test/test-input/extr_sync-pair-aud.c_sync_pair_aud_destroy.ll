; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-aud.c_sync_pair_aud_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-aud.c_sync_pair_aud_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_pair_aud = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sync_pair_aud_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_pair_aud_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sync_pair_aud*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sync_pair_aud*
  store %struct.sync_pair_aud* %6, %struct.sync_pair_aud** %3, align 8
  %7 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %8 = icmp ne %struct.sync_pair_aud* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %11 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %16 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @os_event_signal(i32 %17)
  %19 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %20 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pthread_join(i32 %21, i8** %4)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %25 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @os_event_destroy(i32 %26)
  %28 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %29 = call i32 @bfree(%struct.sync_pair_aud* %28)
  br label %30

30:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(%struct.sync_pair_aud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
