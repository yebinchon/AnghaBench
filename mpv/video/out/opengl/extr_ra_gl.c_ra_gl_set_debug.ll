; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_gl_set_debug.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_gl_set_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32*, %struct.ra_gl* }
%struct.ra_gl = type { i32 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_gl_set_debug(%struct.ra* %0, i32 %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_gl*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ra*, %struct.ra** %3, align 8
  %8 = getelementptr inbounds %struct.ra, %struct.ra* %7, i32 0, i32 1
  %9 = load %struct.ra_gl*, %struct.ra_gl** %8, align 8
  store %struct.ra_gl* %9, %struct.ra_gl** %5, align 8
  %10 = load %struct.ra*, %struct.ra** %3, align 8
  %11 = call %struct.TYPE_4__* @ra_gl_get(%struct.ra* %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ra_gl*, %struct.ra_gl** %5, align 8
  %14 = getelementptr inbounds %struct.ra_gl, %struct.ra_gl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.ra*, %struct.ra** %3, align 8
  %25 = getelementptr inbounds %struct.ra, %struct.ra* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32* [ %26, %23 ], [ null, %27 ]
  %30 = call i32 @gl_set_debug_logger(%struct.TYPE_4__* %20, i32* %29)
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.TYPE_4__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @gl_set_debug_logger(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
