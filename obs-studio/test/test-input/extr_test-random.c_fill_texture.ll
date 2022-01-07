; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-random.c_fill_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-random.c_fill_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fill_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_texture(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 20
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %11, 20
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  %14 = call i32 (...) @rand()
  %15 = srem i32 %14, 256
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @rand()
  %19 = srem i32 %18, 256
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = call i32 (...) @rand()
  %24 = srem i32 %23, 256
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 20
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %13
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %10

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %6

42:                                               ; preds = %6
  ret void
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
