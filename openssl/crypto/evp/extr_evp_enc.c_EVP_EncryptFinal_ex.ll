; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_EncryptFinal_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_EncryptFinal_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i64*, i32)*, i32, i32 (%struct.TYPE_8__*, i8*, i32*, i32)*, i32, i32* }

@EVP_F_EVP_ENCRYPTFINAL_EX = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@EVP_R_FINAL_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4
@EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_EncryptFinal_ex(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EVP_F_EVP_ENCRYPTFINAL_EX, align 4
  %21 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %22 = call i32 @EVPerr(i32 %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %189

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp eq %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @EVP_F_EVP_ENCRYPTFINAL_EX, align 4
  %30 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %31 = call i32 @EVPerr(i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %189

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %90

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = call i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_8__* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (i32, i8*, i64*, i32)*, i32 (i32, i8*, i64*, i32)** %49, align 8
  %51 = icmp eq i32 (i32, i8*, i64*, i32)* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45, %40
  %53 = load i32, i32* @EVP_F_EVP_ENCRYPTFINAL_EX, align 4
  %54 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %55 = call i32 @EVPerr(i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %189

56:                                               ; preds = %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (i32, i8*, i64*, i32)*, i32 (i32, i8*, i64*, i32)** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = call i32 %61(i32 %64, i8* %65, i64* %13, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @INT_MAX, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @EVP_F_EVP_ENCRYPTFINAL_EX, align 4
  %82 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %83 = call i32 @EVPerr(i32 %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %189

84:                                               ; preds = %76
  %85 = load i64, i64* %13, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %71
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %189

90:                                               ; preds = %39
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32 (%struct.TYPE_8__*, i8*, i32*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32*, i32)** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 %104(%struct.TYPE_8__* %105, i8* %106, i32* null, i32 0)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %189

111:                                              ; preds = %99
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %189

115:                                              ; preds = %90
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = icmp ule i64 %122, 8
  %124 = zext i1 %123 to i32
  %125 = call i32 @OPENSSL_assert(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32*, i32** %7, align 8
  store i32 0, i32* %129, align 4
  store i32 1, i32* %4, align 4
  br label %189

130:                                              ; preds = %115
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %12, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @EVP_F_EVP_ENCRYPTFINAL_EX, align 4
  %145 = load i32, i32* @EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH, align 4
  %146 = call i32 @EVPerr(i32 %144, i32 %145)
  store i32 0, i32* %4, align 4
  br label %189

147:                                              ; preds = %140
  %148 = load i32*, i32** %7, align 8
  store i32 0, i32* %148, align 4
  store i32 1, i32* %4, align 4
  br label %189

149:                                              ; preds = %130
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %166, %149
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %10, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %154

169:                                              ; preds = %154
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32 (%struct.TYPE_8__*, i8*, i32*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32*, i32)** %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 %174(%struct.TYPE_8__* %175, i8* %176, i32* %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %169
  %185 = load i32, i32* %11, align 4
  %186 = load i32*, i32** %7, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %169
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %187, %147, %143, %128, %114, %110, %88, %80, %52, %28, %19
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_8__*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
