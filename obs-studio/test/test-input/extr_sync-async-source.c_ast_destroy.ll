; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-async-source.c_ast_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-async-source.c_ast_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_sync_test = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ast_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.async_sync_test*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.async_sync_test*
  store %struct.async_sync_test* %5, %struct.async_sync_test** %3, align 8
  %6 = load %struct.async_sync_test*, %struct.async_sync_test** %3, align 8
  %7 = getelementptr inbounds %struct.async_sync_test, %struct.async_sync_test* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.async_sync_test*, %struct.async_sync_test** %3, align 8
  %12 = getelementptr inbounds %struct.async_sync_test, %struct.async_sync_test* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @os_event_signal(i32 %13)
  %15 = load %struct.async_sync_test*, %struct.async_sync_test** %3, align 8
  %16 = getelementptr inbounds %struct.async_sync_test, %struct.async_sync_test* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pthread_join(i32 %17, i32* null)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.async_sync_test*, %struct.async_sync_test** %3, align 8
  %21 = getelementptr inbounds %struct.async_sync_test, %struct.async_sync_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @os_event_destroy(i32 %22)
  %24 = load %struct.async_sync_test*, %struct.async_sync_test** %3, align 8
  %25 = call i32 @bfree(%struct.async_sync_test* %24)
  ret void
}

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(%struct.async_sync_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
