; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_blendpixel.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_img_blendpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_image = type { i32 }
%struct.nk_color = type { i32, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_image*, i32, i32, i64)* @nk_rawfb_img_blendpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_img_blendpixel(%struct.rawfb_image* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.nk_color, align 4
  %6 = alloca %struct.rawfb_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.nk_color, align 4
  %12 = bitcast %struct.nk_color* %5 to i64*
  store i64 %3, i64* %12, align 4
  store %struct.rawfb_image* %0, %struct.rawfb_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %13 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %83

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 255, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @nk_rawfb_img_getpixel(%struct.rawfb_image* %22, i32 %23, i32 %24)
  %26 = bitcast %struct.nk_color* %11 to i64*
  store i64 %25, i64* %26, align 4
  %27 = bitcast %struct.nk_color* %9 to i8*
  %28 = bitcast %struct.nk_color* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 1
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 1
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = mul nsw i32 %37, %39
  %41 = add nsw i32 %34, %40
  %42 = ashr i32 %41, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 1
  store i8 %43, i8* %44, align 4
  %45 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %50, %56
  %58 = ashr i32 %57, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 2
  store i8 %59, i8* %60, align 1
  %61 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 3
  %62 = load i8, i8* %61, align 2
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 3
  %68 = load i8, i8* %67, align 2
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %69, %71
  %73 = add nsw i32 %66, %72
  %74 = ashr i32 %73, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 3
  store i8 %75, i8* %76, align 2
  %77 = load %struct.rawfb_image*, %struct.rawfb_image** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = bitcast %struct.nk_color* %5 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i32 @nk_rawfb_img_setpixel(%struct.rawfb_image* %77, i32 %78, i32 %79, i64 %81)
  br label %83

83:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @nk_rawfb_img_getpixel(%struct.rawfb_image*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nk_rawfb_img_setpixel(%struct.rawfb_image*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
