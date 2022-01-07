; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_namemap_internal_test.c_test_digestbyname.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_namemap_internal_test.c_test_digestbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_digestbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_digestbyname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @ossl_namemap_stored(i32* null)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ossl_namemap_add(i32* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @TEST_int_ne(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

13:                                               ; preds = %0
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ossl_namemap_add(i32* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @TEST_int_eq(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %35

21:                                               ; preds = %13
  %22 = call i32* @EVP_get_digestbyname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %35

27:                                               ; preds = %21
  %28 = call i32* @EVP_get_digestbyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @TEST_ptr_eq(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %35

34:                                               ; preds = %27
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %26, %20, %12
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32* @ossl_namemap_stored(i32*) #1

declare dso_local i32 @ossl_namemap_add(i32*, i32, i8*) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_ptr_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
