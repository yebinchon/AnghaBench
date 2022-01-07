; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"base64: selftest failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = call i32 @time(i32 0)
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %13 = call i64 @base64_encode(i8* %12, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  store i64 %13, i64* %5, align 8
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @base64_decode(i8* %14, i32 100, i8* %15, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 5
  br i1 %19, label %20, label %27

20:                                               ; preds = %0
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %22 = call i64 @memcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %75

27:                                               ; preds = %20, %0
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %71, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %29, 100
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = call i32 @r_rand(i32* %8)
  %33 = srem i32 %32, 50
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %46, %31
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = call i32 @r_rand(i32* %8)
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %44
  store i8 %42, i8* %45, align 1
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %35

49:                                               ; preds = %35
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @base64_encode(i8* %50, i32 100, i8* %51, i64 %52)
  store i64 %53, i64* %6, align 8
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @base64_decode(i8* %54, i32 100, i8* %55, i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @memcmp(i8* %62, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %75

70:                                               ; preds = %61, %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %28

74:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %74, %67, %24
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @time(i32) #1

declare dso_local i64 @base64_encode(i8*, i32, i8*, i64) #1

declare dso_local i64 @base64_decode(i8*, i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @r_rand(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
