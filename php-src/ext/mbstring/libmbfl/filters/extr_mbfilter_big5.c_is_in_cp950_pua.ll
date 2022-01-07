; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_big5.c_is_in_cp950_pua.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_big5.c_is_in_cp950_pua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_in_cp950_pua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_in_cp950_pua(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 250
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 254
  br i1 %10, label %29, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 142
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 160
  br i1 %16, label %29, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 129
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 141
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 199
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 200
  br i1 %28, label %29, label %46

29:                                               ; preds = %26, %20, %14, %8
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 57
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 127
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 160
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 255
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i1 [ true, %32 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %26, %23
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 198
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 160
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 255
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %43
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
