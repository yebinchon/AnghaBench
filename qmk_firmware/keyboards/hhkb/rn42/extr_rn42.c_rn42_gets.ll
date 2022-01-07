; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42.c_rn42_gets.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42.c_rn42_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rn42_gets.s = internal global [24 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rn42_gets(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @timer_read()
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 23
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @timer_elapsed(i64 %11)
  %13 = load i64, i64* %2, align 8
  %14 = icmp slt i64 %12, %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  %18 = call i32 (...) @rn42_getc()
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = trunc i32 %21 to i8
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %7

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [24 x i8], [24 x i8]* @rn42_gets.s, i64 0, i64 %37
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %32, %17
  br label %7

40:                                               ; preds = %31, %15
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [24 x i8], [24 x i8]* @rn42_gets.s, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @rn42_gets.s, i64 0, i64 0)
}

declare dso_local i64 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i64) #1

declare dso_local i32 @rn42_getc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
