; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_namemap_internal_test.c_test_namemap.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_namemap_internal_test.c_test_namemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAME1 = common dso_local global i8* null, align 8
@NAME2 = common dso_local global i8* null, align 8
@ALIAS1 = common dso_local global i8* null, align 8
@ALIAS1_UC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_namemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_namemap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i8*, i8** @NAME1, align 8
  %14 = call i32 @ossl_namemap_add(i32* %12, i32 0, i8* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i8*, i8** @NAME2, align 8
  %17 = call i32 @ossl_namemap_add(i32* %15, i32 0, i8* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** @ALIAS1, align 8
  %21 = call i32 @ossl_namemap_add(i32* %18, i32 %19, i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** @ALIAS1_UC, align 8
  %24 = call i32 @ossl_namemap_add(i32* %22, i32 0, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i8*, i8** @NAME1, align 8
  %27 = call i32 @ossl_namemap_name2num(i32* %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** @NAME2, align 8
  %30 = call i32 @ossl_namemap_name2num(i32* %28, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i8*, i8** @ALIAS1, align 8
  %33 = call i32 @ossl_namemap_name2num(i32* %31, i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i8*, i8** @ALIAS1_UC, align 8
  %36 = call i32 @ossl_namemap_name2num(i32* %34, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @ossl_namemap_name2num(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @TEST_int_ne(i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @TEST_int_ne(i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @TEST_int_eq(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @TEST_int_eq(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @TEST_int_eq(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @TEST_int_eq(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @TEST_int_eq(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @TEST_int_eq(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @TEST_int_eq(i32 %77, i32 0)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %76, %71, %66, %61, %56, %51, %46, %42, %1
  %81 = phi i1 [ false, %71 ], [ false, %66 ], [ false, %61 ], [ false, %56 ], [ false, %51 ], [ false, %46 ], [ false, %42 ], [ false, %1 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i32 @ossl_namemap_add(i32*, i32, i8*) #1

declare dso_local i32 @ossl_namemap_name2num(i32*, i8*) #1

declare dso_local i64 @TEST_int_ne(i32, i32) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
