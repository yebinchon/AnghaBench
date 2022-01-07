; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c__gdImageFilledHRectangle.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c__gdImageFilledHRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @_gdImageFilledHRectangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gdImageFilledHRectangle(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @gdImageSetPixel(i32 %23, i32 %24, i32 %25, i32 %26)
  br label %95

28:                                               ; preds = %18, %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gdImageSX(i32 %50)
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @gdImageSX(i32 %54)
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @gdImageSY(i32 %63)
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gdImageSY(i32 %67)
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %92, %70
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %88, %76
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @gdImageSetPixel(i32 %83, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %78

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %72

95:                                               ; preds = %22, %72
  ret void
}

declare dso_local i32 @gdImageSetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @gdImageSX(i32) #1

declare dso_local i32 @gdImageSY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
