; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_ch2val.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_ch2val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @s_ch2val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_ch2val(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %7 = load i8, i8* %4, align 1
  %8 = call i64 @isdigit(i8 zeroext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = sub nsw i32 %12, 48
  store i32 %13, i32* %6, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 10
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i8, i8* %4, align 1
  %19 = call i64 @isalpha(i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8, i8* %4, align 1
  %23 = call signext i8 @toupper(i8 zeroext %22)
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 65
  %26 = add nsw i32 %25, 10
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %17, %14
  store i32 -1, i32* %3, align 4
  br label %38

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ -1, %33 ], [ %35, %34 ]
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local signext i8 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
