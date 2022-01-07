; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubdec.c_check_eme_pkcs1_v15.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubdec.c_check_eme_pkcs1_v15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32)* @check_eme_pkcs1_v15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @check_eme_pkcs1_v15(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64*, i64** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64* %12, i64** %6, align 8
  %13 = load i64*, i64** %4, align 8
  store i64* %13, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %56

17:                                               ; preds = %2
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %7, align 8
  %20 = load i64, i64* %18, align 8
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64* null, i64** %3, align 8
  br label %56

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i64*, i64** %7, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = icmp ult i64* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %24

39:                                               ; preds = %32
  %40 = load i64*, i64** %7, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = icmp eq i64* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64* null, i64** %3, align 8
  br label %56

44:                                               ; preds = %39
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64* null, i64** %3, align 8
  br label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64* null, i64** %3, align 8
  br label %56

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64* %55, i64** %3, align 8
  br label %56

56:                                               ; preds = %53, %52, %48, %43, %22, %16
  %57 = load i64*, i64** %3, align 8
  ret i64* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
