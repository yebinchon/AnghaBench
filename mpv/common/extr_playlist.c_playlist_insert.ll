; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_insert.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry*, %struct.playlist_entry* }
%struct.playlist_entry = type { %struct.playlist*, %struct.playlist_entry*, %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_insert(%struct.playlist* %0, %struct.playlist_entry* %1, %struct.playlist_entry* %2) #0 {
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist* %0, %struct.playlist** %4, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %5, align 8
  store %struct.playlist_entry* %2, %struct.playlist_entry** %6, align 8
  %7 = load %struct.playlist*, %struct.playlist** %4, align 8
  %8 = icmp ne %struct.playlist* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %11 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %10, i32 0, i32 0
  %12 = load %struct.playlist*, %struct.playlist** %11, align 8
  %13 = icmp eq %struct.playlist* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %16 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %15, i32 0, i32 2
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %18 = icmp eq %struct.playlist_entry* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %21 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %20, i32 0, i32 1
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %21, align 8
  %23 = icmp eq %struct.playlist_entry* %22, null
  br label %24

24:                                               ; preds = %19, %14, %9, %3
  %25 = phi i1 [ false, %14 ], [ false, %9 ], [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %29 = icmp ne %struct.playlist_entry* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %32 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %31, i32 0, i32 0
  %33 = load %struct.playlist*, %struct.playlist** %32, align 8
  %34 = load %struct.playlist*, %struct.playlist** %4, align 8
  %35 = icmp eq %struct.playlist* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.playlist*, %struct.playlist** %4, align 8
  %39 = getelementptr inbounds %struct.playlist, %struct.playlist* %38, i32 0, i32 1
  %40 = load %struct.playlist_entry*, %struct.playlist_entry** %39, align 8
  %41 = icmp ne %struct.playlist_entry* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.playlist*, %struct.playlist** %4, align 8
  %44 = getelementptr inbounds %struct.playlist, %struct.playlist* %43, i32 0, i32 0
  %45 = load %struct.playlist_entry*, %struct.playlist_entry** %44, align 8
  %46 = icmp ne %struct.playlist_entry* %45, null
  br label %47

47:                                               ; preds = %42, %30
  %48 = phi i1 [ false, %30 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %47, %24
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %53 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %54 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %53, i32 0, i32 1
  store %struct.playlist_entry* %52, %struct.playlist_entry** %54, align 8
  %55 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %56 = icmp ne %struct.playlist_entry* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %59 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %58, i32 0, i32 2
  %60 = load %struct.playlist_entry*, %struct.playlist_entry** %59, align 8
  %61 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %62 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %61, i32 0, i32 2
  store %struct.playlist_entry* %60, %struct.playlist_entry** %62, align 8
  %63 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %64 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %65 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %64, i32 0, i32 2
  store %struct.playlist_entry* %63, %struct.playlist_entry** %65, align 8
  br label %75

66:                                               ; preds = %51
  %67 = load %struct.playlist*, %struct.playlist** %4, align 8
  %68 = getelementptr inbounds %struct.playlist, %struct.playlist* %67, i32 0, i32 1
  %69 = load %struct.playlist_entry*, %struct.playlist_entry** %68, align 8
  %70 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %71 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %70, i32 0, i32 2
  store %struct.playlist_entry* %69, %struct.playlist_entry** %71, align 8
  %72 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %73 = load %struct.playlist*, %struct.playlist** %4, align 8
  %74 = getelementptr inbounds %struct.playlist, %struct.playlist* %73, i32 0, i32 1
  store %struct.playlist_entry* %72, %struct.playlist_entry** %74, align 8
  br label %75

75:                                               ; preds = %66, %57
  %76 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %77 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %76, i32 0, i32 2
  %78 = load %struct.playlist_entry*, %struct.playlist_entry** %77, align 8
  %79 = icmp ne %struct.playlist_entry* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %82 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %83 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %82, i32 0, i32 2
  %84 = load %struct.playlist_entry*, %struct.playlist_entry** %83, align 8
  %85 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %84, i32 0, i32 1
  store %struct.playlist_entry* %81, %struct.playlist_entry** %85, align 8
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %88 = load %struct.playlist*, %struct.playlist** %4, align 8
  %89 = getelementptr inbounds %struct.playlist, %struct.playlist* %88, i32 0, i32 0
  store %struct.playlist_entry* %87, %struct.playlist_entry** %89, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.playlist*, %struct.playlist** %4, align 8
  %92 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %93 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %92, i32 0, i32 0
  store %struct.playlist* %91, %struct.playlist** %93, align 8
  %94 = load %struct.playlist*, %struct.playlist** %4, align 8
  %95 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %96 = call i32 @talloc_steal(%struct.playlist* %94, %struct.playlist_entry* %95)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_steal(%struct.playlist*, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
