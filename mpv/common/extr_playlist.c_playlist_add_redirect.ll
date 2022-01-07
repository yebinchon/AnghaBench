; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add_redirect.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i32, i32, %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_add_redirect(%struct.playlist* %0, i8* %1) #0 {
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.playlist*, %struct.playlist** %3, align 8
  %8 = getelementptr inbounds %struct.playlist, %struct.playlist* %7, i32 0, i32 0
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  store %struct.playlist_entry* %9, %struct.playlist_entry** %5, align 8
  br label %10

10:                                               ; preds = %36, %2
  %11 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %12 = icmp ne %struct.playlist_entry* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %15 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @talloc_strdup(%struct.playlist_entry* %20, i8* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %28 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @MP_TARRAY_APPEND(%struct.playlist_entry* %26, i32 %29, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %25, %19
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %38 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %37, i32 0, i32 2
  %39 = load %struct.playlist_entry*, %struct.playlist_entry** %38, align 8
  store %struct.playlist_entry* %39, %struct.playlist_entry** %5, align 8
  br label %10

40:                                               ; preds = %18, %10
  ret void
}

declare dso_local i8* @talloc_strdup(%struct.playlist_entry*, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.playlist_entry*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
