; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_Tishri1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_Tishri1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOON = common dso_local global i32 0, align 4
@TUESDAY = common dso_local global i32 0, align 4
@AM3_11_20 = common dso_local global i32 0, align 4
@MONDAY = common dso_local global i32 0, align 4
@AM9_32_43 = common dso_local global i32 0, align 4
@WEDNESDAY = common dso_local global i32 0, align 4
@FRIDAY = common dso_local global i32 0, align 4
@SUNDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @Tishri1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Tishri1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = srem i32 %12, 7
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 18
  br label %34

34:                                               ; preds = %31, %28, %25, %22, %19, %16, %3
  %35 = phi i1 [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %3 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %57, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 11
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 14
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 17
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51, %48, %45, %42, %39, %34
  %58 = phi i1 [ true, %51 ], [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ true, %34 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @NOON, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @TUESDAY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @AM3_11_20, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %85, label %74

74:                                               ; preds = %70, %66, %63
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MONDAY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @AM9_32_43, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %70, %57
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 7
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %81, %77, %74
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @WEDNESDAY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @FRIDAY, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @SUNDAY, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98, %94
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
