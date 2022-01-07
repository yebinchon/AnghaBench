; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_sync_pair_vid_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_sync_pair_vid_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_pair_vid = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sync_pair_vid_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_pair_vid_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sync_pair_vid*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sync_pair_vid*
  store %struct.sync_pair_vid* %5, %struct.sync_pair_vid** %3, align 8
  %6 = call i32 (...) @obs_enter_graphics()
  %7 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %3, align 8
  %8 = getelementptr inbounds %struct.sync_pair_vid, %struct.sync_pair_vid* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gs_texture_destroy(i32 %9)
  %11 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %3, align 8
  %12 = getelementptr inbounds %struct.sync_pair_vid, %struct.sync_pair_vid* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gs_texture_destroy(i32 %13)
  %15 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %3, align 8
  %16 = getelementptr inbounds %struct.sync_pair_vid, %struct.sync_pair_vid* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gs_texture_destroy(i32 %17)
  %19 = call i32 (...) @obs_leave_graphics()
  %20 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %3, align 8
  %21 = call i32 @bfree(%struct.sync_pair_vid* %20)
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @bfree(%struct.sync_pair_vid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
