; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_enable_clip_distances.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_enable_clip_distances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i64)*, i32 (i64)* }
%struct.TYPE_4__ = type { i32 }

@GL_CLIP_DISTANCE0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"toggle clip distances\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_enable_clip_distances(%struct.wined3d_context* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 1
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %5, align 8
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = sub i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = sub i32 %25, 1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %42, %2
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = call i32 @wined3d_bit_scan(i32* %4)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32 (i64)*, i32 (i64)** %47, align 8
  %49 = load i64, i64* @GL_CLIP_DISTANCE0, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 %48(i64 %52)
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %61, %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = call i32 @wined3d_bit_scan(i32* %8)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %64 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (i64)*, i32 (i64)** %66, align 8
  %68 = load i64, i64* @GL_CLIP_DISTANCE0, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 %67(i64 %71)
  br label %58

73:                                               ; preds = %58
  %74 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wined3d_bit_scan(i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
