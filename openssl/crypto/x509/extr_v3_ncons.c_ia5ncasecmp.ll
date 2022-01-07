; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_ia5ncasecmp.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_ia5ncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @ia5ncasecmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia5ncasecmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %74, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %8, align 1
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sge i32 %27, 65
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i8, i8* %8, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 32
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  br label %38

38:                                               ; preds = %33, %29, %21
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 90
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, 32
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  br label %51

51:                                               ; preds = %46, %42, %38
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %74

58:                                               ; preds = %51
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %82

65:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %82

66:                                               ; preds = %13
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %82

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %7, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  br label %10

81:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %71, %65, %64
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
