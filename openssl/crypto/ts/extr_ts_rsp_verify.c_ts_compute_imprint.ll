; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_ts_compute_imprint.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_ts_compute_imprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@TS_F_TS_COMPUTE_IMPRINT = common dso_local global i32 0, align 4
@TS_R_UNSUPPORTED_MD_ALGORITHM = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_9__**, i8**, i32*)* @ts_compute_imprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_compute_imprint(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %13, align 8
  store i32* null, i32** %15, align 8
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %24, align 8
  %25 = load i8**, i8*** %10, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %27 = call %struct.TYPE_9__* @X509_ALGOR_dup(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %28, align 8
  %29 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %98

31:                                               ; preds = %5
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @EVP_get_digestbyobj(i32 %35)
  store i32* %36, i32** %14, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @TS_F_TS_COMPUTE_IMPRINT, align 4
  %40 = load i32, i32* @TS_R_UNSUPPORTED_MD_ALGORITHM, align 4
  %41 = call i32 @TSerr(i32 %39, i32 %40)
  br label %98

42:                                               ; preds = %31
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @EVP_MD_size(i32* %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %98

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @OPENSSL_malloc(i32 %52)
  %54 = load i8**, i8*** %10, align 8
  store i8* %53, i8** %54, align 8
  %55 = icmp eq i8* %53, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @TS_F_TS_COMPUTE_IMPRINT, align 4
  %58 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %59 = call i32 @TSerr(i32 %57, i32 %58)
  br label %98

60:                                               ; preds = %48
  %61 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @TS_F_TS_COMPUTE_IMPRINT, align 4
  %66 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %67 = call i32 @TSerr(i32 %65, i32 %66)
  br label %98

68:                                               ; preds = %60
  %69 = load i32*, i32** %15, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @EVP_DigestInit(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %98

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %78 = call i32 @BIO_read(i32* %76, i8* %77, i32 4096)
  store i32 %78, i32* %17, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @EVP_DigestUpdate(i32* %81, i8* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %98

87:                                               ; preds = %80
  br label %75

88:                                               ; preds = %75
  %89 = load i32*, i32** %15, align 8
  %90 = load i8**, i8*** %10, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @EVP_DigestFinal(i32* %89, i8* %91, i32* null)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %98

95:                                               ; preds = %88
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @EVP_MD_CTX_free(i32* %96)
  store i32 1, i32* %6, align 4
  br label %109

98:                                               ; preds = %94, %86, %73, %64, %56, %47, %38, %30
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @EVP_MD_CTX_free(i32* %99)
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call i32 @X509_ALGOR_free(%struct.TYPE_9__* %102)
  %104 = load i8**, i8*** %10, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @OPENSSL_free(i8* %105)
  %107 = load i32*, i32** %11, align 8
  store i32 0, i32* %107, align 4
  %108 = load i8**, i8*** %10, align 8
  store i8* null, i8** %108, align 8
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %98, %95
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_9__* @X509_ALGOR_dup(%struct.TYPE_9__*) #1

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_9__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
