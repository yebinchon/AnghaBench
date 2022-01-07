; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8*, i32, i32, i32, i32 }

@RSA_PKCS1_OAEP_PADDING = common dso_local global i64 0, align 8
@RSA_NO_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64*, i8*, i64)* @pkey_rsa_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_decrypt(%struct.TYPE_11__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RSA_PKCS1_OAEP_PADDING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = call i32 @setup_tbuf(%struct.TYPE_10__* %23, %struct.TYPE_11__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %94

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @RSA_NO_PADDING, align 8
  %41 = call i32 @RSA_private_decrypt(i64 %29, i8* %30, i8* %33, i32 %39, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %94

46:                                               ; preds = %28
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8* %47, i32 %48, i8* %51, i32 %52, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %81

67:                                               ; preds = %5
  %68 = load i64, i64* %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @RSA_private_decrypt(i64 %68, i8* %69, i8* %70, i32 %76, i64 %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %67, %46
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @constant_time_msb_s(i32 %82)
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @constant_time_select_s(i32 %83, i64 %85, i32 %86)
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @constant_time_msb(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @constant_time_select_int(i32 %90, i32 %91, i32 1)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %81, %44, %27
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @setup_tbuf(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @RSA_private_decrypt(i64, i8*, i8*, i32, i64) #1

declare dso_local i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @constant_time_select_s(i32, i64, i32) #1

declare dso_local i32 @constant_time_msb_s(i32) #1

declare dso_local i32 @constant_time_select_int(i32, i32, i32) #1

declare dso_local i32 @constant_time_msb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
