; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_color_match.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_color_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @color_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_match(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 255
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  %12 = sub nsw i32 %9, %11
  %13 = call i64 @abs(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = sub nsw i32 %24, %26
  %28 = call i64 @abs(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = sub nsw i32 %39, %41
  %43 = call i64 @abs(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %65

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = sub nsw i32 %54, %56
  %58 = call i64 @abs(i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %48
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %61, %46, %31, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
