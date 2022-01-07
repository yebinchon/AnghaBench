; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_wrap_length.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_wrap_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_wrap_length(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @_utf8_newline(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %3, align 8
  br label %38

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @utf8_char_whitespace(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @utf8_char_length(i32* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @_utf8_newline(i32*) #1

declare dso_local i64 @utf8_char_whitespace(i32*) #1

declare dso_local i64 @utf8_char_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
