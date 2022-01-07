; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_mac_test_run_pkey.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_mac_test_run_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Trying the EVP_PKEY %s test\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Trying the EVP_PKEY %s test with %s\00", align 1
@EVP_PKEY_CMAC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"MAC_KEY_CREATE_ERROR\00", align 1
@EVP_PKEY_HMAC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"MAC_ALGORITHM_SET_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"INTERNAL_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"DIGESTSIGNINIT_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"EVPPKEYCTXCTRL_ERROR\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"DIGESTSIGNUPDATE_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"DIGESTSIGNFINAL_LENGTH_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TEST_FAILURE\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"TEST_MAC_ERR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @mac_test_run_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_test_run_pkey(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @OBJ_nid2sn(i64 %22)
  %24 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @OBJ_nid2sn(i64 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* %32)
  br label %34

34:                                               ; preds = %25, %19
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EVP_PKEY_CMAC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @EVP_get_cipherbyname(i32* %49)
  %51 = call i32* @EVP_PKEY_new_CMAC_key(i32* null, i32 %43, i32 %46, i32 %50)
  store i32* %51, i32** %7, align 8
  br label %63

52:                                               ; preds = %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @EVP_PKEY_new_raw_private_key(i64 %55, i32* null, i32 %58, i32 %61)
  store i32* %62, i32** %7, align 8
  br label %63

63:                                               ; preds = %52, %40
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %68, align 8
  br label %178

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EVP_PKEY_HMAC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @EVP_get_digestbyname(i32* %78)
  store i8* %79, i8** %8, align 8
  %80 = call i32 @TEST_ptr(i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %84, align 8
  br label %178

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %69
  %87 = call i8* (...) @EVP_MD_CTX_new()
  store i8* %87, i8** %4, align 8
  %88 = call i32 @TEST_ptr(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %92, align 8
  br label %178

93:                                               ; preds = %86
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @EVP_DigestSignInit(i8* %94, i32** %5, i8* %95, i32* null, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %101, align 8
  br label %178

102:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sk_OPENSSL_STRING_num(i32 %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %103
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @sk_OPENSSL_STRING_value(i32 %115, i32 %116)
  %118 = call i32 @mac_test_ctrl_pkey(%struct.TYPE_7__* %111, i32* %112, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %122, align 8
  br label %178

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %103

127:                                              ; preds = %103
  %128 = load i8*, i8** %4, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @EVP_DigestSignUpdate(i8* %128, i32 %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %127
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %139, align 8
  br label %178

140:                                              ; preds = %127
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @EVP_DigestSignFinal(i8* %141, i8* null, i64* %10)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8** %146, align 8
  br label %178

147:                                              ; preds = %140
  %148 = load i64, i64* %10, align 8
  %149 = call i8* @OPENSSL_malloc(i64 %148)
  store i8* %149, i8** %9, align 8
  %150 = call i32 @TEST_ptr(i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %154, align 8
  br label %178

155:                                              ; preds = %147
  %156 = load i8*, i8** %4, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @EVP_DigestSignFinal(i8* %156, i8* %157, i64* %10)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @memory_err_compare(%struct.TYPE_7__* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %164, i32 %167, i8* %168, i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %160, %155
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %174, align 8
  br label %178

175:                                              ; preds = %160
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i8* null, i8** %177, align 8
  br label %178

178:                                              ; preds = %175, %172, %152, %144, %137, %120, %99, %90, %82, %66
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @EVP_MD_CTX_free(i8* %179)
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @OPENSSL_free(i8* %181)
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @EVP_PKEY_CTX_free(i32* %183)
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @EVP_PKEY_free(i32* %185)
  ret i32 1
}

declare dso_local i32 @TEST_info(i8*, i32, ...) #1

declare dso_local i32 @OBJ_nid2sn(i64) #1

declare dso_local i32* @EVP_PKEY_new_CMAC_key(i32*, i32, i32, i32) #1

declare dso_local i32 @EVP_get_cipherbyname(i32*) #1

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i64, i32*, i32, i32) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @EVP_get_digestbyname(i32*) #1

declare dso_local i8* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestSignInit(i8*, i32**, i8*, i32*, i32*) #1

declare dso_local i32 @sk_OPENSSL_STRING_num(i32) #1

declare dso_local i32 @mac_test_ctrl_pkey(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @sk_OPENSSL_STRING_value(i32, i32) #1

declare dso_local i32 @EVP_DigestSignUpdate(i8*, i32, i32) #1

declare dso_local i32 @EVP_DigestSignFinal(i8*, i8*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memory_err_compare(%struct.TYPE_7__*, i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
