; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_signed_length.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_signed_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBML_UINT_INVALID = common dso_local global i64 0, align 8
@EBML_INT_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ebml_read_signed_length(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @stream_tell(i32* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @ebml_read_length(i32* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @EBML_UINT_INVALID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @EBML_INT_INVALID, align 8
  store i64 %15, i64* %2, align 8
  br label %30

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @stream_tell(i32* %17)
  %19 = load i64, i64* %6, align 8
  %20 = sub nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 7, %23
  %25 = sub nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = sub nsw i64 %27, 1
  %29 = sub nsw i64 %22, %28
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %16, %14
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i64 @stream_tell(i32*) #1

declare dso_local i64 @ebml_read_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
