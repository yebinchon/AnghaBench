; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_kbkdf_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_kbkdf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32* }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_NO_KEY_SET = common dso_local global i32 0, align 4
@PROV_R_MISSING_MAC = common dso_local global i32 0, align 4
@PROV_R_INVALID_SEED_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @kbkdf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbkdf_derive(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 %15, 8
  %17 = call i32 @be32(i64 %16)
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @ERR_LIB_PROV, align 4
  %34 = load i32, i32* @PROV_R_NO_KEY_SET, align 4
  %35 = call i32 @ERR_raise(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %112

36:                                               ; preds = %27
  %37 = load i32, i32* @ERR_LIB_PROV, align 4
  %38 = load i32, i32* @PROV_R_MISSING_MAC, align 4
  %39 = call i32 @ERR_raise(i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %112

40:                                               ; preds = %3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @EVP_MAC_size(i32* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %100

48:                                               ; preds = %40
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @ERR_LIB_PROV, align 4
  %61 = load i32, i32* @PROV_R_INVALID_SEED_LENGTH, align 4
  %62 = call i32 @ERR_raise(i32 %60, i32 %61)
  br label %100

63:                                               ; preds = %53, %48
  %64 = load i64, i64* %12, align 8
  %65 = call i8* @OPENSSL_zalloc(i64 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %100

69:                                               ; preds = %63
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 8
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @derive(i32* %72, i32 %75, i32 %78, i64 %81, i32 %84, i32 %87, i32 %90, i32 %93, i8* %94, i64 %95, i32 %96, i8* %97, i64 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %69, %68, %59, %47
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @OPENSSL_cleanse(i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @OPENSSL_clear_free(i8* %108, i64 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %36, %32
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @be32(i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i64 @EVP_MAC_size(i32*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @derive(i32*, i32, i32, i64, i32, i32, i32, i32, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
