; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digest_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digest_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"TEST_FAILURE\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DIGESTINIT_ERROR\00", align 1
@digest_update_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DIGESTUPDATE_ERROR\00", align 1
@EVP_MD_FLAG_XOF = common dso_local global i32 0, align 4
@__const.digest_test_run.dont = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DIGESTFINALXOF_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DIGESTFINAL_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"DIGEST_LENGTH_MISMATCH\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"DIGEST_MISMATCH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @digest_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digest_test_run(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [6 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = call i8* (...) @EVP_MD_CTX_new()
  store i8* %14, i8** %4, align 8
  %15 = call i32 @TEST_ptr(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %149

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  %32 = call i8* @OPENSSL_malloc(i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @TEST_ptr(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %149

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @EVP_DigestInit_ex(i8* %38, i32 %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8
  br label %149

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @digest_update_fn, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @evp_test_buffer_do(i32 %50, i32 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  br label %149

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @EVP_MD_flags(i32 %61)
  %63 = load i32, i32* @EVP_MD_FLAG_XOF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %58
  %67 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.digest_test_run.dont, i32 0, i32 0), i64 6, i1 false)
  %68 = call i8* (...) @EVP_MD_CTX_new()
  store i8* %68, i8** %7, align 8
  %69 = call i32 @TEST_ptr(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %149

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @EVP_MD_CTX_copy(i8* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @EVP_MD_CTX_free(i8* %78)
  br label %149

80:                                               ; preds = %72
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %83 = call i32 @EVP_DigestFinalXOF(i8* %81, i8* %82, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @EVP_MD_CTX_free(i8* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %89, align 8
  br label %149

90:                                               ; preds = %80
  %91 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %92 = call i32 @TEST_str_eq(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @EVP_MD_CTX_free(i8* %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  br label %149

99:                                               ; preds = %90
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @EVP_MD_CTX_free(i8* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @EVP_DigestFinalXOF(i8* %105, i8* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %112, align 8
  br label %149

113:                                              ; preds = %99
  br label %123

114:                                              ; preds = %58
  %115 = load i8*, i8** %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @EVP_DigestFinal(i8* %115, i8* %116, i32* %6)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %121, align 8
  br label %149

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %113
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @TEST_int_eq(i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %132, align 8
  br label %149

133:                                              ; preds = %123
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @memory_err_compare(%struct.TYPE_5__* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %137, i32 %140, i8* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %133
  br label %149

146:                                              ; preds = %133
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i8* null, i8** %148, align 8
  br label %149

149:                                              ; preds = %146, %145, %130, %119, %110, %94, %85, %77, %71, %55, %44, %36, %17
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @OPENSSL_free(i8* %150)
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @EVP_MD_CTX_free(i8* %152)
  ret i32 1
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @EVP_MD_CTX_new(...) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_DigestInit_ex(i8*, i32, i32*) #1

declare dso_local i32 @evp_test_buffer_do(i32, i32, i8*) #1

declare dso_local i32 @EVP_MD_flags(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EVP_MD_CTX_copy(i8*, i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i8*) #1

declare dso_local i32 @EVP_DigestFinalXOF(i8*, i8*, i32) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @EVP_DigestFinal(i8*, i8*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @memory_err_compare(%struct.TYPE_5__*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
