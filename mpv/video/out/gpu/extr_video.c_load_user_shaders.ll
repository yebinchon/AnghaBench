; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_load_user_shaders.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_load_user_shaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32 }
%struct.bstr = type { i32 }

@add_user_hook = common dso_local global i32 0, align 4
@add_user_tex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, i8**)* @load_user_shaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_user_shaders(%struct.gl_video* %0, i8** %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @load_cached_file(%struct.gl_video* %19, i8* %24)
  %26 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %28 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %31 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %34 = load i32, i32* @add_user_hook, align 4
  %35 = load i32, i32* @add_user_tex, align 4
  %36 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @parse_user_shader(i32 %29, i32 %32, i32 %37, %struct.gl_video* %33, i32 %34, i32 %35)
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %11

42:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @load_cached_file(%struct.gl_video*, i8*) #1

declare dso_local i32 @parse_user_shader(i32, i32, i32, %struct.gl_video*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
