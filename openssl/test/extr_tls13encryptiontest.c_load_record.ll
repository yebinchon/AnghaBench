; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_load_record.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_load_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SEQ_NUM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i8**, i8*, i64, i8*)* @load_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_record(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8** %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @OPENSSL_hexstr2buf(i32 %20, i32* null)
  %22 = load i8**, i8*** %10, align 8
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @OPENSSL_hexstr2buf(i32 %25, i32* null)
  store i8* %26, i8** %16, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @OPENSSL_hexstr2buf(i32 %29, i32* null)
  store i8* %30, i8** %15, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @multihexstr2buf(i32 %33, i64* %17)
  store i8* %34, i8** %14, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %6
  %39 = load i8*, i8** %16, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %15, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %14, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41, %38, %6
  br label %86

48:                                               ; preds = %44
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %51 = add i64 %49, %50
  %52 = call i8* @OPENSSL_malloc(i64 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %86

62:                                               ; preds = %48
  %63 = load i64, i64* %17, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @OPENSSL_free(i8* %72)
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %77 = call i32 @memcpy(i8* %74, i8* %75, i64 %76)
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @OPENSSL_free(i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @memcpy(i8* %80, i8* %81, i64 %82)
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @OPENSSL_free(i8* %84)
  store i32 1, i32* %7, align 4
  br label %97

86:                                               ; preds = %61, %47
  %87 = load i8**, i8*** %10, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @OPENSSL_free(i8* %88)
  %90 = load i8**, i8*** %10, align 8
  store i8* null, i8** %90, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 @OPENSSL_free(i8* %91)
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @OPENSSL_free(i8* %93)
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @OPENSSL_free(i8* %95)
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %86, %62
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i8* @OPENSSL_hexstr2buf(i32, i32*) #1

declare dso_local i8* @multihexstr2buf(i32, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
