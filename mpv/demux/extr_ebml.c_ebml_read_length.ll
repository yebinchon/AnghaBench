; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_length.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBML_UINT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebml_read_length(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 128, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @stream_read_char(i32* %9)
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %11

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EBML_UINT_INVALID, align 4
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %33
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @stream_read_char(i32* %54)
  %56 = or i32 %53, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %47

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EBML_UINT_INVALID, align 4
  store i32 %69, i32* %2, align 4
  br label %78

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %72, -9223372036854775808
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @EBML_UINT_INVALID, align 4
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %74, %68, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @stream_read_char(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
