; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i8*, i8*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c"Unhandled target %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"glBindFramebuffer()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32, i8*)* @context_bind_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_bind_fbo(%struct.wined3d_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 2
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %54 [
    i32 128, label %12
    i32 130, label %23
    i32 129, label %34
  ]

12:                                               ; preds = %3
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %66

19:                                               ; preds = %12
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %57

23:                                               ; preds = %3
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %66

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %57

34:                                               ; preds = %3
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %42 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %66

47:                                               ; preds = %40, %34
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %57

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %47, %30, %19
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (i32, i8*)*, i32 (i32, i8*)** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 %61(i32 %62, i8* %63)
  %65 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %57, %46, %29, %18
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
