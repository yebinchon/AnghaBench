; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_hextoint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_hextoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hextoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hextoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @isascii(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @isdigit(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 48
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 97
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 102
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 10
  %24 = sub nsw i32 %23, 97
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 70
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 10
  %34 = sub nsw i32 %33, 65
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %28, %25
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %21, %12, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @isascii(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
