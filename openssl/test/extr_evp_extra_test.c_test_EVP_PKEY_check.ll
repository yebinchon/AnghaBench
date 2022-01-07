; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_PKEY_check.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_PKEY_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i8*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_27__* }

@keycheckdata = common dso_local global %struct.TYPE_28__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_EVP_PKEY_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_EVP_PKEY_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_27__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %9, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** @keycheckdata, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i64 %21
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %10, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %17, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %18, align 8
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i32, i32* %17, align 4
  switch i32 %45, label %113 [
    i32 0, label %46
    i32 1, label %66
    i32 2, label %89
  ]

46:                                               ; preds = %1
  %47 = load i64, i64* %12, align 8
  %48 = call %struct.TYPE_27__* @d2i_AutoPrivateKey(i32* null, i8** %5, i64 %47)
  store %struct.TYPE_27__* %48, %struct.TYPE_27__** %6, align 8
  %49 = call i32 @TEST_ptr(%struct.TYPE_27__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = call i32 @TEST_ptr_eq(i8* %52, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = call i32 @EVP_PKEY_id(%struct.TYPE_27__* %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @TEST_int_eq(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58, %51, %46
  br label %166

65:                                               ; preds = %58
  br label %114

66:                                               ; preds = %1
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call %struct.TYPE_27__* @BIO_new_mem_buf(i8* %67, i64 %68)
  store %struct.TYPE_27__* %69, %struct.TYPE_27__** %18, align 8
  %70 = call i32 @TEST_ptr(%struct.TYPE_27__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %74 = call %struct.TYPE_27__* @d2i_EC_PUBKEY_bio(%struct.TYPE_27__* %73, i32* null)
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %7, align 8
  %75 = call i32 @TEST_ptr(%struct.TYPE_27__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = call %struct.TYPE_27__* (...) @EVP_PKEY_new()
  store %struct.TYPE_27__* %78, %struct.TYPE_27__** %6, align 8
  %79 = call i32 @TEST_ptr(%struct.TYPE_27__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %84 = call i32 @EVP_PKEY_assign_EC_KEY(%struct.TYPE_27__* %82, %struct.TYPE_27__* %83)
  %85 = call i32 @TEST_true(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81, %77, %72, %66
  br label %166

88:                                               ; preds = %81
  br label %114

89:                                               ; preds = %1
  %90 = load i64, i64* %12, align 8
  %91 = call %struct.TYPE_27__* @d2i_ECParameters(i32* null, i8** %5, i64 %90)
  store %struct.TYPE_27__* %91, %struct.TYPE_27__** %7, align 8
  %92 = call i32 @TEST_ptr(%struct.TYPE_27__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = call i32 @TEST_ptr_eq(i8* %95, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = call %struct.TYPE_27__* (...) @EVP_PKEY_new()
  store %struct.TYPE_27__* %102, %struct.TYPE_27__** %6, align 8
  %103 = call i32 @TEST_ptr(%struct.TYPE_27__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %108 = call i32 @EVP_PKEY_assign_EC_KEY(%struct.TYPE_27__* %106, %struct.TYPE_27__* %107)
  %109 = call i32 @TEST_true(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105, %101, %94, %89
  br label %166

112:                                              ; preds = %105
  br label %114

113:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %176

114:                                              ; preds = %112, %88, %65
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %116 = call %struct.TYPE_27__* @EVP_PKEY_CTX_new(%struct.TYPE_27__* %115, i32* null)
  store %struct.TYPE_27__* %116, %struct.TYPE_27__** %8, align 8
  %117 = call i32 @TEST_ptr(%struct.TYPE_27__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %166

120:                                              ; preds = %114
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %122 = call i32 @EVP_PKEY_check(%struct.TYPE_27__* %121)
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @TEST_int_eq(i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  br label %166

127:                                              ; preds = %120
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %129 = call i32 @EVP_PKEY_public_check(%struct.TYPE_27__* %128)
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @TEST_int_eq(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  br label %166

134:                                              ; preds = %127
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %136 = call i32 @EVP_PKEY_param_check(%struct.TYPE_27__* %135)
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @TEST_int_eq(i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %166

141:                                              ; preds = %134
  %142 = call %struct.TYPE_27__* @EVP_PKEY_CTX_new_id(i32 233811181, i32* null)
  store %struct.TYPE_27__* %142, %struct.TYPE_27__** %9, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %144 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_27__* %143)
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  store %struct.TYPE_27__* %145, %struct.TYPE_27__** %147, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %149 = call i32 @EVP_PKEY_check(%struct.TYPE_27__* %148)
  %150 = call i32 @TEST_int_eq(i32 %149, i32 48879)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %141
  br label %166

153:                                              ; preds = %141
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %155 = call i32 @EVP_PKEY_public_check(%struct.TYPE_27__* %154)
  %156 = call i32 @TEST_int_eq(i32 %155, i32 48879)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %166

159:                                              ; preds = %153
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %161 = call i32 @EVP_PKEY_param_check(%struct.TYPE_27__* %160)
  %162 = call i32 @TEST_int_eq(i32 %161, i32 48879)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  br label %166

165:                                              ; preds = %159
  store i32 1, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %164, %158, %152, %140, %133, %126, %119, %111, %87, %64
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %168 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_27__* %167)
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %170 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_27__* %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %172 = call i32 @EVP_PKEY_free(%struct.TYPE_27__* %171)
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %174 = call i32 @BIO_free(%struct.TYPE_27__* %173)
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %166, %113
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @d2i_AutoPrivateKey(i32*, i8**, i64) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i8*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EVP_PKEY_id(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @BIO_new_mem_buf(i8*, i64) #1

declare dso_local %struct.TYPE_27__* @d2i_EC_PUBKEY_bio(%struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_27__* @EVP_PKEY_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EVP_PKEY_assign_EC_KEY(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @d2i_ECParameters(i32*, i8**, i64) #1

declare dso_local %struct.TYPE_27__* @EVP_PKEY_CTX_new(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @EVP_PKEY_check(%struct.TYPE_27__*) #1

declare dso_local i32 @EVP_PKEY_public_check(%struct.TYPE_27__*) #1

declare dso_local i32 @EVP_PKEY_param_check(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_27__*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(%struct.TYPE_27__*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_27__*) #1

declare dso_local i32 @BIO_free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
