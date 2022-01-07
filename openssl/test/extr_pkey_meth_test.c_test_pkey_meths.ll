; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_pkey_meth_test.c_test_pkey_meths.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_pkey_meth_test.c_test_pkey_meths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"EVP_PKEY_METHOD table out of order\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pkey_meths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pkey_meths() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %21, %0
  %7 = load i64, i64* %1, align 8
  %8 = call i64 (...) @EVP_PKEY_meth_get_count()
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32* @EVP_PKEY_meth_get0(i64 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @EVP_PKEY_meth_get0_info(i32* %4, i32* null, i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19
  %22 = load i64, i64* %1, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %1, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = call i32 @TEST_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %29

29:                                               ; preds = %42, %27
  %30 = load i64, i64* %1, align 8
  %31 = call i64 (...) @EVP_PKEY_meth_get_count()
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = call i32* @EVP_PKEY_meth_get0(i64 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @EVP_PKEY_meth_get0_info(i32* %4, i32* null, i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @OBJ_nid2ln(i32 %39)
  %41 = call i32 @TEST_note(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i64, i64* %1, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %29

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @EVP_PKEY_meth_get_count(...) #1

declare dso_local i32* @EVP_PKEY_meth_get0(i64) #1

declare dso_local i32 @EVP_PKEY_meth_get0_info(i32*, i32*, i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @TEST_note(i8*, i32, i32) #1

declare dso_local i32 @OBJ_nid2ln(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
