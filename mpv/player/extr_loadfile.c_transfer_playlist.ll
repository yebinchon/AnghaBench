; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_transfer_playlist.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_transfer_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }
%struct.playlist = type { %struct.playlist_entry*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Empty playlist!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.playlist*)* @transfer_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_playlist(%struct.MPContext* %0, %struct.playlist* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.playlist* %1, %struct.playlist** %4, align 8
  %6 = load %struct.playlist*, %struct.playlist** %4, align 8
  %7 = getelementptr inbounds %struct.playlist, %struct.playlist* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %2
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = load %struct.playlist*, %struct.playlist** %4, align 8
  %13 = call i32 @prepare_playlist(%struct.MPContext* %11, %struct.playlist* %12)
  %14 = load %struct.playlist*, %struct.playlist** %4, align 8
  %15 = getelementptr inbounds %struct.playlist, %struct.playlist* %14, i32 0, i32 0
  %16 = load %struct.playlist_entry*, %struct.playlist_entry** %15, align 8
  store %struct.playlist_entry* %16, %struct.playlist_entry** %5, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.playlist_entry*, %struct.playlist_entry** %20, align 8
  %22 = icmp ne %struct.playlist_entry* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %10
  %24 = load %struct.playlist*, %struct.playlist** %4, align 8
  %25 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.playlist_entry*, %struct.playlist_entry** %28, align 8
  %30 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @playlist_add_redirect(%struct.playlist* %24, i32 %31)
  br label %33

33:                                               ; preds = %23, %10
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.playlist*, %struct.playlist** %4, align 8
  %38 = call i32 @playlist_transfer_entries(%struct.TYPE_3__* %36, %struct.playlist* %37)
  %39 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %42, align 8
  %44 = icmp ne %struct.playlist_entry* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %33
  %46 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.playlist_entry*, %struct.playlist_entry** %52, align 8
  %54 = call i32 @playlist_remove(%struct.TYPE_3__* %48, %struct.playlist_entry* %53)
  br label %55

55:                                               ; preds = %45, %33
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %57 = icmp ne %struct.playlist_entry* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %60 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.playlist_entry* %59, %struct.playlist_entry** %63, align 8
  br label %64

64:                                               ; preds = %58, %55
  br label %68

65:                                               ; preds = %2
  %66 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %67 = call i32 @MP_WARN(%struct.MPContext* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @prepare_playlist(%struct.MPContext*, %struct.playlist*) #1

declare dso_local i32 @playlist_add_redirect(%struct.playlist*, i32) #1

declare dso_local i32 @playlist_transfer_entries(%struct.TYPE_3__*, %struct.playlist*) #1

declare dso_local i32 @playlist_remove(%struct.TYPE_3__*, %struct.playlist_entry*) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
