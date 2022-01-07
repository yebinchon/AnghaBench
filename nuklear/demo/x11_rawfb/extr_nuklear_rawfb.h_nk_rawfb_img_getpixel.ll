; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_getpixel.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_getpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.rawfb_image = type { i32, i32, i8*, i32, i64, i32 }

@NK_FONT_ATLAS_ALPHA8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_color*, %struct.rawfb_image*, i32, i32)* @nk_rawfb_img_getpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_img_getpixel(%struct.nk_color* noalias sret %0, %struct.rawfb_image* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rawfb_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nk_color, align 4
  store %struct.rawfb_image* %1, %struct.rawfb_image** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %11 = bitcast %struct.nk_color* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %13 = call i32 @NK_ASSERT(%struct.rawfb_image* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %16 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %28 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %33 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %36 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %43 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NK_FONT_ATLAS_ALPHA8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 0
  store i8 %52, i8* %53, align 4
  %54 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 3
  store i32 255, i32* %54, align 4
  %55 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 2
  store i32 255, i32* %55, align 4
  %56 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 1
  store i32 255, i32* %56, align 4
  br label %70

57:                                               ; preds = %31
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.rawfb_image*, %struct.rawfb_image** %5, align 8
  %66 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  call void @nk_rawfb_int2color(%struct.nk_color* sret %10, i32 %64, i32 %67)
  %68 = bitcast %struct.nk_color* %0 to i8*
  %69 = bitcast %struct.nk_color* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 32, i1 false)
  br label %70

70:                                               ; preds = %57, %47
  br label %71

71:                                               ; preds = %70, %25, %22, %19, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NK_ASSERT(%struct.rawfb_image*) #2

declare dso_local void @nk_rawfb_int2color(%struct.nk_color* sret, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
