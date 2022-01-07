; ModuleID = '/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_significant_digits.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_significant_digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @significant_digits(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 48
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %54, %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 48
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %36

59:                                               ; preds = %45
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %83, %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 48
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %70, 57
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %88

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 46
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %63

88:                                               ; preds = %75, %63
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
