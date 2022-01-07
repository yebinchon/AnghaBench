; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_abort_async.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_abort_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, %struct.mp_abort_entry** }
%struct.mp_abort_entry = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i32*, i32, i64)* @abort_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_async(%struct.MPContext* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_abort_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 2
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 3
  %29 = load %struct.mp_abort_entry**, %struct.mp_abort_entry*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mp_abort_entry*, %struct.mp_abort_entry** %29, i64 %31
  %33 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %32, align 8
  store %struct.mp_abort_entry* %33, %struct.mp_abort_entry** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %26
  %37 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %10, align 8
  %38 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %10, align 8
  %47 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %10, align 8
  %53 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %42, %26
  %58 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %59 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %10, align 8
  %60 = call i32 @mp_abort_trigger_locked(%struct.MPContext* %58, %struct.mp_abort_entry* %59)
  br label %61

61:                                               ; preds = %57, %51, %45, %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %67 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %66, i32 0, i32 2
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_abort_trigger_locked(%struct.MPContext*, %struct.mp_abort_entry*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
