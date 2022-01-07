; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_construct.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i64, i32 }

@test_param_construct.int_names = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@test_param_construct.uint_names = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@test_param_construct.bn_val = internal constant [16 x i8] c"\ACu\22}\81\06z#\A6\ED\87\C7\AB\F4s\22", align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"bignum\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"utf8str\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"octstr\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"utf8ptr\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"octptr\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"fnord\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"iteration %zu var %s\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"tuvwxyz\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"abcdefghi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_param_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_param_construct() #0 {
  %1 = alloca [20 x %struct.TYPE_45__], align 16
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca %struct.TYPE_45__*, align 8
  %27 = alloca %struct.TYPE_45__*, align 8
  %28 = alloca %struct.TYPE_45__, align 8
  %29 = alloca %struct.TYPE_45__, align 8
  %30 = alloca %struct.TYPE_45__, align 8
  %31 = alloca %struct.TYPE_45__, align 8
  %32 = alloca %struct.TYPE_45__, align 8
  %33 = alloca %struct.TYPE_45__, align 8
  %34 = alloca %struct.TYPE_45__, align 8
  %35 = alloca %struct.TYPE_45__, align 8
  %36 = alloca %struct.TYPE_45__, align 8
  %37 = alloca %struct.TYPE_45__, align 8
  %38 = alloca %struct.TYPE_45__, align 8
  %39 = alloca %struct.TYPE_45__, align 8
  %40 = alloca %struct.TYPE_45__, align 8
  %41 = alloca %struct.TYPE_45__, align 8
  %42 = alloca %struct.TYPE_45__, align 8
  %43 = alloca %struct.TYPE_45__, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %26, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %27, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %46
  %48 = call { i64, i32 } @OSSL_PARAM_construct_int(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %49 = bitcast %struct.TYPE_45__* %28 to { i64, i32 }*
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i32 } %48, 0
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i32 } %48, 1
  store i32 %53, i32* %52, align 8
  %54 = bitcast %struct.TYPE_45__* %47 to i8*
  %55 = bitcast %struct.TYPE_45__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %58
  %60 = call { i64, i32 } @OSSL_PARAM_construct_uint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  %61 = bitcast %struct.TYPE_45__* %29 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = extractvalue { i64, i32 } %60, 0
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = extractvalue { i64, i32 } %60, 1
  store i32 %65, i32* %64, align 8
  %66 = bitcast %struct.TYPE_45__* %59 to i8*
  %67 = bitcast %struct.TYPE_45__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %70
  %72 = call { i64, i32 } @OSSL_PARAM_construct_long(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %15)
  %73 = bitcast %struct.TYPE_45__* %30 to { i64, i32 }*
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 0
  %75 = extractvalue { i64, i32 } %72, 0
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 1
  %77 = extractvalue { i64, i32 } %72, 1
  store i32 %77, i32* %76, align 8
  %78 = bitcast %struct.TYPE_45__* %71 to i8*
  %79 = bitcast %struct.TYPE_45__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %82
  %84 = call { i64, i32 } @OSSL_PARAM_construct_ulong(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %16)
  %85 = bitcast %struct.TYPE_45__* %31 to { i64, i32 }*
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %87 = extractvalue { i64, i32 } %84, 0
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %89 = extractvalue { i64, i32 } %84, 1
  store i32 %89, i32* %88, align 8
  %90 = bitcast %struct.TYPE_45__* %83 to i8*
  %91 = bitcast %struct.TYPE_45__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %94
  %96 = call { i64, i32 } @OSSL_PARAM_construct_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %17)
  %97 = bitcast %struct.TYPE_45__* %32 to { i64, i32 }*
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %97, i32 0, i32 0
  %99 = extractvalue { i64, i32 } %96, 0
  store i64 %99, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %97, i32 0, i32 1
  %101 = extractvalue { i64, i32 } %96, 1
  store i32 %101, i32* %100, align 8
  %102 = bitcast %struct.TYPE_45__* %95 to i8*
  %103 = bitcast %struct.TYPE_45__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %102, i8* align 8 %103, i64 16, i1 false)
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %106
  %108 = call { i64, i32 } @OSSL_PARAM_construct_int64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %19)
  %109 = bitcast %struct.TYPE_45__* %33 to { i64, i32 }*
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i32 } %108, 0
  store i64 %111, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i32 } %108, 1
  store i32 %113, i32* %112, align 8
  %114 = bitcast %struct.TYPE_45__* %107 to i8*
  %115 = bitcast %struct.TYPE_45__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %114, i8* align 8 %115, i64 16, i1 false)
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %118
  %120 = call { i64, i32 } @OSSL_PARAM_construct_uint32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %18)
  %121 = bitcast %struct.TYPE_45__* %34 to { i64, i32 }*
  %122 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %121, i32 0, i32 0
  %123 = extractvalue { i64, i32 } %120, 0
  store i64 %123, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %121, i32 0, i32 1
  %125 = extractvalue { i64, i32 } %120, 1
  store i32 %125, i32* %124, align 8
  %126 = bitcast %struct.TYPE_45__* %119 to i8*
  %127 = bitcast %struct.TYPE_45__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %126, i8* align 8 %127, i64 16, i1 false)
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %130
  %132 = call { i64, i32 } @OSSL_PARAM_construct_uint64(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64* %20)
  %133 = bitcast %struct.TYPE_45__* %35 to { i64, i32 }*
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 0
  %135 = extractvalue { i64, i32 } %132, 0
  store i64 %135, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 1
  %137 = extractvalue { i64, i32 } %132, 1
  store i32 %137, i32* %136, align 8
  %138 = bitcast %struct.TYPE_45__* %131 to i8*
  %139 = bitcast %struct.TYPE_45__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %142
  %144 = call { i64, i32 } @OSSL_PARAM_construct_size_t(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64* %23)
  %145 = bitcast %struct.TYPE_45__* %36 to { i64, i32 }*
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %145, i32 0, i32 0
  %147 = extractvalue { i64, i32 } %144, 0
  store i64 %147, i64* %146, align 8
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %145, i32 0, i32 1
  %149 = extractvalue { i64, i32 } %144, 1
  store i32 %149, i32* %148, align 8
  %150 = bitcast %struct.TYPE_45__* %143 to i8*
  %151 = bitcast %struct.TYPE_45__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %150, i8* align 8 %151, i64 16, i1 false)
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %154
  %156 = call { i64, i32 } @OSSL_PARAM_construct_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), double* %24)
  %157 = bitcast %struct.TYPE_45__* %37 to { i64, i32 }*
  %158 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %157, i32 0, i32 0
  %159 = extractvalue { i64, i32 } %156, 0
  store i64 %159, i64* %158, align 8
  %160 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %157, i32 0, i32 1
  %161 = extractvalue { i64, i32 } %156, 1
  store i32 %161, i32* %160, align 8
  %162 = bitcast %struct.TYPE_45__* %155 to i8*
  %163 = bitcast %struct.TYPE_45__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %162, i8* align 8 %163, i64 16, i1 false)
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %166
  %168 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %169 = call { i64, i32 } @OSSL_PARAM_construct_BN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %168, i32 100)
  %170 = bitcast %struct.TYPE_45__* %38 to { i64, i32 }*
  %171 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %170, i32 0, i32 0
  %172 = extractvalue { i64, i32 } %169, 0
  store i64 %172, i64* %171, align 8
  %173 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %170, i32 0, i32 1
  %174 = extractvalue { i64, i32 } %169, 1
  store i32 %174, i32* %173, align 8
  %175 = bitcast %struct.TYPE_45__* %167 to i8*
  %176 = bitcast %struct.TYPE_45__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %175, i8* align 8 %176, i64 16, i1 false)
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %179
  %181 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %182 = call { i64, i32 } @OSSL_PARAM_construct_utf8_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %181, i32 100)
  %183 = bitcast %struct.TYPE_45__* %39 to { i64, i32 }*
  %184 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %183, i32 0, i32 0
  %185 = extractvalue { i64, i32 } %182, 0
  store i64 %185, i64* %184, align 8
  %186 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %183, i32 0, i32 1
  %187 = extractvalue { i64, i32 } %182, 1
  store i32 %187, i32* %186, align 8
  %188 = bitcast %struct.TYPE_45__* %180 to i8*
  %189 = bitcast %struct.TYPE_45__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %188, i8* align 8 %189, i64 16, i1 false)
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %192
  %194 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %195 = call { i64, i32 } @OSSL_PARAM_construct_octet_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %194, i32 100)
  %196 = bitcast %struct.TYPE_45__* %40 to { i64, i32 }*
  %197 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %196, i32 0, i32 0
  %198 = extractvalue { i64, i32 } %195, 0
  store i64 %198, i64* %197, align 8
  %199 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %196, i32 0, i32 1
  %200 = extractvalue { i64, i32 } %195, 1
  store i32 %200, i32* %199, align 8
  %201 = bitcast %struct.TYPE_45__* %193 to i8*
  %202 = bitcast %struct.TYPE_45__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %201, i8* align 8 %202, i64 16, i1 false)
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %12, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %205
  %207 = call { i64, i32 } @OSSL_PARAM_construct_utf8_ptr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %4, i32 0)
  %208 = bitcast %struct.TYPE_45__* %41 to { i64, i32 }*
  %209 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %208, i32 0, i32 0
  %210 = extractvalue { i64, i32 } %207, 0
  store i64 %210, i64* %209, align 8
  %211 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %208, i32 0, i32 1
  %212 = extractvalue { i64, i32 } %207, 1
  store i32 %212, i32* %211, align 8
  %213 = bitcast %struct.TYPE_45__* %206 to i8*
  %214 = bitcast %struct.TYPE_45__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %213, i8* align 8 %214, i64 16, i1 false)
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %217
  %219 = call { i64, i32 } @OSSL_PARAM_construct_octet_ptr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %7, i32 0)
  %220 = bitcast %struct.TYPE_45__* %42 to { i64, i32 }*
  %221 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %220, i32 0, i32 0
  %222 = extractvalue { i64, i32 } %219, 0
  store i64 %222, i64* %221, align 8
  %223 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %220, i32 0, i32 1
  %224 = extractvalue { i64, i32 } %219, 1
  store i32 %224, i32* %223, align 8
  %225 = bitcast %struct.TYPE_45__* %218 to i8*
  %226 = bitcast %struct.TYPE_45__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %225, i8* align 8 %226, i64 16, i1 false)
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 %228
  %230 = call { i64, i32 } (...) @OSSL_PARAM_construct_end()
  %231 = bitcast %struct.TYPE_45__* %43 to { i64, i32 }*
  %232 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %231, i32 0, i32 0
  %233 = extractvalue { i64, i32 } %230, 0
  store i64 %233, i64* %232, align 8
  %234 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %231, i32 0, i32 1
  %235 = extractvalue { i64, i32 } %230, 1
  store i32 %235, i32* %234, align 8
  %236 = bitcast %struct.TYPE_45__* %229 to i8*
  %237 = bitcast %struct.TYPE_45__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %236, i8* align 8 %237, i64 16, i1 false)
  %238 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %239 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %240 = call i32 @TEST_ptr_null(%struct.TYPE_45__* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %0
  br label %591

243:                                              ; preds = %0
  store i64 0, i64* %21, align 8
  br label %244

244:                                              ; preds = %293, %243
  %245 = load i64, i64* %21, align 8
  %246 = call i64 @OSSL_NELEM(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_param_construct.int_names, i64 0, i64 0))
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %296

