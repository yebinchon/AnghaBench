; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_generate_nibble.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_generate_nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMA_StepTable = common dso_local global i32* null, align 8
@IMA_IndexTable = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, i32*, i32*)* @generate_nibble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @generate_nibble(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  store i8 8, i8* %10, align 1
  br label %21

20:                                               ; preds = %3
  store i8 0, i8* %10, align 1
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** @IMA_StepTable, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = lshr i32 %28, 3
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %10, align 1
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %33, %21
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, 2
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %10, align 1
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %50, %44
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, 1
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %10, align 1
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %67, %61
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @clamp_sample(i32* %91)
  %93 = load i64*, i64** @IMA_IndexTable, align 8
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %97
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @clamp_step_index(i32* %103)
  %105 = load i8, i8* %10, align 1
  ret i8 %105
}

declare dso_local i32 @clamp_sample(i32*) #1

declare dso_local i32 @clamp_step_index(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
