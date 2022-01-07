; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_append_transform_feedback_varying.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_append_transform_feedback_varying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i8**, i32*, %struct.wined3d_string_buffer*)* @append_transform_feedback_varying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_transform_feedback_varying(i8** %0, i32* %1, i8** %2, i32* %3, %struct.wined3d_string_buffer* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.wined3d_string_buffer* %4, %struct.wined3d_string_buffer** %10, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %5
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %22, i64 %25
  store i8* %21, i8** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %29 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %32 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @memcpy(i8* %27, i32 %30, i64 %34)
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %37 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8**, i8*** %8, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %18, %14, %5
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %51, %48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
