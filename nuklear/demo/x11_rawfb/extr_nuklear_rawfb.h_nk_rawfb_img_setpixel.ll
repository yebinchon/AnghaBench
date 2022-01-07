; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_setpixel.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_setpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_image = type { i32, i32, i8*, i32, i64, i32 }
%struct.nk_color = type { i8 }

@NK_FONT_ATLAS_ALPHA8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_image*, i32, i32, i8)* @nk_rawfb_img_setpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_img_setpixel(%struct.rawfb_image* %0, i32 %1, i32 %2, i8 %3) #0 {
  %5 = alloca %struct.nk_color, align 1
  %6 = alloca %struct.rawfb_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  store i8 %3, i8* %12, align 1
  store %struct.rawfb_image* %0, %struct.rawfb_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %13 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %14 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @nk_rawfb_color2int(i8 %17, i32 %15)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %20 = call i32 @NK_ASSERT(%struct.rawfb_image* %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %23 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %35 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %40 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %43 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %41, i64 %47
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %11, align 8
  %51 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %52 = getelementptr inbounds %struct.rawfb_image, %struct.rawfb_image* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NK_FONT_ATLAS_ALPHA8, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %62, align 1
  br label %69

63:                                               ; preds = %38
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %56
  br label %70

70:                                               ; preds = %69, %32, %29, %26, %4
  ret void
}

declare dso_local i32 @nk_rawfb_color2int(i8, i32) #1

declare dso_local i32 @NK_ASSERT(%struct.rawfb_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
