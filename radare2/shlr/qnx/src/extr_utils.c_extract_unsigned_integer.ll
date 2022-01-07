; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_utils.c_extract_unsigned_integer.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_utils.c_extract_unsigned_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"This operation is not available on integers of more than %d byte(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_unsigned_integer(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @eprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %20

20:                                               ; preds = %18, %3
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %35, %23
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %31, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  br label %25

38:                                               ; preds = %25
  br label %56

39:                                               ; preds = %20
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  store i32* %41, i32** %8, align 8
  br label %42

42:                                               ; preds = %52, %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp uge i32* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 -1
  store i32* %54, i32** %8, align 8
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
