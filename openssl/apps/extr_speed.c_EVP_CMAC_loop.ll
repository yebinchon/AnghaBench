; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_speed.c_EVP_CMAC_loop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_speed.c_EVP_CMAC_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@EVP_CMAC_loop.key = internal constant [16 x i8] c"This is a key...", align 16
@save_count = common dso_local global i32 0, align 4
@lengths = common dso_local global i32* null, align 8
@testnum = common dso_local global i64 0, align 8
@evp_cmac_cipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @EVP_CMAC_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EVP_CMAC_loop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  store i64 16, i64* %8, align 8
  %20 = load i32, i32* @save_count, align 4
  %21 = mul nsw i32 %20, 4
  %22 = load i32*, i32** @lengths, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32*, i32** @lengths, align 8
  %27 = load i64, i64* @testnum, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %25, %29
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %56, %1
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @COND(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @evp_cmac_cipher, align 4
  %38 = call i32 @CMAC_Init(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @EVP_CMAC_loop.key, i64 0, i64 0), i32 16, i32 %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32*, i32** @lengths, align 8
  %44 = load i64, i64* @testnum, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CMAC_Update(i32* %41, i8* %42, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %52 = call i32 @CMAC_Final(i32* %50, i8* %51, i64* %8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %40, %35
  store i32 -1, i32* %2, align 4
  br label %61

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @COND(i32) #1

declare dso_local i32 @CMAC_Init(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @CMAC_Update(i32*, i8*, i32) #1

declare dso_local i32 @CMAC_Final(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
