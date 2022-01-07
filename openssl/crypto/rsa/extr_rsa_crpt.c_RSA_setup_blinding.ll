; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_crpt.c_RSA_setup_blinding.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_crpt.c_RSA_setup_blinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RSA_F_RSA_SETUP_BLINDING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_NO_PUBLIC_EXPONENT = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RSA_setup_blinding(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = call i32* (...) @BN_CTX_new()
  store i32* %13, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %116

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @BN_CTX_start(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @BN_CTX_get(i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @RSA_F_RSA_SETUP_BLINDING, align 4
  %28 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %29 = call i32 @RSAerr(i32 %27, i32 %28)
  br label %96

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32* @rsa_get_public_exp(i32 %38, i32 %41, i32 %44, i32* %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @RSA_F_RSA_SETUP_BLINDING, align 4
  %51 = load i32, i32* @RSA_R_NO_PUBLIC_EXPONENT, align 4
  %52 = call i32 @RSAerr(i32 %50, i32 %51)
  br label %96

53:                                               ; preds = %35
  br label %58

54:                                               ; preds = %30
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = call i32* (...) @BN_new()
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @RSA_F_RSA_SETUP_BLINDING, align 4
  %64 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %65 = call i32 @RSAerr(i32 %63, i32 %64)
  br label %96

66:                                               ; preds = %58
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %72 = call i32 @BN_with_flags(i32* %67, i32 %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @BN_BLINDING_create_param(i32* null, i32* %73, i32* %74, i32* %75, i32 %80, i32 %83)
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @BN_free(i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %66
  %90 = load i32, i32* @RSA_F_RSA_SETUP_BLINDING, align 4
  %91 = load i32, i32* @ERR_R_BN_LIB, align 4
  %92 = call i32 @RSAerr(i32 %90, i32 %91)
  br label %96

93:                                               ; preds = %66
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @BN_BLINDING_set_current_thread(i32* %94)
  br label %96

96:                                               ; preds = %93, %89, %62, %49, %26
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @BN_CTX_end(i32* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = icmp ne i32* %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @BN_CTX_free(i32* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @BN_free(i32* %112)
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32*, i32** %8, align 8
  store i32* %115, i32** %3, align 8
  br label %116

116:                                              ; preds = %114, %15
  %117 = load i32*, i32** %3, align 8
  ret i32* %117
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32* @rsa_get_public_exp(i32, i32, i32, i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_with_flags(i32*, i32, i32) #1

declare dso_local i32* @BN_BLINDING_create_param(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_BLINDING_set_current_thread(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
