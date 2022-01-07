; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_equal_email.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_equal_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @equal_email to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal_email(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i64, i64* %12, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %55

38:                                               ; preds = %31, %22
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 %42, %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @equal_nocase(i8* %41, i64 %44, i8* %47, i64 %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %67

54:                                               ; preds = %38
  br label %56

55:                                               ; preds = %31
  br label %19

56:                                               ; preds = %54, %19
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @equal_case(i8* %62, i64 %63, i8* %64, i64 %65, i32 0)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %53, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @equal_nocase(i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @equal_case(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
