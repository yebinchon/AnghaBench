; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_info_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signal_info*)* @signal_info_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_info_destroy(%struct.signal_info* %0) #0 {
  %2 = alloca %struct.signal_info*, align 8
  store %struct.signal_info* %0, %struct.signal_info** %2, align 8
  %3 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %4 = icmp ne %struct.signal_info* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %7 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %6, i32 0, i32 2
  %8 = call i32 @pthread_mutex_destroy(i32* %7)
  %9 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %10 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %9, i32 0, i32 1
  %11 = call i32 @decl_info_free(i32* %10)
  %12 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %13 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @da_free(i32 %14)
  %16 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %17 = call i32 @bfree(%struct.signal_info* %16)
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @decl_info_free(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @bfree(%struct.signal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
