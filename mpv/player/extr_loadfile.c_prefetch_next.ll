; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_prefetch_next.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_prefetch_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.playlist_entry = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Prefetching: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prefetch_next(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.playlist_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = call %struct.playlist_entry* @mp_next_file(%struct.MPContext* %12, i32 1, i32 0, i32 0)
  store %struct.playlist_entry* %13, %struct.playlist_entry** %3, align 8
  %14 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %15 = icmp ne %struct.playlist_entry* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %23 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %29 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @MP_VERBOSE(%struct.MPContext* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %34 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %37 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @start_open(%struct.MPContext* %32, i64 %35, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %10, %26, %21, %16, %11
  ret void
}

declare dso_local %struct.playlist_entry* @mp_next_file(%struct.MPContext*, i32, i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i64) #1

declare dso_local i32 @start_open(%struct.MPContext*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
