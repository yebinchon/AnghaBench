; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_contains_v0.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_contains_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cube_contains_v0(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %93

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @DIM(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @DIM(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @DIM(i32* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @DIM(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @LL_COORD(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %93

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @UR_COORD(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %93

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %13
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %89, %44
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @DIM(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @DIM(i32* %50)
  %52 = call i64 @Min(i32 %49, i32 %51)
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %45
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @LL_COORD(i32* %55, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @UR_COORD(i32* %58, i32 %59)
  %61 = call i64 @Min(i32 %57, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @LL_COORD(i32* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @UR_COORD(i32* %65, i32 %66)
  %68 = call i64 @Min(i32 %64, i32 %67)
  %69 = icmp sgt i64 %61, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %93

71:                                               ; preds = %54
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @LL_COORD(i32* %72, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @UR_COORD(i32* %75, i32 %76)
  %78 = call i64 @Max(i32 %74, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @LL_COORD(i32* %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @UR_COORD(i32* %82, i32 %83)
  %85 = call i64 @Max(i32 %81, i32 %84)
  %86 = icmp slt i64 %78, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %93

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %45

92:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %87, %70, %38, %32, %12
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @DIM(i32*) #1

declare dso_local i32 @LL_COORD(i32*, i32) #1

declare dso_local i32 @UR_COORD(i32*, i32) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i64 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
