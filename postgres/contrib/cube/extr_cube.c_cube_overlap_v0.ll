; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_overlap_v0.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_overlap_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cube_overlap_v0(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %101

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @DIM(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @DIM(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %4, align 8
  br label %24

24:                                               ; preds = %20, %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @DIM(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @LL_COORD(i32* %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @UR_COORD(i32* %34, i32 %35)
  %37 = call i64 @Min(i32 %33, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @LL_COORD(i32* %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @UR_COORD(i32* %41, i32 %42)
  %44 = call i64 @Max(i32 %40, i32 %43)
  %45 = icmp sgt i64 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %101

47:                                               ; preds = %30
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @LL_COORD(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @UR_COORD(i32* %51, i32 %52)
  %54 = call i64 @Max(i32 %50, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @LL_COORD(i32* %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @UR_COORD(i32* %58, i32 %59)
  %61 = call i64 @Min(i32 %57, i32 %60)
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %101

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @DIM(i32* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %97, %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @DIM(i32* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @LL_COORD(i32* %77, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @UR_COORD(i32* %80, i32 %81)
  %83 = call i64 @Min(i32 %79, i32 %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %101

86:                                               ; preds = %76
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @LL_COORD(i32* %87, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @UR_COORD(i32* %90, i32 %91)
  %93 = call i64 @Max(i32 %89, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %101

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %71

100:                                              ; preds = %71
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %95, %85, %63, %46, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @DIM(i32*) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i32 @LL_COORD(i32*, i32) #1

declare dso_local i32 @UR_COORD(i32*, i32) #1

declare dso_local i64 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
