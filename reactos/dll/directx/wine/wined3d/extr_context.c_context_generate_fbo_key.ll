; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_fbo_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_fbo_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_fbo_entry_key = type { i32*, i64 }
%struct.wined3d_rendertarget_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_fbo_entry_key*, %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info*, i32, i32)* @context_generate_fbo_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_generate_fbo_key(%struct.wined3d_context* %0, %struct.wined3d_fbo_entry_key* %1, %struct.wined3d_rendertarget_info* %2, %struct.wined3d_rendertarget_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_fbo_entry_key*, align 8
  %9 = alloca %struct.wined3d_rendertarget_info*, align 8
  %10 = alloca %struct.wined3d_rendertarget_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_fbo_entry_key* %1, %struct.wined3d_fbo_entry_key** %8, align 8
  store %struct.wined3d_rendertarget_info* %2, %struct.wined3d_rendertarget_info** %9, align 8
  store %struct.wined3d_rendertarget_info* %3, %struct.wined3d_rendertarget_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %8, align 8
  %22 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %24 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %8, align 8
  %25 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @context_set_fbo_key_for_render_target(%struct.wined3d_context* %23, %struct.wined3d_fbo_entry_key* %24, i32 0, %struct.wined3d_rendertarget_info* %25, i32 %26)
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %43, %6
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %34 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %37, i64 %39
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @context_set_fbo_key_for_render_target(%struct.wined3d_context* %33, %struct.wined3d_fbo_entry_key* %34, i32 %36, %struct.wined3d_rendertarget_info* %40, i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %14, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %8, align 8
  %55 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = sub i32 %57, %58
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %53, i32 0, i32 %63)
  ret void
}

declare dso_local i32 @context_set_fbo_key_for_render_target(%struct.wined3d_context*, %struct.wined3d_fbo_entry_key*, i32, %struct.wined3d_rendertarget_info*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
