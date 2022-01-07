; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_siphash_internal_test.c_test_siphash.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_siphash_internal_test.c_test_siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i32 }

@tests = common dso_local global %struct.TYPE_10__* null, align 8
@SIPHASH_KEY_SIZE = common dso_local global i32 0, align 4
@SIPHASH_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@SIPHASH_MIN_DIGEST_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"size %zu vs %d and %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SipHash test #%d/1+(N-1) failed.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SipHash test #%d/2 failed.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"SipHash test #%d/%zu+%zu failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_siphash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_siphash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %16 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tests, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %19
  %21 = bitcast %struct.TYPE_10__* %5 to i8*
  %22 = bitcast %struct.TYPE_10__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load i32, i32* @SIPHASH_KEY_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* @SIPHASH_MAX_DIGEST_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @SIPHASH_MIN_DIGEST_SIZE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @SIPHASH_MAX_DIGEST_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* @SIPHASH_MIN_DIGEST_SIZE, align 8
  %50 = load i32, i32* @SIPHASH_MAX_DIGEST_SIZE, align 4
  %51 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49, i32 %50)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

52:                                               ; preds = %41, %1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @TEST_int_le(i64 %53, i32 64)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

57:                                               ; preds = %52
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %66, %57
  %59 = load i64, i64* %13, align 8
  %60 = icmp ult i64 %59, %24
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i64, i64* %13, align 8
  %63 = trunc i64 %62 to i8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i8, i8* %26, i64 %64
  store i8 %63, i8* %65, align 1
  br label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %58

69:                                               ; preds = %58
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %77
  store i8 %76, i8* %78, align 1
  br label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %70

82:                                               ; preds = %70
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @SipHash_set_hash_size(%struct.TYPE_11__* %4, i64 %83)
  %85 = call i32 @TEST_true(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = call i32 @SipHash_Init(%struct.TYPE_11__* %4, i8* %26, i32 0, i32 0)
  %89 = call i32 @TEST_true(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87, %82
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

92:                                               ; preds = %87
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %93, i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @SipHash_Final(%struct.TYPE_11__* %4, i8* %37, i64 %96)
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i64, i64* %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @TEST_mem_eq(i8* %37, i64 %101, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100, %92
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

107:                                              ; preds = %100
  %108 = load i64, i64* %9, align 8
  %109 = icmp ugt i64 %108, 16
  br i1 %109, label %110, label %143

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @SipHash_set_hash_size(%struct.TYPE_11__* %4, i64 %111)
  %113 = call i32 @TEST_true(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = call i32 @SipHash_Init(%struct.TYPE_11__* %4, i8* %26, i32 0, i32 0)
  %117 = call i32 @TEST_true(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115, %110
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

120:                                              ; preds = %115
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %122 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %121, i64 1)
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i64, i64* %9, align 8
  %126 = sub i64 %125, 1
  %127 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %124, i64 %126)
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @SipHash_Final(%struct.TYPE_11__* %4, i8* %37, i64 %128)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

133:                                              ; preds = %120
  %134 = load i64, i64* %11, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @TEST_mem_eq(i8* %37, i64 %134, i8* %135, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %107
  %144 = load i64, i64* %9, align 8
  %145 = icmp ugt i64 %144, 32
  br i1 %145, label %146, label %232

146:                                              ; preds = %143
  %147 = load i64, i64* %9, align 8
  %148 = udiv i64 %147, 2
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @SipHash_set_hash_size(%struct.TYPE_11__* %4, i64 %149)
  %151 = call i32 @TEST_true(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = call i32 @SipHash_Init(%struct.TYPE_11__* %4, i8* %26, i32 0, i32 0)
  %155 = call i32 @TEST_true(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %146
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

158:                                              ; preds = %153
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %159, i64 %160)
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %15, align 8
  %167 = sub i64 %165, %166
  %168 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %164, i64 %167)
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @SipHash_Final(%struct.TYPE_11__* %4, i8* %37, i64 %169)
  %171 = call i32 @TEST_true(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

174:                                              ; preds = %158
  %175 = load i64, i64* %11, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @TEST_mem_eq(i8* %37, i64 %175, i8* %176, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %3, align 4
  %182 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

183:                                              ; preds = %174
  store i64 16, i64* %15, align 8
  br label %184

184:                                              ; preds = %228, %183
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %9, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %231

188:                                              ; preds = %184
  %189 = load i64, i64* %11, align 8
  %190 = call i32 @SipHash_set_hash_size(%struct.TYPE_11__* %4, i64 %189)
  %191 = call i32 @TEST_true(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = call i32 @SipHash_Init(%struct.TYPE_11__* %4, i8* %26, i32 0, i32 0)
  %195 = call i32 @TEST_true(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193, %188
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

198:                                              ; preds = %193
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %200 = load i64, i64* %15, align 8
  %201 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %199, i64 %200)
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %203 = load i64, i64* %15, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* %15, align 8
  %207 = sub i64 %205, %206
  %208 = call i32 @SipHash_Update(%struct.TYPE_11__* %4, i8* %204, i64 %207)
  %209 = load i64, i64* %11, align 8
  %210 = call i32 @SipHash_Final(%struct.TYPE_11__* %4, i8* %37, i64 %209)
  %211 = call i32 @TEST_true(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

214:                                              ; preds = %198
  %215 = load i64, i64* %11, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = call i32 @TEST_mem_eq(i8* %37, i64 %215, i8* %216, i64 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %3, align 4
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* %9, align 8
  %224 = load i64, i64* %15, align 8
  %225 = sub i64 %223, %224
  %226 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %221, i64 %222, i64 %225)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

227:                                              ; preds = %214
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %15, align 8
  %230 = add i64 %229, 16
  store i64 %230, i64* %15, align 8
  br label %184

231:                                              ; preds = %184
  br label %232

232:                                              ; preds = %231, %143
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %233

233:                                              ; preds = %232, %220, %213, %197, %180, %173, %157, %139, %132, %119, %106, %91, %56, %46
  %234 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TEST_info(i8*, i32, ...) #3

declare dso_local i32 @TEST_int_le(i64, i32) #3

declare dso_local i32 @TEST_true(i32) #3

declare dso_local i32 @SipHash_set_hash_size(%struct.TYPE_11__*, i64) #3

declare dso_local i32 @SipHash_Init(%struct.TYPE_11__*, i8*, i32, i32) #3

declare dso_local i32 @SipHash_Update(%struct.TYPE_11__*, i8*, i64) #3

declare dso_local i32 @SipHash_Final(%struct.TYPE_11__*, i8*, i64) #3

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
