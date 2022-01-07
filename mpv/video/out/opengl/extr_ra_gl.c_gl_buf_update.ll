; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_update.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { %struct.TYPE_4__, %struct.ra_buf_gl* }
%struct.TYPE_4__ = type { i32 }
%struct.ra_buf_gl = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32, i64, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*, i32, i8*, i64)* @gl_buf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_buf_update(%struct.ra* %0, %struct.ra_buf* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ra*, align 8
  %7 = alloca %struct.ra_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.ra_buf_gl*, align 8
  store %struct.ra* %0, %struct.ra** %6, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ra*, %struct.ra** %6, align 8
  %14 = call %struct.TYPE_5__* @ra_gl_get(%struct.ra* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.ra_buf*, %struct.ra_buf** %7, align 8
  %16 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %15, i32 0, i32 1
  %17 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %16, align 8
  store %struct.ra_buf_gl* %17, %struct.ra_buf_gl** %12, align 8
  %18 = load %struct.ra_buf*, %struct.ra_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %12, align 8
  %27 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %12, align 8
  %30 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(i32 %28, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32 (i32, i32, i64, i8*)*, i32 (i32, i32, i64, i8*)** %34, align 8
  %36 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %12, align 8
  %37 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 %35(i32 %38, i32 %39, i64 %40, i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %12, align 8
  %47 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %45(i32 %48, i32 0)
  ret void
}

declare dso_local %struct.TYPE_5__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
