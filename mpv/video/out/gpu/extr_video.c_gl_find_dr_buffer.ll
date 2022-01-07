; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_find_dr_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_find_dr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.gl_video = type { i32, %struct.dr_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dr_buffer* (%struct.gl_video*, i32*)* @gl_find_dr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dr_buffer* @gl_find_dr_buffer(%struct.gl_video* %0, i32* %1) #0 {
  %3 = alloca %struct.dr_buffer*, align 8
  %4 = alloca %struct.gl_video*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dr_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.gl_video* %0, %struct.gl_video** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %13 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %18 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %17, i32 0, i32 1
  %19 = load %struct.dr_buffer*, %struct.dr_buffer** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %19, i64 %21
  store %struct.dr_buffer* %22, %struct.dr_buffer** %7, align 8
  %23 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp uge i32* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %16
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = icmp ult i32* %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  store %struct.dr_buffer* %44, %struct.dr_buffer** %3, align 8
  br label %50

45:                                               ; preds = %37, %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  store %struct.dr_buffer* null, %struct.dr_buffer** %3, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.dr_buffer*, %struct.dr_buffer** %3, align 8
  ret %struct.dr_buffer* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
