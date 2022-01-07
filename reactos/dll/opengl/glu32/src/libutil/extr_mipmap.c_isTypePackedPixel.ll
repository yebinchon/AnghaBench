; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_isTypePackedPixel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_isTypePackedPixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_UNSIGNED_BYTE_3_3_2 = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE_2_3_3_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_6_5_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_4_4_4_4 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_4_4_4_4_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_5_5_5_1 = common dso_local global i64 0, align 8
@GL_UNSIGNED_SHORT_1_5_5_5_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_8_8_8_8 = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_8_8_8_8_REV = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_10_10_10_2 = common dso_local global i64 0, align 8
@GL_UNSIGNED_INT_2_10_10_10_REV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @isTypePackedPixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isTypePackedPixel(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @legalType(i64 %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @GL_UNSIGNED_BYTE_3_3_2, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %54, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @GL_UNSIGNED_BYTE_2_3_3_REV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @GL_UNSIGNED_SHORT_5_6_5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @GL_UNSIGNED_SHORT_5_6_5_REV, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %54, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @GL_UNSIGNED_SHORT_4_4_4_4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %54, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @GL_UNSIGNED_SHORT_4_4_4_4_REV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @GL_UNSIGNED_SHORT_5_5_5_1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @GL_UNSIGNED_SHORT_1_5_5_5_REV, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @GL_UNSIGNED_INT_8_8_8_8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @GL_UNSIGNED_INT_8_8_8_8_REV, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @GL_UNSIGNED_INT_10_10_10_2, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @GL_UNSIGNED_INT_2_10_10_10_REV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %1
  store i32 1, i32* %2, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @legalType(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
