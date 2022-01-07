; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_str_to_color.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_str_to_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bri\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @str_to_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_color(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @_tcsnicmp(i32* %16, i32 %17, i32 3)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %5, align 4
  %22 = call i64 @chop_blank(i32** %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %70

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @txt_clr(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %70

31:                                               ; preds = %26
  %32 = call i64 @chop_blank(i32** %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call i64 @chop_blank(i32** %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4
  br label %70

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 3
  %42 = or i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = call i64 @_tcsnicmp(i32* %44, i32 %45, i32 3)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  %50 = call i64 @chop_blank(i32** %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %70

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @txt_clr(i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %70

59:                                               ; preds = %54
  %60 = call i64 @chop_blank(i32** %4)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32**, i32*** %3, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 4
  %66 = or i32 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 7
  %69 = or i32 %66, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %59, %58, %52, %37, %30, %24, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @_tcsnicmp(i32*, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @chop_blank(i32**) #1

declare dso_local i32 @txt_clr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
