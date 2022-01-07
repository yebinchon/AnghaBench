; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_ortho_fbo.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_ortho_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ra_fbo = type { %struct.TYPE_4__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_transform_ortho_fbo(%struct.gl_transform* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.ra_fbo, align 8
  %5 = alloca %struct.gl_transform*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.ra_fbo* %4 to { %struct.TYPE_4__*, i64 }*
  %8 = getelementptr inbounds { %struct.TYPE_4__*, i64 }, { %struct.TYPE_4__*, i64 }* %7, i32 0, i32 0
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  %9 = getelementptr inbounds { %struct.TYPE_4__*, i64 }, { %struct.TYPE_4__*, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 8
  store %struct.gl_transform* %0, %struct.gl_transform** %5, align 8
  %10 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %4, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 -1, i32 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %16 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %4, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %4, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @gl_transform_ortho(%struct.gl_transform* %15, i32 0, i32 %20, i32 0, i32 %27)
  ret void
}

declare dso_local i32 @gl_transform_ortho(%struct.gl_transform*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
