; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_shared_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_shared_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32**, %struct.TYPE_10__, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64, i64, i32*, i32* }

@SSL_OP_CIPHER_SERVER_PREFERENCE = common dso_local global i32 0, align 4
@SSL_F_TLS1_SET_SHARED_SIGALGS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @tls1_set_shared_sigalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_set_shared_sigalgs(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32** null, i32*** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @tls1_suiteb(%struct.TYPE_11__* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = call i32 @OPENSSL_free(i32** %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32** null, i32*** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %65

46:                                               ; preds = %36, %31, %1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  br label %64

61:                                               ; preds = %51, %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i64 @tls12_get_psigalgs(%struct.TYPE_11__* %62, i32 0, i32** %6)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SSL_OP_CIPHER_SERVER_PREFERENCE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72, %65
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** %4, align 8
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %5, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %8, align 8
  br label %101

88:                                               ; preds = %72
  %89 = load i32*, i32** %6, align 8
  store i32* %89, i32** %5, align 8
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %4, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %88, %75
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @tls12_shared_sigalgs(%struct.TYPE_11__* %102, i32** null, i32* %103, i64 %104, i32* %105, i64 %106)
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %101
  %111 = load i64, i64* %10, align 8
  %112 = mul i64 %111, 8
  %113 = call i32** @OPENSSL_malloc(i64 %112)
  store i32** %113, i32*** %11, align 8
  %114 = icmp eq i32** %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @SSL_F_TLS1_SET_SHARED_SIGALGS, align 4
  %117 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %118 = call i32 @SSLerr(i32 %116, i32 %117)
  store i32 0, i32* %2, align 4
  br label %135

119:                                              ; preds = %110
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = load i32**, i32*** %11, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i64 @tls12_shared_sigalgs(%struct.TYPE_11__* %120, i32** %121, i32* %122, i64 %123, i32* %124, i64 %125)
  store i64 %126, i64* %10, align 8
  br label %128

127:                                              ; preds = %101
  store i32** null, i32*** %11, align 8
  br label %128

128:                                              ; preds = %127, %119
  %129 = load i32**, i32*** %11, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  store i32** %129, i32*** %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %128, %115
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @tls1_suiteb(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i32**) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_11__*, i32, i32**) #1

declare dso_local i64 @tls12_shared_sigalgs(%struct.TYPE_11__*, i32**, i32*, i64, i32*, i64) #1

declare dso_local i32** @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
