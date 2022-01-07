; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bf.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bf.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @r_return_val_if_fail(i32* %8, i32 0)
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %12 = call i32 @r_buf_read_at(i32* %10, i32 0, i32* %11, i32 64)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  store i32* %17, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 43, label %28
    i32 45, label %28
    i32 62, label %28
    i32 60, label %28
    i32 91, label %28
    i32 93, label %28
    i32 44, label %28
    i32 46, label %28
    i32 32, label %28
    i32 10, label %28
    i32 13, label %28
  ]

28:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
