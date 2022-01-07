; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_update_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_update_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_MAP_WRITE_BIT = common dso_local global i32 0, align 4
@GL_MAP_INVALIDATE_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glMapBufferRange\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_buffer(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @gl_bind_buffer(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @GL_MAP_WRITE_BIT, align 4
  %21 = load i32, i32* @GL_MAP_INVALIDATE_BUFFER_BIT, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @glMapBufferRange(i32 %18, i32 0, i64 %19, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = call i32 @gl_success(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @glUnmapBuffer(i32 %35)
  br label %37

37:                                               ; preds = %30, %27, %17
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @gl_bind_buffer(i32 %38, i32 0)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i8* @glMapBufferRange(i32, i32, i64, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @glUnmapBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
