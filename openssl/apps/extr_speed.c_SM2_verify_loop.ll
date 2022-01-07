; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_speed.c_SM2_verify_loop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_speed.c_SM2_verify_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i64, i32**, i32** }

@sm2_c = common dso_local global i32** null, align 8
@testnum = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SM2 verify init failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SM2 verify failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @SM2_verify_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SM2_verify_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %3, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  store i32** %28, i32*** %10, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %72, %1
  %30 = load i32**, i32*** @sm2_c, align 8
  %31 = load i64, i64* @testnum, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @COND(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %29
  %39 = load i32**, i32*** %5, align 8
  %40 = load i64, i64* @testnum, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 (...) @EVP_sm3()
  %44 = load i32**, i32*** %10, align 8
  %45 = load i64, i64* @testnum, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @EVP_DigestVerifyInit(i32* %42, i32* null, i32 %43, i32* null, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* @bio_err, align 4
  %52 = call i32 @BIO_printf(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @bio_err, align 4
  %54 = call i32 @ERR_print_errors(i32 %53)
  store i32 -1, i32* %9, align 4
  br label %75

55:                                               ; preds = %38
  %56 = load i32**, i32*** %5, align 8
  %57 = load i64, i64* @testnum, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @EVP_DigestVerify(i32* %59, i8* %60, i64 %61, i8* %62, i32 20)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @bio_err, align 4
  %68 = call i32 @BIO_printf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @bio_err, align 4
  %70 = call i32 @ERR_print_errors(i32 %69)
  store i32 -1, i32* %9, align 4
  br label %75

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %29

75:                                               ; preds = %66, %50, %29
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i64 @COND(i32) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sm3(...) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @EVP_DigestVerify(i32*, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
