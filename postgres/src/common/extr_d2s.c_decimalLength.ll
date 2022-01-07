; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_decimalLength.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_decimalLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @decimalLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decimalLength(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 100000000000000000
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = icmp sge i64 %8, 10000000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 17, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp sge i64 %12, 1000000000000000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 16, i32* %2, align 4
  br label %72

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = icmp sge i64 %16, 100000000000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 15, i32* %2, align 4
  br label %72

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = icmp sge i64 %20, 10000000000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 14, i32* %2, align 4
  br label %72

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = icmp sge i64 %24, 1000000000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 13, i32* %2, align 4
  br label %72

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = icmp sge i64 %28, 100000000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 12, i32* %2, align 4
  br label %72

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = icmp sge i64 %32, 10000000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 11, i32* %2, align 4
  br label %72

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = icmp sge i64 %36, 1000000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 10, i32* %2, align 4
  br label %72

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = icmp sge i64 %40, 100000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 9, i32* %2, align 4
  br label %72

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = icmp sge i64 %44, 10000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 8, i32* %2, align 4
  br label %72

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8
  %49 = icmp sge i64 %48, 1000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 7, i32* %2, align 4
  br label %72

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  %53 = icmp sge i64 %52, 100000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 6, i32* %2, align 4
  br label %72

55:                                               ; preds = %51
  %56 = load i64, i64* %3, align 8
  %57 = icmp sge i64 %56, 10000
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 5, i32* %2, align 4
  br label %72

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = icmp sge i64 %60, 1000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 4, i32* %2, align 4
  br label %72

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = icmp sge i64 %64, 100
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 3, i32* %2, align 4
  br label %72

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = icmp sge i64 %68, 10
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 2, i32* %2, align 4
  br label %72

71:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
