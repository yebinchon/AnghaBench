; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32*, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32, i32, i32*, i32, i32* }

@X509_NAME_free = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_clear(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = call i32 @ssl3_cleanup_key_block(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @OPENSSL_free(i32* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @X509_NAME_free, align 4
  %18 = call i32 @sk_X509_NAME_pop_free(i32 %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @OPENSSL_free(i32* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @OPENSSL_clear_free(i32 %29, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @OPENSSL_free(i32* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @OPENSSL_free(i32* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @EVP_PKEY_free(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @EVP_PKEY_free(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = call i32 @ssl3_free_digest_list(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @OPENSSL_free(i32* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @OPENSSL_free(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = call i32 @memset(%struct.TYPE_12__* %72, i32 0, i32 80)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call i32 @ssl_free_wbio_buffer(%struct.TYPE_11__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

78:                                               ; preds = %1
  %79 = load i32, i32* @SSL3_VERSION, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @OPENSSL_free(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %78, %77
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ssl3_cleanup_key_block(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @sk_X509_NAME_pop_free(i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32) #1

declare dso_local i32 @ssl3_free_digest_list(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ssl_free_wbio_buffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
