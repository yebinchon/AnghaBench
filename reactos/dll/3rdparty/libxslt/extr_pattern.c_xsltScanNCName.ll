; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltScanNCName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltScanNCName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @xsltScanNCName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xsltScanNCName(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @SKIP_BLANKS, align 4
  %10 = load i32*, i32** @CUR_PTR, align 8
  store i32* %10, i32** %4, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @xmlStringCurrentChar(i32* null, i32* %11, i32* %8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @IS_LETTER(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 95
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %67

20:                                               ; preds = %16, %1
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @IS_LETTER(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @IS_DIGIT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %46, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @IS_COMBINING(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @IS_EXTENDER(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38, %35, %32, %29, %25, %21
  %47 = phi i1 [ true, %38 ], [ true, %35 ], [ true, %32 ], [ true, %29 ], [ true, %25 ], [ true, %21 ], [ %45, %42 ]
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @xmlStringCurrentChar(i32* null, i32* %53, i32* %8)
  store i32 %54, i32* %7, align 4
  br label %21

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32* @xmlStrndup(i32* %56, i32 %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %5, align 8
  store i32* %65, i32** @CUR_PTR, align 8
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %2, align 8
  br label %67

67:                                               ; preds = %55, %19
  %68 = load i32*, i32** %2, align 8
  ret i32* %68
}

declare dso_local i32 @xmlStringCurrentChar(i32*, i32*, i32*) #1

declare dso_local i64 @IS_LETTER(i32) #1

declare dso_local i64 @IS_DIGIT(i32) #1

declare dso_local i64 @IS_COMBINING(i32) #1

declare dso_local i64 @IS_EXTENDER(i32) #1

declare dso_local i32* @xmlStrndup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
