; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_isLegalFormatForPackedPixelType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_isLegalFormatForPackedPixelType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE_3_3_2 = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE_2_3_3_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_6_5_REV = common dso_local global i64 0, align 8
@GL_RGB = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_4_4_4_4 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_4_4_4_4_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_5_5_1 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_1_5_5_5_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_8_8_8_8 = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_8_8_8_8_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_10_10_10_2 = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_2_10_10_10_REV = common dso_local global i64 0, align 8
@GL_RGBA = common dso_local global i64 0, align 8
@GL_BGRA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @isLegalFormatForPackedPixelType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLegalFormatForPackedPixelType(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @isTypePackedPixel(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @GL_TRUE, align 4
  store i32 %10, i32* %3, align 4
  br label %77

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @GL_UNSIGNED_BYTE_3_3_2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @GL_UNSIGNED_BYTE_2_3_3_REV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @GL_UNSIGNED_SHORT_5_6_5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @GL_UNSIGNED_SHORT_5_6_5_REV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %19, %15, %11
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @GL_RGB, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @GL_FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %27, %23
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @GL_UNSIGNED_SHORT_4_4_4_4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @GL_UNSIGNED_SHORT_4_4_4_4_REV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @GL_UNSIGNED_SHORT_5_5_5_1, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @GL_UNSIGNED_SHORT_1_5_5_5_REV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @GL_UNSIGNED_INT_8_8_8_8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @GL_UNSIGNED_INT_8_8_8_8_REV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @GL_UNSIGNED_INT_10_10_10_2, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @GL_UNSIGNED_INT_2_10_10_10_REV, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %33
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @GL_RGBA, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @GL_BGRA, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @GL_FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %69, %65, %61
  %76 = load i32, i32* @GL_TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %73, %31, %9
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @isTypePackedPixel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
