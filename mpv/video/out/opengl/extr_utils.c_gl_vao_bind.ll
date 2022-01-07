; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_bind.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_vao = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32)* }

@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_vao*)* @gl_vao_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_vao_bind(%struct.gl_vao* %0) #0 {
  %2 = alloca %struct.gl_vao*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store %struct.gl_vao* %0, %struct.gl_vao** %2, align 8
  %4 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %5 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %16 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %14(i32 %17)
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %24 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %25 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %23, i32 %26)
  %28 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %29 = call i32 @gl_vao_enable_attribs(%struct.gl_vao* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %34 = call i32 %32(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @gl_vao_enable_attribs(%struct.gl_vao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
