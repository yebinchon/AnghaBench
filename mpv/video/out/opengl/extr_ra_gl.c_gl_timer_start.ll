; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_timer_start.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_gl* }
%struct.ra_gl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i64*)*, i64 (i32)* }
%struct.gl_timer = type { i64, i32, i32*, i64 }

@GL_QUERY_RESULT = common dso_local global i32 0, align 4
@GL_TIME_ELAPSED = common dso_local global i32 0, align 4
@GL_QUERY_OBJECT_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.gl_timer*)* @gl_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_timer_start(%struct.ra* %0, %struct.gl_timer* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.gl_timer*, align 8
  %5 = alloca %struct.ra_gl*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.gl_timer*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.gl_timer* %1, %struct.gl_timer** %4, align 8
  %8 = load %struct.ra*, %struct.ra** %3, align 8
  %9 = getelementptr inbounds %struct.ra, %struct.ra* %8, i32 0, i32 0
  %10 = load %struct.ra_gl*, %struct.ra_gl** %9, align 8
  store %struct.ra_gl* %10, %struct.ra_gl** %5, align 8
  %11 = load %struct.ra_gl*, %struct.ra_gl** %5, align 8
  %12 = getelementptr inbounds %struct.ra_gl, %struct.ra_gl* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load %struct.gl_timer*, %struct.gl_timer** %4, align 8
  store %struct.gl_timer* %14, %struct.gl_timer** %7, align 8
  %15 = load %struct.ra_gl*, %struct.ra_gl** %5, align 8
  %16 = getelementptr inbounds %struct.ra_gl, %struct.ra_gl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %22 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64 (i32)*, i64 (i32)** %24, align 8
  %26 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %27 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %30 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 %25(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %20
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** %38, align 8
  %40 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %41 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %44 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GL_QUERY_RESULT, align 4
  %49 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %50 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %49, i32 0, i32 3
  %51 = call i32 %39(i32 %47, i32 %48, i64* %50)
  br label %52

52:                                               ; preds = %36, %20
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load i32, i32* @GL_TIME_ELAPSED, align 4
  %57 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %58 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %61 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds i32, i32* %59, i64 %62
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %55(i32 %56, i32 %65)
  %67 = load i64, i64* @GL_QUERY_OBJECT_NUM, align 8
  %68 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %69 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = urem i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.gl_timer*, %struct.gl_timer** %7, align 8
  %73 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  %74 = load %struct.ra_gl*, %struct.ra_gl** %5, align 8
  %75 = getelementptr inbounds %struct.ra_gl, %struct.ra_gl* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %52, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
