; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_eck_prn.c_print_bin.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_eck_prn.c_print_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i32)* @print_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_bin(i32* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [133 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %92

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 128, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = getelementptr inbounds [133 x i8], [133 x i8]* %13, i64 0, i64 0
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @memset(i8* %25, i8 signext 32, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds [133 x i8], [133 x i8]* %13, i64 0, i64 0
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @BIO_write(i32* %28, i8* %29, i32 %30)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %92

34:                                               ; preds = %24
  br label %36

35:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %92

42:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = urem i64 %48, 15
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds [133 x i8], [133 x i8]* %13, i64 0, i64 0
  store i8 10, i8* %52, align 16
  %53 = getelementptr inbounds [133 x i8], [133 x i8]* %13, i64 0, i64 1
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 4
  %56 = call i32 @memset(i8* %53, i8 signext 32, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds [133 x i8], [133 x i8]* %13, i64 0, i64 0
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = add nsw i32 %60, 4
  %62 = call i64 @BIO_write(i32* %57, i8* %58, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %92

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %79 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %72, i8* %78)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %92

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %43

86:                                               ; preds = %43
  %87 = load i32*, i32** %7, align 8
  %88 = call i64 @BIO_write(i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %92

91:                                               ; preds = %86
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %90, %81, %64, %41, %33, %16
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
