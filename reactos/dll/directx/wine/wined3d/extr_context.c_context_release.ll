; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Releasing context %p, level %u.\0A\00", align 1
@d3d = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Context %p is not active.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Context %p is not the current context.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Restoring GL context %p on device context %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Destroying context %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_release(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %3 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %4 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %3, i32 %6)
  %8 = load i32, i32* @d3d, align 4
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %18 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_context* %17)
  br label %27

19:                                               ; preds = %11
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %21 = call %struct.wined3d_context* (...) @context_get_current()
  %22 = icmp ne %struct.wined3d_context* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %25 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_context* %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %28
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %36 = call i64 @context_restore_pixel_format(%struct.wined3d_context* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %40 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to %struct.wined3d_context*
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_context* %50, i32* %53)
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @context_restore_gl_context(i32 %57, i32* %60, i32* %63)
  %65 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %66 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %68 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %46, %41
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %76 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.wined3d_context* %75)
  %77 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %78 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %81 = call i32 @context_destroy(i32 %79, %struct.wined3d_context* %80)
  br label %82

82:                                               ; preds = %74, %69
  br label %83

83:                                               ; preds = %82, %28
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WARN(i8*, %struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_get_current(...) #1

declare dso_local i64 @context_restore_pixel_format(%struct.wined3d_context*) #1

declare dso_local i32 @context_restore_gl_context(i32, i32*, i32*) #1

declare dso_local i32 @context_destroy(i32, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
