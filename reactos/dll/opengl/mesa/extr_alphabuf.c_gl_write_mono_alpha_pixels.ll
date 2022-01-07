; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_alphabuf.c_gl_write_mono_alpha_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_alphabuf.c_gl_write_mono_alpha_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_mono_alpha_pixels(i32* %0, i64 %1, i32* %2, i32* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i64*, i64** %12, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i64*, i64** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64* @ALPHA_ADDR(i32 %33, i32 %37)
  store i64* %38, i64** %14, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64*, i64** %14, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %29, %23
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %13, align 8
  br label %19

45:                                               ; preds = %19
  br label %67

46:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64* @ALPHA_ADDR(i32 %55, i32 %59)
  store i64* %60, i64** %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %15, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %13, align 8
  br label %47

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %45
  ret void
}

declare dso_local i64* @ALPHA_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
