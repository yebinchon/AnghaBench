; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_pkey_meth_test.c_test_asn1_meths.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_pkey_meth_test.c_test_asn1_meths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"EVP_PKEY_ASN1_METHOD table out of order\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<NO NAME>\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d : %s : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_asn1_meths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_asn1_meths() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (...) @EVP_PKEY_asn1_get_count()
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = call i32* @EVP_PKEY_asn1_get0(i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @EVP_PKEY_asn1_get0_info(i32* %4, i32* null, i32* null, i8** null, i32* null, i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = call i32 @TEST_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %48, %28
  %31 = load i32, i32* %1, align 4
  %32 = call i32 (...) @EVP_PKEY_asn1_get_count()
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32, i32* %1, align 4
  %36 = call i32* @EVP_PKEY_asn1_get0(i32 %35)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @EVP_PKEY_asn1_get0_info(i32* %4, i32* null, i32* null, i8** %6, i32* null, i32* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @OBJ_nid2ln(i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @TEST_note(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @EVP_PKEY_asn1_get_count(...) #1

declare dso_local i32* @EVP_PKEY_asn1_get0(i32) #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32*, i32*, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @TEST_note(i8*, i32, i32, i8*) #1

declare dso_local i32 @OBJ_nid2ln(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
