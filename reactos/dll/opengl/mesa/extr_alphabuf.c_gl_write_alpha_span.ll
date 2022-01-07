; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_alphabuf.c_gl_write_alpha_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_alphabuf.c_gl_write_alpha_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_alpha_span(i32* %0, i64 %1, i32 %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64* @ALPHA_ADDR(i32 %15, i32 %16)
  store i64* %17, i64** %13, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %13, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i64*, i64** %13, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %13, align 8
  br label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %14, align 8
  br label %21

43:                                               ; preds = %21
  br label %60

44:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %13, align 8
  store i64 %53, i64* %54, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %45

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %43
  ret void
}

declare dso_local i64* @ALPHA_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
