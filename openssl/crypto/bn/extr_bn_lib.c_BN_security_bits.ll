; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_security_bits.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_security_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_security_bits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 15360
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 256, i32* %6, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 7680
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 192, i32* %6, align 4
  br label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 3072
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 128, i32* %6, align 4
  br label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 2048
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 112, i32* %6, align 4
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 1024
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 80, i32* %6, align 4
  br label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 80
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %42, %35, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
