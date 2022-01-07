; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_utf8_seq_length.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_utf8_seq_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @utf8_seq_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_seq_length(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  store i8 %5, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sle i32 128, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sle i32 %16, 191
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %56

19:                                               ; preds = %14, %10
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 192
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 193
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 0, i32* %2, align 4
  br label %56

28:                                               ; preds = %23
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 194, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 223
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 2, i32* %2, align 4
  br label %56

37:                                               ; preds = %32, %28
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 224, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 239
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 3, i32* %2, align 4
  br label %56

46:                                               ; preds = %41, %37
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 240, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sle i32 %52, 244
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 4, i32* %2, align 4
  br label %56

55:                                               ; preds = %50, %46
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %45, %36, %27, %18, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
