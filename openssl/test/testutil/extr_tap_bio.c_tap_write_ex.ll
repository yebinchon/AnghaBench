; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tap_bio.c_tap_write_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tap_bio.c_tap_write_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tap_write_ex.empty = internal global [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*)* @tap_write_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_write_ex(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @BIO_next(i32* %13)
  store i32* %14, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %64, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @BIO_get_data(i32* %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @BIO_set_data(i32* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @tap_write_ex.empty, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %36, %23
  %27 = load i32, i32* %12, align 4
  %28 = call i32 (...) @subtest_level()
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @write_string(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %70

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @write_string(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %70

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i32*, i32** %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i32 @write_string(i32* %46, i8* %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %70

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @BIO_set_data(i32* %61, i8* null)
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %15

67:                                               ; preds = %15
  %68 = load i64, i64* %11, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  store i32 1, i32* %5, align 4
  br label %73

70:                                               ; preds = %52, %43, %34
  %71 = load i64, i64* %11, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_set_data(i32*, i8*) #1

declare dso_local i32 @subtest_level(...) #1

declare dso_local i32 @write_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
