; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_lltoa.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_lltoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64)* @grub_lltoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_lltoa(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 120
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 16, i32 10
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 100
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 45, i8* %23, align 1
  br label %25

25:                                               ; preds = %20, %17, %3
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, 15
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ugt i32 %34, 9
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 97
  %39 = sub i32 %38, 10
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 48
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = lshr i64 %49, 4
  store i64 %50, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %30, label %52

52:                                               ; preds = %48
  br label %66

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %62, %53
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @grub_divmod64(i64 %55, i32 10, i32* %10)
  store i64 %56, i64* %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 48
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %54
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %54, label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i8*, i8** %8, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @grub_reverse(i8* %68)
  %70 = load i8*, i8** %8, align 8
  ret i8* %70
}

declare dso_local i64 @grub_divmod64(i64, i32, i32*) #1

declare dso_local i32 @grub_reverse(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
