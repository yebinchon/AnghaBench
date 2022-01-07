; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_add.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32 }
%struct.mp_abort_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_abort_add(%struct.MPContext* %0, %struct.mp_abort_entry* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_abort_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.mp_abort_entry* %1, %struct.mp_abort_entry** %4, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %9 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 @mp_cancel_new(i32* null)
  %16 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %17 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %25 = call i32 @MP_TARRAY_APPEND(i32* null, i32 %20, i32 %23, %struct.mp_abort_entry* %24)
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %28 = call i32 @mp_abort_recheck_locked(%struct.MPContext* %26, %struct.mp_abort_entry* %27)
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_cancel_new(i32*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i32, i32, %struct.mp_abort_entry*) #1

declare dso_local i32 @mp_abort_recheck_locked(%struct.MPContext*, %struct.mp_abort_entry*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
