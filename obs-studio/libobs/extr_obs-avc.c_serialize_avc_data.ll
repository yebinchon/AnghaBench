; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_serialize_avc_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_serialize_avc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { i32 }

@OBS_NAL_SLICE_IDR = common dso_local global i32 0, align 4
@OBS_NAL_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serializer*, i32*, i64, i32*, i32*)* @serialize_avc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_avc_data(%struct.serializer* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.serializer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.serializer* %0, %struct.serializer** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i32* @obs_avc_find_startcode(i32* %18, i32* %19)
  store i32* %20, i32** %11, align 8
  br label %21

21:                                               ; preds = %5, %71
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ult i32* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* %27, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %22

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %95

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 31
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @OBS_NAL_SLICE_IDR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @OBS_NAL_SLICE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48, %40
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @OBS_NAL_SLICE_IDR, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 5
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %61
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i32* @obs_avc_find_startcode(i32* %72, i32* %73)
  store i32* %74, i32** %12, align 8
  %75 = load %struct.serializer*, %struct.serializer** %6, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @s_wb32(%struct.serializer* %75, i32 %82)
  %84 = load %struct.serializer*, %struct.serializer** %6, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @s_write(%struct.serializer* %84, i32* %85, i32 %92)
  %94 = load i32*, i32** %12, align 8
  store i32* %94, i32** %11, align 8
  br label %21

95:                                               ; preds = %39
  ret void
}

declare dso_local i32* @obs_avc_find_startcode(i32*, i32*) #1

declare dso_local i32 @s_wb32(%struct.serializer*, i32) #1

declare dso_local i32 @s_write(%struct.serializer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
