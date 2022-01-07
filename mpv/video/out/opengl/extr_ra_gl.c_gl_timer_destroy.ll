; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_timer_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_timer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.gl_timer = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@GL_QUERY_OBJECT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.gl_timer*)* @gl_timer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_timer_destroy(%struct.ra* %0, %struct.gl_timer* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.gl_timer*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.gl_timer*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.gl_timer* %1, %struct.gl_timer** %4, align 8
  %7 = load %struct.gl_timer*, %struct.gl_timer** %4, align 8
  %8 = icmp ne %struct.gl_timer* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.ra*, %struct.ra** %3, align 8
  %12 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.gl_timer*, %struct.gl_timer** %4, align 8
  store %struct.gl_timer* %13, %struct.gl_timer** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* @GL_QUERY_OBJECT_NUM, align 4
  %18 = load %struct.gl_timer*, %struct.gl_timer** %6, align 8
  %19 = getelementptr inbounds %struct.gl_timer, %struct.gl_timer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %16(i32 %17, i32 %20)
  %22 = load %struct.gl_timer*, %struct.gl_timer** %6, align 8
  %23 = call i32 @talloc_free(%struct.gl_timer* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @talloc_free(%struct.gl_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
