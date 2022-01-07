; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_poll.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { %struct.ra_buf_gl*, i32 }
%struct.ra_buf_gl = type { i32* }
%struct.TYPE_3__ = type { i64 (i32*, i32, i32)*, i32 (i32*)* }

@GL_ALREADY_SIGNALED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_buf*)* @gl_buf_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_buf_poll(%struct.ra* %0, %struct.ra_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_buf*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ra_buf_gl*, align 8
  %8 = alloca i64, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %5, align 8
  %9 = load %struct.ra_buf*, %struct.ra_buf** %5, align 8
  %10 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.ra*, %struct.ra** %4, align 8
  %16 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load %struct.ra_buf*, %struct.ra_buf** %5, align 8
  %18 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %17, i32 0, i32 0
  %19 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %18, align 8
  store %struct.ra_buf_gl* %19, %struct.ra_buf_gl** %7, align 8
  %20 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %7, align 8
  %21 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64 (i32*, i32, i32)*, i64 (i32*, i32, i32)** %26, align 8
  %28 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %7, align 8
  %29 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 %27(i32* %30, i32 0, i32 0)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @GL_ALREADY_SIGNALED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %7, align 8
  %40 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %38(i32* %41)
  %43 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %7, align 8
  %44 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %35, %24
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %7, align 8
  %48 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
