; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_speed.c_SM2_sign_loop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_speed.c_SM2_sign_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i64, i32**, i32** }

@sm2_c = common dso_local global i32** null, align 8
@testnum = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SM2 init sign failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SM2 sign failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @SM2_sign_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SM2_sign_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__**
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32**, i32*** %19, align 8
  store i32** %20, i32*** %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  store i32** %32, i32*** %11, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %79, %1
  %34 = load i32**, i32*** @sm2_c, align 8
  %35 = load i64, i64* @testnum, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @COND(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %33
  %43 = load i32**, i32*** %5, align 8
  %44 = load i64, i64* @testnum, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 (...) @EVP_sm3()
  %48 = load i32**, i32*** %11, align 8
  %49 = load i64, i64* @testnum, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @EVP_DigestSignInit(i32* %46, i32* null, i32 %47, i32* null, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @bio_err, align 4
  %56 = call i32 @BIO_printf(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @bio_err, align 4
  %58 = call i32 @ERR_print_errors(i32 %57)
  store i32 -1, i32* %10, align 4
  br label %82

59:                                               ; preds = %42
  %60 = load i32**, i32*** %5, align 8
  %61 = load i64, i64* @testnum, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @EVP_DigestSign(i32* %63, i8* %64, i64* %7, i8* %65, i32 20)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* @bio_err, align 4
  %71 = call i32 @BIO_printf(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @bio_err, align 4
  %73 = call i32 @ERR_print_errors(i32 %72)
  store i32 -1, i32* %10, align 4
  br label %82

74:                                               ; preds = %59
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %8, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %33

82:                                               ; preds = %69, %54, %33
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i64 @COND(i32) #1

declare dso_local i32 @EVP_DigestSignInit(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sm3(...) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @EVP_DigestSign(i32*, i8*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
