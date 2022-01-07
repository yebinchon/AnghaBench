; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_int.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBML_UINT_INVALID = common dso_local global i32 0, align 4
@EBML_INT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebml_read_int(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ebml_read_length(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EBML_UINT_INVALID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @EBML_INT_INVALID, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %47

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @stream_read_char(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %39, %30
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @stream_read_char(i32* %42)
  %44 = or i32 %41, %43
  store i32 %44, i32* %4, align 4
  br label %35

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %20, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ebml_read_length(i32*) #1

declare dso_local i32 @stream_read_char(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
