; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_cpu_blitter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_cpu_blitter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"Created blitter %p.\0A\00", align 1
@cpu_blitter_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_blitter* @wined3d_cpu_blitter_create() #0 {
  %1 = alloca %struct.wined3d_blitter*, align 8
  %2 = alloca %struct.wined3d_blitter*, align 8
  %3 = call %struct.wined3d_blitter* @heap_alloc(i32 16)
  store %struct.wined3d_blitter* %3, %struct.wined3d_blitter** %2, align 8
  %4 = icmp ne %struct.wined3d_blitter* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store %struct.wined3d_blitter* null, %struct.wined3d_blitter** %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %2, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.wined3d_blitter* %7)
  %9 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %9, i32 0, i32 1
  store i32* @cpu_blitter_ops, i32** %10, align 8
  %11 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %2, align 8
  store %struct.wined3d_blitter* %13, %struct.wined3d_blitter** %1, align 8
  br label %14

14:                                               ; preds = %6, %5
  %15 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %1, align 8
  ret %struct.wined3d_blitter* %15
}

declare dso_local %struct.wined3d_blitter* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_blitter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
