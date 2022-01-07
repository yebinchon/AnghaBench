; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8*, i32, i32, i32, i32 }

@RSA_PKCS1_OAEP_PADDING = common dso_local global i64 0, align 8
@RSA_NO_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64*, i8*, i64)* @pkey_rsa_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_encrypt(%struct.TYPE_11__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RSA_PKCS1_OAEP_PADDING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RSA_size(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = call i32 @setup_tbuf(%struct.TYPE_10__* %31, %struct.TYPE_11__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %96

36:                                               ; preds = %23
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8* %39, i32 %40, i8* %41, i64 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %96

58:                                               ; preds = %36
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @RSA_NO_PADDING, align 8
  %72 = call i32 @RSA_public_encrypt(i64 %60, i8* %63, i8* %64, i32 %70, i64 %71)
  store i32 %72, i32* %12, align 4
  br label %87

73:                                               ; preds = %5
  %74 = load i64, i64* %11, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @RSA_public_encrypt(i64 %74, i8* %75, i8* %76, i32 %82, i64 %85)
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %73, %58
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  store i32 1, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %90, %57, %35
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @RSA_size(i32) #1

declare dso_local i32 @setup_tbuf(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8*, i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @RSA_public_encrypt(i64, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
