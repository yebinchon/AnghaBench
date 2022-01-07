; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_find.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OSSL_STORE_SEARCH_BY_NAME = common dso_local global i64 0, align 8
@is_dir = common dso_local global i64 0, align 8
@OSSL_STORE_F_FILE_FIND = common dso_local global i32 0, align 4
@OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @file_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_find(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @OSSL_STORE_SEARCH_get_type(i32* %7)
  %9 = load i64, i64* @OSSL_STORE_SEARCH_BY_NAME, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @is_dir, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @OSSL_STORE_F_FILE_FIND, align 4
  %23 = load i32, i32* @OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES, align 4
  %24 = call i32 @OSSL_STOREerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @OSSL_STORE_SEARCH_get0_name(i32* %26)
  %28 = call i64 @X509_NAME_hash(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @BIO_snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %34)
  store i32 1, i32* %3, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @OSSL_STORE_F_FILE_FIND, align 4
  %41 = load i32, i32* @OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE, align 4
  %42 = call i32 @OSSL_STOREerr(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %25, %21, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @OSSL_STORE_SEARCH_get_type(i32*) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i64 @X509_NAME_hash(i32) #1

declare dso_local i32 @OSSL_STORE_SEARCH_get0_name(i32*) #1

declare dso_local i32 @BIO_snprintf(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
