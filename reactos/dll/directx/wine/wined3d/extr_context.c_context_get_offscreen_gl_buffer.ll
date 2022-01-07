; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_offscreen_gl_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_offscreen_gl_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wined3d_context = type { i32 }

@wined3d_settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_AUX0 = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unhandled offscreen rendering mode %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wined3d_settings, i32 0, i32 0), align 4
  switch i32 %4, label %18 [
    i32 128, label %5
    i32 129, label %7
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  store i32 %6, i32* %2, align 4
  br label %22

7:                                                ; preds = %1
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @GL_AUX0, align 4
  br label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @GL_BACK, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wined3d_settings, i32 0, i32 0), align 4
  %20 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @GL_BACK, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %16, %5
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
