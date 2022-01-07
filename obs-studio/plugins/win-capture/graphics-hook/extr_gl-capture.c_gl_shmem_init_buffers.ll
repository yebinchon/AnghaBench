; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shmem_init_buffers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shmem_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NUM_BUFFERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"gl_shmem_init_buffers\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to generate buffers\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to generate textures\00", align 1
@GL_PIXEL_PACK_BUFFER_BINDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to save pixel pack buffer\00", align 1
@GL_TEXTURE_BINDING_2D = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to save texture\00", align 1
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gl_shmem_init_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shmem_init_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1), align 4
  %8 = mul nsw i32 %6, %7
  %9 = mul nsw i32 %8, 4
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* @NUM_BUFFERS, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %12 = call i32 @glGenBuffers(i64 %10, i32 %11)
  %13 = call i64 @gl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %57

16:                                               ; preds = %0
  %17 = load i64, i64* @NUM_BUFFERS, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 4
  %19 = call i32 @glGenTextures(i64 %17, i32 %18)
  %20 = call i64 @gl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %57

23:                                               ; preds = %16
  %24 = load i32, i32* @GL_PIXEL_PACK_BUFFER_BINDING, align 4
  %25 = call i32 @glGetIntegerv(i32 %24, i32* %3)
  %26 = call i64 @gl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %57

29:                                               ; preds = %23
  %30 = load i32, i32* @GL_TEXTURE_BINDING_2D, align 4
  %31 = call i32 @glGetIntegerv(i32 %30, i32* %4)
  %32 = call i64 @gl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %57

35:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NUM_BUFFERS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @gl_shmem_init_data(i64 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %1, align 4
  br label %57

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @glBindBuffer(i32 %51, i32 %52)
  %54 = load i32, i32* @GL_TEXTURE_2D, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @glBindTexture(i32 %54, i32 %55)
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %50, %45, %34, %28, %22, %15
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @glGenBuffers(i64, i32) #1

declare dso_local i64 @gl_error(i8*, i8*) #1

declare dso_local i32 @glGenTextures(i64, i32) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @gl_shmem_init_data(i64, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
