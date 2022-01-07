; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_speed.c_EVP_Update_loop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_speed.c_EVP_Update_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@save_count = common dso_local global i32 0, align 4
@lengths = common dso_local global i32* null, align 8
@testnum = common dso_local global i64 0, align 8
@decrypt = common dso_local global i64 0, align 8
@iv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @EVP_Update_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EVP_Update_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__**
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %3, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* @save_count, align 4
  %20 = mul nsw i32 %19, 4
  %21 = load i32*, i32** @lengths, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load i32*, i32** @lengths, align 8
  %26 = load i64, i64* @testnum, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* @decrypt, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @COND(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32*, i32** @lengths, align 8
  %42 = load i64, i64* @testnum, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EVP_DecryptUpdate(i32* %38, i8* %39, i32* %6, i8* %40, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @iv, align 4
  %51 = call i32 @EVP_CipherInit_ex(i32* %49, i32* null, i32* null, i32* null, i32 %50, i32 -1)
  br label %52

52:                                               ; preds = %48, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %33

56:                                               ; preds = %33
  br label %82

57:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @COND(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i32*, i32** @lengths, align 8
  %67 = load i64, i64* @testnum, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @EVP_EncryptUpdate(i32* %63, i8* %64, i32* %6, i8* %65, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @iv, align 4
  %76 = call i32 @EVP_CipherInit_ex(i32* %74, i32* null, i32* null, i32* null, i32 %75, i32 -1)
  br label %77

77:                                               ; preds = %73, %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i64, i64* @decrypt, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %5, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @EVP_DecryptFinal_ex(i32* %86, i8* %87, i32* %6)
  br label %93

89:                                               ; preds = %82
  %90 = load i32*, i32** %5, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @EVP_EncryptFinal_ex(i32* %90, i8* %91, i32* %6)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @COND(i32) #1

declare dso_local i32 @EVP_DecryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_DecryptFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
