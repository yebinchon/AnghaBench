; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32*, i32*, i32 }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_MISSING_SECRET = common dso_local global i32 0, align 4
@PROV_R_MISSING_MESSAGE_DIGEST = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i64 0, align 8
@PROV_R_MISSING_CEK_ALG = common dso_local global i32 0, align 4
@X942KDF_MAX_INLEN = common dso_local global i64 0, align 8
@PROV_R_INAVLID_UKM_LENGTH = common dso_local global i32 0, align 4
@PROV_R_BAD_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @x942kdf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x942kdf_derive(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = call i32* @ossl_prov_digest_md(i32* %17)
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ERR_LIB_PROV, align 4
  %25 = load i32, i32* @PROV_R_MISSING_SECRET, align 4
  %26 = call i32 @ERR_raise(i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %105

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @ERR_LIB_PROV, align 4
  %32 = load i32, i32* @PROV_R_MISSING_MESSAGE_DIGEST, align 4
  %33 = call i32 @ERR_raise(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %105

34:                                               ; preds = %27
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NID_undef, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @ERR_LIB_PROV, align 4
  %42 = load i32, i32* @PROV_R_MISSING_CEK_ALG, align 4
  %43 = call i32 @ERR_raise(i32 %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %105

44:                                               ; preds = %34
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @X942KDF_MAX_INLEN, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @ERR_LIB_PROV, align 4
  %57 = load i32, i32* @PROV_R_INAVLID_UKM_LENGTH, align 4
  %58 = call i32 @ERR_raise(i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %105

59:                                               ; preds = %49, %44
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @ERR_LIB_PROV, align 4
  %67 = load i32, i32* @PROV_R_MISSING_CEK_ALG, align 4
  %68 = call i32 @ERR_raise(i32 %66, i32 %67)
  store i32 0, i32* %4, align 4
  br label %105

69:                                               ; preds = %59
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @x942_encode_otherinfo(i64 %72, i64 %75, i32* %78, i64 %81, i8** %12, i64* %13, i8** %11)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %69
  %85 = load i32, i32* @ERR_LIB_PROV, align 4
  %86 = load i32, i32* @PROV_R_BAD_ENCODING, align 4
  %87 = call i32 @ERR_raise(i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %105

88:                                               ; preds = %69
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @x942kdf_hash_kdm(i32* %89, i32* %92, i32 %95, i8* %96, i64 %97, i8* %98, i8* %99, i64 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @OPENSSL_free(i8* %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %88, %84, %65, %55, %40, %30, %23
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32* @ossl_prov_digest_md(i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @x942_encode_otherinfo(i64, i64, i32*, i64, i8**, i64*, i8**) #1

declare dso_local i32 @x942kdf_hash_kdm(i32*, i32*, i32, i8*, i64, i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
