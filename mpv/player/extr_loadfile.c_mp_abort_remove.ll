; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.mp_abort_entry** }
%struct.mp_abort_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_abort_remove(%struct.MPContext* %0, %struct.mp_abort_entry* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_abort_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.mp_abort_entry* %1, %struct.mp_abort_entry** %4, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 2
  %18 = load %struct.mp_abort_entry**, %struct.mp_abort_entry*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mp_abort_entry*, %struct.mp_abort_entry** %18, i64 %20
  %22 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %21, align 8
  %23 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %24 = icmp eq %struct.mp_abort_entry* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 2
  %28 = load %struct.mp_abort_entry**, %struct.mp_abort_entry*** %27, align 8
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_abort_entry** %28, i32 %31, i32 %32)
  %34 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %35 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %34, i32 0, i32 0
  %36 = call i32 @TA_FREEP(i32* %35)
  store %struct.mp_abort_entry* null, %struct.mp_abort_entry** %4, align 8
  br label %41

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %25, %9
  %42 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %43 = icmp ne %struct.mp_abort_entry* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_abort_entry**, i32, i32) #1

declare dso_local i32 @TA_FREEP(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
