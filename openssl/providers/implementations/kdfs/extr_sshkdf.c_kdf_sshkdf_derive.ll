; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_kdf_sshkdf_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_kdf_sshkdf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32*, i32, i32*, i32 }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_MISSING_MESSAGE_DIGEST = common dso_local global i32 0, align 4
@PROV_R_MISSING_KEY = common dso_local global i32 0, align 4
@PROV_R_MISSING_XCGHASH = common dso_local global i32 0, align 4
@PROV_R_MISSING_SESSION_ID = common dso_local global i32 0, align 4
@PROV_R_MISSING_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @kdf_sshkdf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_sshkdf_derive(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = call i32* @ossl_prov_digest_md(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @ERR_LIB_PROV, align 4
  %19 = load i32, i32* @PROV_R_MISSING_MESSAGE_DIGEST, align 4
  %20 = call i32 @ERR_raise(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @ERR_LIB_PROV, align 4
  %28 = load i32, i32* @PROV_R_MISSING_KEY, align 4
  %29 = call i32 @ERR_raise(i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ERR_LIB_PROV, align 4
  %37 = load i32, i32* @PROV_R_MISSING_XCGHASH, align 4
  %38 = call i32 @ERR_raise(i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %83

39:                                               ; preds = %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @ERR_LIB_PROV, align 4
  %46 = load i32, i32* @PROV_R_MISSING_SESSION_ID, align 4
  %47 = call i32 @ERR_raise(i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %83

48:                                               ; preds = %39
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @ERR_LIB_PROV, align 4
  %55 = load i32, i32* @PROV_R_MISSING_TYPE, align 4
  %56 = call i32 @ERR_raise(i32 %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %83

57:                                               ; preds = %48
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @SSHKDF(i32* %58, i32* %61, i32 %64, i32* %67, i32 %70, i32* %73, i32 %76, i64 %79, i8* %80, i64 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %57, %53, %44, %35, %26, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32* @ossl_prov_digest_md(i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @SSHKDF(i32*, i32*, i32, i32*, i32, i32*, i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
