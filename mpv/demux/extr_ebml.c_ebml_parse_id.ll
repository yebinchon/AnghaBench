; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_parse_id.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_parse_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBML_ID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @ebml_parse_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebml_parse_id(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EBML_ID_INVALID, align 4
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %10, align 4
  store i32 128, i32* %11, align 4
  br label %25

25:                                               ; preds = %39, %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EBML_ID_INVALID, align 4
  store i32 %37, i32* %4, align 4
  br label %64

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %25

42:                                               ; preds = %25
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %55, %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ult i32* %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  %60 = load i32, i32* %58, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  br label %45

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %36, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
