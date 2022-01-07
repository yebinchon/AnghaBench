; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_dashedSet.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_dashedSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdDashSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32, i32)* @dashedSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dashedSet(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %17, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @gdDashSize, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %8
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %30, %8
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %59, %41
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @gdImageSetPixel(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %47

62:                                               ; preds = %47
  br label %85

63:                                               ; preds = %38
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sdiv i32 %65, 2
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %19, align 4
  br label %69

69:                                               ; preds = %81, %63
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @gdImageSetPixel(i32 %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %69

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %14, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  ret void
}

declare dso_local i32 @gdImageSetPixel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
