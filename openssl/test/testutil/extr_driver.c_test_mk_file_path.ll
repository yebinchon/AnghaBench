; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_test_mk_file_path.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_test_mk_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_mk_file_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %9, %11
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @OPENSSL_zalloc(i64 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @OPENSSL_strlcpy(i8* %23, i8* %24, i64 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @OPENSSL_strlcat(i8* %27, i8* %28, i64 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @OPENSSL_strlcat(i8* %31, i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %22, %2
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
