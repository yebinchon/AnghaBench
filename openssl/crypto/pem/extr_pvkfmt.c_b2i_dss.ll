; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_b2i_dss.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_b2i_dss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@PEM_F_B2I_DSS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32, i32)* @b2i_dss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @b2i_dss(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, 7
  %22 = lshr i32 %21, 3
  store i32 %22, i32* %12, align 4
  %23 = call i32* (...) @DSA_new()
  store i32* %23, i32** %10, align 8
  %24 = call i32* (...) @EVP_PKEY_new()
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %3
  br label %109

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @read_lebn(i8** %8, i32 %32, i32** %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %109

36:                                               ; preds = %31
  %37 = call i32 @read_lebn(i8** %8, i32 20, i32** %14)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %109

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @read_lebn(i8** %8, i32 %41, i32** %15)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %109

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @read_lebn(i8** %8, i32 %49, i32** %17)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %109

53:                                               ; preds = %48
  br label %82

54:                                               ; preds = %45
  %55 = call i32 @read_lebn(i8** %8, i32 20, i32** %16)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %109

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %61 = call i32 @BN_set_flags(i32* %59, i32 %60)
  %62 = call i32* (...) @BN_new()
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %109

66:                                               ; preds = %58
  %67 = call i32* (...) @BN_CTX_new()
  store i32* %67, i32** %11, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %109

70:                                               ; preds = %66
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @BN_mod_exp(i32* %71, i32* %72, i32* %73, i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %109

79:                                               ; preds = %70
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @BN_CTX_free(i32* %80)
  store i32* null, i32** %11, align 8
  br label %82

82:                                               ; preds = %79, %53
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @DSA_set0_pqg(i32* %83, i32* %84, i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %109

90:                                               ; preds = %82
  store i32* null, i32** %15, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @DSA_set0_key(i32* %91, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %109

97:                                               ; preds = %90
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @EVP_PKEY_set1_DSA(i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %109

103:                                              ; preds = %97
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @DSA_free(i32* %104)
  %106 = load i8*, i8** %8, align 8
  %107 = load i8**, i8*** %5, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i32*, i32** %9, align 8
  store i32* %108, i32** %4, align 8
  br label %129

109:                                              ; preds = %102, %96, %89, %78, %69, %65, %57, %52, %44, %39, %35, %30
  %110 = load i32, i32* @PEM_F_B2I_DSS, align 4
  %111 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %112 = call i32 @PEMerr(i32 %110, i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @DSA_free(i32* %113)
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @BN_free(i32* %115)
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @BN_free(i32* %117)
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @BN_free(i32* %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i32 @BN_free(i32* %121)
  %123 = load i32*, i32** %16, align 8
  %124 = call i32 @BN_free(i32* %123)
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @EVP_PKEY_free(i32* %125)
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @BN_CTX_free(i32* %127)
  store i32* null, i32** %4, align 8
  br label %129

129:                                              ; preds = %109, %103
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @read_lebn(i8**, i32, i32**) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @DSA_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_DSA(i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
