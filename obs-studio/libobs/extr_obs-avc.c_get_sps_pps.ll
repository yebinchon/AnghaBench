; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_get_sps_pps.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_get_sps_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBS_NAL_SPS = common dso_local global i32 0, align 4
@OBS_NAL_PPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32**, i64*, i32**, i64*)* @get_sps_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sps_pps(i32* %0, i64 %1, i32** %2, i64* %3, i32** %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32* @obs_avc_find_startcode(i32* %20, i32* %21)
  store i32* %22, i32** %13, align 8
  br label %23

23:                                               ; preds = %6, %78
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %13, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %13, align 8
  %31 = load i32, i32* %29, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i1 [ false, %24 ], [ %33, %28 ]
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %24

37:                                               ; preds = %34
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp eq i32* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %80

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i32* @obs_avc_find_startcode(i32* %43, i32* %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @OBS_NAL_SPS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load i32*, i32** %13, align 8
  %55 = load i32**, i32*** %9, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  br label %78

63:                                               ; preds = %42
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @OBS_NAL_PPS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32*, i32** %13, align 8
  %69 = load i32**, i32*** %11, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %63
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32*, i32** %14, align 8
  store i32* %79, i32** %13, align 8
  br label %23

80:                                               ; preds = %41
  ret void
}

declare dso_local i32* @obs_avc_find_startcode(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
