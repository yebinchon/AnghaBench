; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_d3dta_to_combiner_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_d3dta_to_combiner_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PRIMARY_COLOR_NV = common dso_local global i32 0, align 4
@GL_SPARE0_NV = common dso_local global i32 0, align 4
@GL_TEXTURE0_ARB = common dso_local global i32 0, align 4
@GL_CONSTANT_COLOR0_NV = common dso_local global i32 0, align 4
@GL_SECONDARY_COLOR_NV = common dso_local global i32 0, align 4
@GL_SPARE1_NV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WINED3DTA_CONSTANT, not properly supported.\0A\00", align 1
@GL_CONSTANT_COLOR1_NV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unrecognized texture arg %#x\0A\00", align 1
@GL_TEXTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @d3dta_to_combiner_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dta_to_combiner_input(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %36 [
    i32 132, label %9
    i32 133, label %11
    i32 129, label %18
    i32 128, label %27
    i32 131, label %29
    i32 130, label %31
    i32 134, label %33
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @GL_PRIMARY_COLOR_NV, align 4
  store i32 %10, i32* %4, align 4
  br label %40

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @GL_SPARE0_NV, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %11
  %17 = load i32, i32* @GL_PRIMARY_COLOR_NV, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @GL_TEXTURE0_ARB, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load i32, i32* @GL_PRIMARY_COLOR_NV, align 4
  store i32 %26, i32* %4, align 4
  br label %40

27:                                               ; preds = %3
  %28 = load i32, i32* @GL_CONSTANT_COLOR0_NV, align 4
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load i32, i32* @GL_SECONDARY_COLOR_NV, align 4
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %3
  %32 = load i32, i32* @GL_SPARE1_NV, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %3
  %34 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @GL_CONSTANT_COLOR1_NV, align 4
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @GL_TEXTURE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %33, %31, %29, %27, %25, %21, %16, %14, %9
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @FIXME(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
