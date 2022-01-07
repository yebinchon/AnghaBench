; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_boundary_anchor.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_boundary_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @mpc_boundary_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_boundary_anchor(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %5, align 1
  %9 = call i64 @strchr(i8* %7, i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %49

16:                                               ; preds = %11, %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %4, align 1
  %19 = call i64 @strchr(i8* %17, i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %49

26:                                               ; preds = %21, %16
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i64 @strchr(i8* %27, i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %4, align 1
  %34 = call i64 @strchr(i8* %32, i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %49

37:                                               ; preds = %31, %26
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %5, align 1
  %40 = call i64 @strchr(i8* %38, i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %4, align 1
  %45 = call i64 @strchr(i8* %43, i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %42, %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %36, %25, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
