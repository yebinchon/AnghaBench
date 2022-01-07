; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_string_length.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_string_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_string_length(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 0, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @utf8_char_count(i32* %10, i32 0)
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %9, %2
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 0, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @utf8_char_length(i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %31

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  store i32* %24, i32** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %4, align 8
  br label %13

31:                                               ; preds = %20, %13
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare dso_local i64 @utf8_char_count(i32*, i32) #1

declare dso_local i64 @utf8_char_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
