; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_buf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { i32, i32, i64, i64, %struct.ra_buf* }
%struct.TYPE_3__ = type { i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32)*, i32 (i64)* }
%struct.ra_buf_gl = type { i32, i32, i64, i64, %struct.ra_buf_gl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*)* @gl_buf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_buf_destroy(%struct.ra* %0, %struct.ra_buf* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_buf*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ra_buf_gl*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %4, align 8
  %7 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %8 = icmp ne %struct.ra_buf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %71

10:                                               ; preds = %2
  %11 = load %struct.ra*, %struct.ra** %3, align 8
  %12 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %14 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %13, i32 0, i32 4
  %15 = load %struct.ra_buf*, %struct.ra_buf** %14, align 8
  %16 = bitcast %struct.ra_buf* %15 to %struct.ra_buf_gl*
  store %struct.ra_buf_gl* %16, %struct.ra_buf_gl** %6, align 8
  %17 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %18 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32 (i64)*, i32 (i64)** %23, align 8
  %25 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %26 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %24(i64 %27)
  br label %29

29:                                               ; preds = %21, %10
  %30 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %31 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %39 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %42 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %37(i32 %40, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %49 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %56 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57, i32 0)
  br label %59

59:                                               ; preds = %34, %29
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32*)*, i32 (i32, i32*)** %61, align 8
  %63 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %64 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %63, i32 0, i32 0
  %65 = call i32 %62(i32 1, i32* %64)
  %66 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %6, align 8
  %67 = call i32 @talloc_free(%struct.ra_buf_gl* %66)
  %68 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %69 = bitcast %struct.ra_buf* %68 to %struct.ra_buf_gl*
  %70 = call i32 @talloc_free(%struct.ra_buf_gl* %69)
  br label %71

71:                                               ; preds = %59, %9
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @talloc_free(%struct.ra_buf_gl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
