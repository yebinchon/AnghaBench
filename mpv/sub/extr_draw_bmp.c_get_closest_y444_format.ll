; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_get_closest_y444_format.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_get_closest_y444_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_desc = type { i32, i32 }

@MP_IMGFLAG_ALPHA = common dso_local global i32 0, align 4
@MP_IMGFLAG_RGB = common dso_local global i32 0, align 4
@MP_IMGFLAG_RGB_P = common dso_local global i32 0, align 4
@MP_IMGFLAG_YUV_P = common dso_local global i32 0, align 4
@IMGFMT_444P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @get_closest_y444_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_closest_y444_format(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mp_imgfmt_desc, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_imgfmt_desc, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @mp_imgfmt_get_desc(i32 %12)
  %14 = bitcast %struct.mp_imgfmt_desc* %7 to i64*
  store i64 %13, i64* %14, align 4
  %15 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MP_IMGFLAG_ALPHA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 4, i32 3
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MP_IMGFLAG_RGB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 8, %34 ]
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 16, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MP_IMGFLAG_RGB_P, align 4
  %44 = call i32 @mp_imgfmt_find(i32 0, i32 0, i32 %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mp_sws_supported_format(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MP_IMGFLAG_RGB_P, align 4
  %53 = call i32 @mp_imgfmt_find(i32 0, i32 0, i32 %51, i32 8, i32 %52)
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %40
  br label %76

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 8
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 16, i32 8
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %71 = call i32 @mp_imgfmt_find(i32 0, i32 0, i32 %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %75

73:                                               ; preds = %56
  %74 = load i32*, i32** %5, align 8
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %62
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mp_sws_supported_format(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @IMGFMT_444P, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @mp_imgfmt_get_desc(i32 %86)
  %88 = bitcast %struct.mp_imgfmt_desc* %11 to i64*
  store i64 %87, i64* %88, align 4
  %89 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %11, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  ret void
}

declare dso_local i64 @mp_imgfmt_get_desc(i32) #1

declare dso_local i32 @mp_imgfmt_find(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mp_sws_supported_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
