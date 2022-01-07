; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_create_font_texture.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_create_font_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@d3d9 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@NK_FONT_ATLAS_RGBA32 = common dso_local global i32 0, align 4
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3DFMT_A8R8G8B8 = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nk_d3d9_create_font_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_d3d9_create_font_texture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @NK_FONT_ATLAS_RGBA32, align 4
  %10 = call i8* @nk_font_atlas_bake(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 2), i32* %1, i32* %2, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 3), align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %15 = load i32, i32* @D3DFMT_A8R8G8B8, align 4
  %16 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %17 = call i32 @IDirect3DDevice9_CreateTexture(i32 %11, i32 %12, i32 %13, i32 1, i32 %14, i32 %15, i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 1), i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SUCCEEDED(i32 %18)
  %20 = call i32 @NK_ASSERT(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 1), align 4
  %22 = call i32 @IDirect3DTexture9_LockRect(i32 %21, i32 0, %struct.TYPE_4__* %6, i32* null, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SUCCEEDED(i32 %23)
  %25 = call i32 @NK_ASSERT(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %52, %0
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8* %37, i8** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %1, align 4
  %50 = mul nsw i32 %49, 4
  %51 = call i32 @memcpy(i8* %47, i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 1), align 4
  %57 = call i32 @IDirect3DTexture9_UnlockRect(i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @SUCCEEDED(i32 %58)
  %60 = call i32 @NK_ASSERT(i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 1), align 4
  %62 = call i32 @nk_handle_ptr(i32 %61)
  %63 = call i32 @nk_font_atlas_end(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 2), i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @d3d9, i32 0, i32 0))
  ret void
}

declare dso_local i8* @nk_font_atlas_bake(i32*, i32*, i32*, i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @NK_ASSERT(i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @IDirect3DTexture9_LockRect(i32, i32, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @IDirect3DTexture9_UnlockRect(i32, i32) #1

declare dso_local i32 @nk_font_atlas_end(i32*, i32, i32*) #1

declare dso_local i32 @nk_handle_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
