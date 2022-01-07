; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_copy_map_points1d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_copy_map_points1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @gl_copy_map_points1d(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @components(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  store i64* null, i64** %5, align 8
  br label %68

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %14, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %10, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %66

34:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %35 = load i64*, i64** %10, align 8
  store i64* %35, i64** %11, align 8
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %9, align 8
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65, %23
  %67 = load i64*, i64** %10, align 8
  store i64* %67, i64** %5, align 8
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i64*, i64** %5, align 8
  ret i64* %69
}

declare dso_local i32 @components(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
