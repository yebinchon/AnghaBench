; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_v3ext.c_test_pathlen.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_v3ext.c_test_pathlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@infile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pathlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pathlen() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @infile, align 4
  %6 = call i32* @BIO_new_file(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @PEM_read_bio_X509(i32* %10, i32* null, i32* null, i32* null)
  store i32* %11, i32** %1, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @X509_get_pathlen(i32* %15)
  store i64 %16, i64* %3, align 8
  %17 = call i32 @TEST_int_eq(i64 %16, i32 6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9, %0
  br label %21

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @BIO_free(i32* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @X509_free(i32* %24)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i64 @X509_get_pathlen(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
