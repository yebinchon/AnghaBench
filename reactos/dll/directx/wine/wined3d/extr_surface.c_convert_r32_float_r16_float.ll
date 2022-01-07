; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_r32_float_r16_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_r32_float_r16_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Converting %ux%u pixels, pitches %u %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @convert_r32_float_r16_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r32_float_r16_float(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %59, %6
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = bitcast i32* %32 to float*
  store float* %33, float** %14, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = bitcast i32* %39 to i16*
  store i16* %40, i16** %13, align 8
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %55, %26
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load float*, float** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = call zeroext i16 @float_32_to_16(float* %49)
  %51 = load i16*, i16** %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  store i16 %50, i16* %54, align 2
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %41

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %22

62:                                               ; preds = %22
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local zeroext i16 @float_32_to_16(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