248:                                              ; preds = %244
  %249 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %250 = load i64, i64* %21, align 8
  %251 = getelementptr inbounds [4 x i8*], [4 x i8*]* @test_param_construct.int_names, i64 0, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %249, i8* %252)
  store %struct.TYPE_45__* %253, %struct.TYPE_45__** %10, align 8
  %254 = call i32 @TEST_ptr(%struct.TYPE_45__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %285

256:                                              ; preds = %248
  %257 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %258 = load i64, i64* %21, align 8
  %259 = add i64 3, %258
  %260 = trunc i64 %259 to i32
  %261 = call i32 @OSSL_PARAM_set_int32(%struct.TYPE_45__* %257, i32 %260)
  %262 = call i32 @TEST_true(i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %256
  %265 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %266 = call i32 @OSSL_PARAM_get_int64(%struct.TYPE_45__* %265, i64* %19)
  %267 = call i32 @TEST_true(i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %285

269:                                              ; preds = %264
  %270 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @TEST_size_t_eq(i64 %272, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %269
  %279 = load i64, i64* %19, align 8
  %280 = load i64, i64* %21, align 8
  %281 = add i64 3, %280
  %282 = trunc i64 %281 to i32
  %283 = call i32 @TEST_size_t_eq(i64 %279, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

285:                                              ; preds = %278, %269, %264, %256, %248
  %286 = load i64, i64* %21, align 8
  %287 = add i64 %286, 1
  %288 = load i64, i64* %21, align 8
  %289 = getelementptr inbounds [4 x i8*], [4 x i8*]* @test_param_construct.int_names, i64 0, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @TEST_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i64 %287, i8* %290)
  br label %591

292:                                              ; preds = %278
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %21, align 8
  br label %244

296:                                              ; preds = %244
  store i64 0, i64* %21, align 8
  br label %297

297:                                              ; preds = %346, %296
  %298 = load i64, i64* %21, align 8
  %299 = call i64 @OSSL_NELEM(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_param_construct.uint_names, i64 0, i64 0))
  %300 = icmp ult i64 %298, %299
  br i1 %300, label %301, label %349

301:                                              ; preds = %297
  %302 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %303 = load i64, i64* %21, align 8
  %304 = getelementptr inbounds [5 x i8*], [5 x i8*]* @test_param_construct.uint_names, i64 0, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %302, i8* %305)
  store %struct.TYPE_45__* %306, %struct.TYPE_45__** %10, align 8
  %307 = call i32 @TEST_ptr(%struct.TYPE_45__* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %338

309:                                              ; preds = %301
  %310 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %311 = load i64, i64* %21, align 8
  %312 = add i64 3, %311
  %313 = trunc i64 %312 to i32
  %314 = call i32 @OSSL_PARAM_set_uint32(%struct.TYPE_45__* %310, i32 %313)
  %315 = call i32 @TEST_true(i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %338

317:                                              ; preds = %309
  %318 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %319 = call i32 @OSSL_PARAM_get_uint64(%struct.TYPE_45__* %318, i64* %20)
  %320 = call i32 @TEST_true(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %338

322:                                              ; preds = %317
  %323 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @TEST_size_t_eq(i64 %325, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %322
  %332 = load i64, i64* %20, align 8
  %333 = load i64, i64* %21, align 8
  %334 = add i64 3, %333
  %335 = trunc i64 %334 to i32
  %336 = call i32 @TEST_size_t_eq(i64 %332, i32 %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %331, %322, %317, %309, %301
  %339 = load i64, i64* %21, align 8
  %340 = add i64 %339, 1
  %341 = load i64, i64* %21, align 8
  %342 = getelementptr inbounds [5 x i8*], [5 x i8*]* @test_param_construct.uint_names, i64 0, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @TEST_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i64 %340, i8* %343)
  br label %591

345:                                              ; preds = %331
  br label %346

346:                                              ; preds = %345
  %347 = load i64, i64* %21, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %21, align 8
  br label %297

349:                                              ; preds = %297
  %350 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %351 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.TYPE_45__* %351, %struct.TYPE_45__** %10, align 8
  %352 = call i32 @TEST_ptr(%struct.TYPE_45__* %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %376

354:                                              ; preds = %349
  %355 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %356 = call i32 @OSSL_PARAM_set_double(%struct.TYPE_45__* %355, double 3.140000e+00)
  %357 = call i32 @TEST_true(i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %376

359:                                              ; preds = %354
  %360 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %361 = call i32 @OSSL_PARAM_get_double(%struct.TYPE_45__* %360, double* %25)
  %362 = call i32 @TEST_true(i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %359
  %365 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = call i32 @TEST_size_t_eq(i64 %368, i32 8)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %364
  %372 = load double, double* %24, align 8
  %373 = load double, double* %25, align 8
  %374 = call i32 @TEST_double_eq(double %372, double %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %371, %364, %359, %354, %349
  br label %591

377:                                              ; preds = %371
  store i8* null, i8** %4, align 8
  %378 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %379 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_45__* %379, %struct.TYPE_45__** %10, align 8
  %380 = call i32 @TEST_ptr(%struct.TYPE_45__* %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %403

382:                                              ; preds = %377
  %383 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %384 = call i32 @OSSL_PARAM_set_utf8_string(%struct.TYPE_45__* %383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %385 = call i32 @TEST_true(i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %403

387:                                              ; preds = %382
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = call i32 @TEST_size_t_eq(i64 %391, i32 7)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %387
  %395 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %396 = call i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_45__* %395, i8** %4, i32 0)
  %397 = call i32 @TEST_true(i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load i8*, i8** %4, align 8
  %401 = call i32 @TEST_str_eq(i8* %400, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %399, %394, %387, %382, %377
  br label %591

404:                                              ; preds = %399
  %405 = load i8*, i8** %4, align 8
  %406 = call i32 @OPENSSL_free(i8* %405)
  %407 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %407, i8** %4, align 8
  %408 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %409 = call i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_45__* %408, i8** %4, i32 100)
  %410 = call i32 @TEST_true(i32 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %404
  %413 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %414 = call i32 @TEST_str_eq(i8* %413, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %412, %404
  br label %591

417:                                              ; preds = %412
  %418 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %418, i8** %4, align 8
  %419 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %420 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %419, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_45__* %420, %struct.TYPE_45__** %10, align 8
  %421 = call i32 @TEST_ptr(%struct.TYPE_45__* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %449

423:                                              ; preds = %417
  %424 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %425 = call i32 @OSSL_PARAM_set_utf8_ptr(%struct.TYPE_45__* %424, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %426 = call i32 @TEST_true(i32 %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %449

428:                                              ; preds = %423
  %429 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = sext i32 %431 to i64
  %433 = call i32 @TEST_size_t_eq(i64 %432, i32 8)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %449

435:                                              ; preds = %428
  %436 = load i8*, i8** %4, align 8
  %437 = call i32 @TEST_str_eq(i8* %436, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %449

439:                                              ; preds = %435
  %440 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %441 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.TYPE_45__* %440, i8** %5)
  %442 = call i32 @TEST_true(i32 %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = load i8*, i8** %5, align 8
  %446 = load i8*, i8** %4, align 8
  %447 = call i32 @TEST_ptr_eq(i8* %445, i8* %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %444, %439, %435, %428, %423, %417
  br label %591

450:                                              ; preds = %444
  %451 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %452 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_45__* %452, %struct.TYPE_45__** %10, align 8
  %453 = call i32 @TEST_ptr(%struct.TYPE_45__* %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %467

455:                                              ; preds = %450
  %456 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %457 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_45__* %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 10)
  %458 = call i32 @TEST_true(i32 %457)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %467

460:                                              ; preds = %455
  %461 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = call i32 @TEST_size_t_eq(i64 %464, i32 10)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %460, %455, %450
  br label %591

468:                                              ; preds = %460
  %469 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = sext i32 %471 to i64
  %473 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %474 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %473, i32 0, i32 0
  store i64 %472, i64* %474, align 8
  %475 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %476 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_45__* %475, i8** %8, i32 0, i64* %23)
  %477 = call i32 @TEST_true(i32 %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %468
  %480 = load i64, i64* %23, align 8
  %481 = call i32 @TEST_size_t_eq(i64 %480, i32 10)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %479
  %484 = load i8*, i8** %8, align 8
  %485 = call i32 @TEST_mem_eq(i8* %484, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 10)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %483, %479, %468
  br label %591

488:                                              ; preds = %483
  %489 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %489, i8** %7, align 8
  %490 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %491 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_45__* %490, i8** %7, i32 100, i64* %23)
  %492 = call i32 @TEST_true(i32 %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %502

494:                                              ; preds = %488
  %495 = load i64, i64* %23, align 8
  %496 = call i32 @TEST_size_t_eq(i64 %495, i32 10)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %494
  %499 = load i8*, i8** %7, align 8
  %500 = call i32 @TEST_mem_eq(i8* %499, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 10)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %498, %494, %488
  br label %591

503:                                              ; preds = %498
  %504 = bitcast i64* %15 to i8*
  store i8* %504, i8** %7, align 8
  %505 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %506 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %505, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store %struct.TYPE_45__* %506, %struct.TYPE_45__** %10, align 8
  %507 = call i32 @TEST_ptr(%struct.TYPE_45__* %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %526

509:                                              ; preds = %503
  %510 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %511 = call i32 @OSSL_PARAM_set_octet_ptr(%struct.TYPE_45__* %510, i64* %16, i32 8)
  %512 = call i32 @TEST_true(i32 %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %526

514:                                              ; preds = %509
  %515 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = sext i32 %517 to i64
  %519 = call i32 @TEST_size_t_eq(i64 %518, i32 8)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %514
  %522 = load i8*, i8** %7, align 8
  %523 = bitcast i64* %16 to i8*
  %524 = call i32 @TEST_ptr_eq(i8* %522, i8* %523)
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %521, %514, %509, %503
  br label %591

527:                                              ; preds = %521
  %528 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %529 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = sext i32 %530 to i64
  %532 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %532, i32 0, i32 0
  store i64 %531, i64* %533, align 8
  %534 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %535 = call i32 @OSSL_PARAM_get_octet_ptr(%struct.TYPE_45__* %534, i8** %9, i64* %22)
  %536 = call i32 @TEST_true(i32 %535)
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %547

538:                                              ; preds = %527
  %539 = load i64, i64* %22, align 8
  %540 = call i32 @TEST_size_t_eq(i64 %539, i32 8)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %538
  %543 = load i8*, i8** %9, align 8
  %544 = load i8*, i8** %7, align 8
  %545 = call i32 @TEST_ptr_eq(i8* %543, i8* %544)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %548, label %547

547:                                              ; preds = %542, %538, %527
  br label %591

548:                                              ; preds = %542
  %549 = getelementptr inbounds [20 x %struct.TYPE_45__], [20 x %struct.TYPE_45__]* %1, i64 0, i64 0
  %550 = call %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__* %549, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store %struct.TYPE_45__* %550, %struct.TYPE_45__** %10, align 8
  %551 = call i32 @TEST_ptr(%struct.TYPE_45__* %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %572

553:                                              ; preds = %548
  %554 = call %struct.TYPE_45__* @BN_lebin2bn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_param_construct.bn_val, i64 0, i64 0), i32 16, i32* null)
  store %struct.TYPE_45__* %554, %struct.TYPE_45__** %26, align 8
  %555 = call i32 @TEST_ptr(%struct.TYPE_45__* %554)
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %572

557:                                              ; preds = %553
  %558 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %559 = load %struct.TYPE_45__*, %struct.TYPE_45__** %26, align 8
  %560 = call i32 @OSSL_PARAM_set_BN(%struct.TYPE_45__* %558, %struct.TYPE_45__* %559)
  %561 = call i32 @TEST_true(i32 %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %572

563:                                              ; preds = %557
  %564 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %565 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %568 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @TEST_size_t_eq(i64 %566, i32 %569)
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %573, label %572

572:                                              ; preds = %563, %557, %553, %548
  br label %591

573:                                              ; preds = %563
  %574 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 8
  %577 = sext i32 %576 to i64
  %578 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %579 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %578, i32 0, i32 0
  store i64 %577, i64* %579, align 8
  %580 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %581 = call i32 @OSSL_PARAM_get_BN(%struct.TYPE_45__* %580, %struct.TYPE_45__** %27)
  %582 = call i32 @TEST_true(i32 %581)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %589

584:                                              ; preds = %573
  %585 = load %struct.TYPE_45__*, %struct.TYPE_45__** %26, align 8
  %586 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %587 = call i32 @TEST_BN_eq(%struct.TYPE_45__* %585, %struct.TYPE_45__* %586)
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %590, label %589

589:                                              ; preds = %584, %573
  br label %591

590:                                              ; preds = %584
  store i32 1, i32* %13, align 4
  br label %591

591:                                              ; preds = %590, %589, %572, %547, %526, %502, %487, %467, %449, %416, %403, %376, %338, %285, %242
  %592 = load i8*, i8** %8, align 8
  %593 = call i32 @OPENSSL_free(i8* %592)
  %594 = load %struct.TYPE_45__*, %struct.TYPE_45__** %26, align 8
  %595 = call i32 @BN_free(%struct.TYPE_45__* %594)
  %596 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %597 = call i32 @BN_free(%struct.TYPE_45__* %596)
  %598 = load i32, i32* %13, align 4
  ret i32 %598
}

declare dso_local { i64, i32 } @OSSL_PARAM_construct_int(i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @OSSL_PARAM_construct_uint(i8*, i32*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_long(i8*, i64*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_ulong(i8*, i64*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_int32(i8*, i32*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_int64(i8*, i64*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_uint32(i8*, i32*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_uint64(i8*, i64*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_size_t(i8*, i64*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_double(i8*, double*) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_BN(i8*, i8*, i32) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_utf8_string(i8*, i8*, i32) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_octet_string(i8*, i8*, i32) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_utf8_ptr(i8*, i8**, i32) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_octet_ptr(i8*, i8**, i32) #1

declare dso_local { i64, i32 } @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @TEST_ptr_null(%struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_45__* @OSSL_PARAM_locate(%struct.TYPE_45__*, i8*) #1

declare dso_local i64 @OSSL_NELEM(i8**) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_45__*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PARAM_set_int32(%struct.TYPE_45__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.TYPE_45__*, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @TEST_note(i8*, i64, i8*) #1

declare dso_local i32 @OSSL_PARAM_set_uint32(%struct.TYPE_45__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.TYPE_45__*, i64*) #1

declare dso_local i32 @OSSL_PARAM_set_double(%struct.TYPE_45__*, double) #1

declare dso_local i32 @OSSL_PARAM_get_double(%struct.TYPE_45__*, double*) #1

declare dso_local i32 @TEST_double_eq(double, double) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_string(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_45__*, i8**, i32) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(%struct.TYPE_45__*, i8**) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i8*) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_45__*, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_45__*, i8**, i32, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_ptr(%struct.TYPE_45__*, i64*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_octet_ptr(%struct.TYPE_45__*, i8**, i64*) #1

declare dso_local %struct.TYPE_45__* @BN_lebin2bn(i8*, i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_set_BN(%struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.TYPE_45__*, %struct.TYPE_45__**) #1

declare dso_local i32 @TEST_BN_eq(%struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
