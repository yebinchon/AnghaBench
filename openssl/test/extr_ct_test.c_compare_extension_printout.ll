; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ct_test.c_compare_extension_printout.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ct_test.c_compare_extension_printout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509V3_EXT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @compare_extension_printout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_extension_printout(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @BIO_s_mem()
  %9 = call i32* @BIO_new(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @X509V3_EXT_DEFAULT, align 4
  %16 = call i32 @X509V3_EXT_print(i32* %13, i32* %14, i32 %15, i32 0)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  br label %35

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @BIO_write(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %35

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @BIO_get_mem_data(i32* %27, i8** %6)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @TEST_str_eq(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %35

34:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33, %25, %19
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @BIO_free(i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @X509V3_EXT_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
