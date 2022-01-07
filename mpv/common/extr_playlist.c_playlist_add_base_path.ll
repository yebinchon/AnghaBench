; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add_base_path.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add_base_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i8*, %struct.playlist_entry* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_add_base_path(%struct.playlist* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.playlist* %0, %struct.playlist** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @bstrcmp0(i64 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  br label %52

17:                                               ; preds = %11
  %18 = load %struct.playlist*, %struct.playlist** %4, align 8
  %19 = getelementptr inbounds %struct.playlist, %struct.playlist* %18, i32 0, i32 0
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  store %struct.playlist_entry* %20, %struct.playlist_entry** %5, align 8
  br label %21

21:                                               ; preds = %48, %17
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %23 = icmp ne %struct.playlist_entry* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %26 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @bstr0(i8* %27)
  %29 = call i32 @mp_is_url(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %24
  %32 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %33 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %34 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @bstr0(i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @mp_path_join_bstr(%struct.playlist_entry* %32, i64 %38, i32 %36)
  store i8* %39, i8** %6, align 8
  %40 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %41 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @talloc_free(i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %46 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %31, %24
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %50 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %49, i32 0, i32 1
  %51 = load %struct.playlist_entry*, %struct.playlist_entry** %50, align 8
  store %struct.playlist_entry* %51, %struct.playlist_entry** %5, align 8
  br label %21

52:                                               ; preds = %16, %21
  ret void
}

declare dso_local i64 @bstrcmp0(i64, i8*) #1

declare dso_local i32 @mp_is_url(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i8* @mp_path_join_bstr(%struct.playlist_entry*, i64, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
