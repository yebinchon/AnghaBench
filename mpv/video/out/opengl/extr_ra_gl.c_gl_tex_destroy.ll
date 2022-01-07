; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { i32, i64, i64, i32, %struct.ra_tex* }
%struct.TYPE_3__ = type { i32 (i32, i32*)*, i32 (i32, i64*)* }
%struct.ra_tex_gl = type { i32, i64, i64, i32, %struct.ra_tex_gl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_tex*)* @gl_tex_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_tex_destroy(%struct.ra* %0, %struct.ra_tex* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_tex*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %4, align 8
  %7 = load %struct.ra*, %struct.ra** %3, align 8
  %8 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  %10 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %9, i32 0, i32 4
  %11 = load %struct.ra_tex*, %struct.ra_tex** %10, align 8
  %12 = bitcast %struct.ra_tex* %11 to %struct.ra_tex_gl*
  store %struct.ra_tex_gl* %12, %struct.ra_tex_gl** %6, align 8
  %13 = load %struct.ra*, %struct.ra** %3, align 8
  %14 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %15 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %14, i32 0, i32 3
  %16 = call i32 @ra_buf_pool_uninit(%struct.ra* %13, i32* %15)
  %17 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %18 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %23 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (i32, i64*)*, i32 (i32, i64*)** %28, align 8
  %30 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %31 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %30, i32 0, i32 1
  %32 = call i32 %29(i32 1, i64* %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32*)*, i32 (i32, i32*)** %35, align 8
  %37 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %38 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %37, i32 0, i32 0
  %39 = call i32 %36(i32 1, i32* %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %6, align 8
  %42 = call i32 @talloc_free(%struct.ra_tex_gl* %41)
  %43 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  %44 = bitcast %struct.ra_tex* %43 to %struct.ra_tex_gl*
  %45 = call i32 @talloc_free(%struct.ra_tex_gl* %44)
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @ra_buf_pool_uninit(%struct.ra*, i32*) #1

declare dso_local i32 @talloc_free(%struct.ra_tex_gl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
