; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_lock_video_textures.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_lock_video_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.texplane* }
%struct.texplane = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Texture lock failure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @d3d_lock_video_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_lock_video_textures(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.texplane*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.texplane*, %struct.texplane** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.texplane, %struct.texplane* %15, i64 %17
  store %struct.texplane* %18, %struct.texplane** %5, align 8
  %19 = load %struct.texplane*, %struct.texplane** %5, align 8
  %20 = getelementptr inbounds %struct.texplane, %struct.texplane* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %12
  %25 = load %struct.texplane*, %struct.texplane** %5, align 8
  %26 = getelementptr inbounds %struct.texplane, %struct.texplane* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.texplane*, %struct.texplane** %5, align 8
  %30 = getelementptr inbounds %struct.texplane, %struct.texplane* %29, i32 0, i32 0
  %31 = call i32 @IDirect3DTexture9_LockRect(i32 %28, i32 0, %struct.TYPE_9__* %30, i32* null, i32 0)
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @MP_VERBOSE(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @d3d_unlock_video_objects(%struct.TYPE_8__* %37)
  store i32 0, i32* %2, align 4
  br label %45

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %6

44:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DTexture9_LockRect(i32, i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @d3d_unlock_video_objects(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
