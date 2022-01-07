; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_kdf_test_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_kdf_test_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"KDF_PARAM_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*)* @kdf_test_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_test_ctrl(%struct.TYPE_5__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @EVP_KDF_CTX_kdf(i32* %18)
  %20 = call i32* @EVP_KDF_settable_ctx_params(i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @OPENSSL_strdup(i8* %21)
  store i8* %22, i8** %11, align 8
  %23 = call i32 @TEST_ptr(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  store i8 0, i8* %32, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strlen(i8* %44)
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  %49 = call i32 @OSSL_PARAM_allocate_from_text(i32* %37, i32* %38, i8* %39, i8* %40, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = call i32 (...) @OSSL_PARAM_construct_end()
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %52, align 8
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @OPENSSL_free(i8* %60)
  store i32 0, i32* %4, align 4
  br label %121

62:                                               ; preds = %47
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @OBJ_sn2nid(i8* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @NID_undef, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @OBJ_ln2nid(i8* %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @NID_undef, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = call i32* @EVP_get_digestbynid(i32 %83)
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %82, %78
  br label %90

90:                                               ; preds = %89, %65, %62
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load i8*, i8** %11, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @OBJ_sn2nid(i8* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @NID_undef, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @OBJ_ln2nid(i8* %104)
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @NID_undef, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %14, align 4
  %112 = call i32* @EVP_get_cipherbynid(i32 %111)
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %110, %106
  br label %118

118:                                              ; preds = %117, %93, %90
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @OPENSSL_free(i8* %119)
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %57, %25
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32* @EVP_KDF_settable_ctx_params(i32) #1

declare dso_local i32 @EVP_KDF_CTX_kdf(i32*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @OSSL_PARAM_allocate_from_text(i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32* @EVP_get_cipherbynid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
