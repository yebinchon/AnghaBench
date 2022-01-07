; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_add_user_tex.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_add_user_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_user_shader_tex = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gl_video = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @add_user_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_user_tex(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gl_user_shader_tex, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gl_video*, align 8
  %7 = bitcast %struct.gl_user_shader_tex* %4 to i64*
  store i64 %1, i64* %7, align 4
  store i8* %0, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.gl_video*
  store %struct.gl_video* %9, %struct.gl_video** %6, align 8
  %10 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %4, i32 0, i32 1
  %14 = call i32 @ra_tex_create(i32 %12, %struct.TYPE_2__* %13)
  %15 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @TA_FREEP(i32* %17)
  %19 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %25 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %26 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %29 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %struct.gl_user_shader_tex* %4 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @MP_TARRAY_APPEND(%struct.gl_video* %24, i32 %27, i32 %30, i64 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ra_tex_create(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @TA_FREEP(i32*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.gl_video*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
