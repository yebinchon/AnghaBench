; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_lookup_analog_mp_key.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_lookup_analog_mp_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_KEY = common dso_local global i32 0, align 4
@analog_map = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float)* @lookup_analog_mp_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_analog_mp_key(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  store i32 32767, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 3, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store float 0x40C51E8E20000000, float* %11, align 4
  store float 0x409EB81480000000, float* %12, align 4
  %15 = load float, float* %5, align 4
  %16 = fcmp olt float %15, 0x409EB81480000000
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load float, float* %5, align 4
  %19 = fcmp ogt float %18, 0xC09EB81480000000
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @INVALID_KEY, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %17, %2
  %23 = load float, float* %5, align 4
  %24 = fcmp ogt float %23, 0.000000e+00
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 3, i32 2
  store i32 %26, i32* %13, align 4
  %27 = load float, float* %5, align 4
  %28 = fcmp oge float %27, 0x40D5707900000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 4, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load float, float* %5, align 4
  %32 = fcmp ole float %31, 0xC0D5707900000000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %30
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32**, i32*** @analog_map, align 8
  %38 = call i32 @MP_ARRAY_SIZE(i32** %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i32**, i32*** @analog_map, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load i32**, i32*** @analog_map, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* @INVALID_KEY, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %50, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @MP_ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
