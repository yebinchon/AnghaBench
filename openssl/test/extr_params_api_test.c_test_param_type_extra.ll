; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_type_extra.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_type_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@MAX_LEN = common dso_local global i32 0, align 4
@OSSL_PARAM_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64)* @test_param_type_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_param_type_extra(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @MAX_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 8
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %3
  %32 = phi i1 [ false, %3 ], [ false, %30 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OSSL_PARAM_INTEGER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %31
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = call i32 @OSSL_PARAM_get_int32(%struct.TYPE_10__* %46, i64* %8)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = call i32 @OSSL_PARAM_get_int64(%struct.TYPE_10__* %51, i64* %9)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %45
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

56:                                               ; preds = %50
  br label %82

57:                                               ; preds = %31
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = bitcast i64* %8 to i32*
  %63 = call i32 @OSSL_PARAM_get_uint32(%struct.TYPE_10__* %61, i32* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60, %57
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = bitcast i64* %9 to i32*
  %69 = call i32 @OSSL_PARAM_get_uint64(%struct.TYPE_10__* %67, i32* %68)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__* %76, i64* %10)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %66, %60
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = call i32 @le_copy(i8* %21, i64* %8, i32 8)
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 8, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %92

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i64 [ 8, %89 ], [ %91, %90 ]
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @TEST_mem_eq(i8* %21, i64 %94, i8* %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %82
  %102 = call i32 @le_copy(i8* %21, i64* %9, i32 8)
  %103 = load i64, i64* %7, align 8
  %104 = icmp ult i64 8, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %108

106:                                              ; preds = %101
  %107 = load i64, i64* %7, align 8
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i64 [ 8, %105 ], [ %107, %106 ]
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @TEST_mem_eq(i8* %21, i64 %110, i8* %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

116:                                              ; preds = %108
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %119
  %123 = call i32 @le_copy(i8* %21, i64* %10, i32 8)
  %124 = load i64, i64* %7, align 8
  %125 = icmp ult i64 8, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %129

127:                                              ; preds = %122
  %128 = load i64, i64* %7, align 8
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i64 [ 8, %126 ], [ %128, %127 ]
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @TEST_mem_eq(i8* %21, i64 %131, i8* %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %119, %116
  %139 = load i64, i64* %7, align 8
  %140 = icmp ugt i64 8, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %138
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = call i32 @OSSL_PARAM_set_int32(%struct.TYPE_10__* %145, i32 12345)
  %147 = call i32 @TEST_true(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = call i32 @OSSL_PARAM_get_int64(%struct.TYPE_10__* %150, i64* %9)
  %152 = call i32 @TEST_true(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @TEST_size_t_eq(i64 %155, i32 12345)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154, %149, %144
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

159:                                              ; preds = %154
  br label %177

160:                                              ; preds = %141
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = call i32 @OSSL_PARAM_set_uint32(%struct.TYPE_10__* %161, i32 12345)
  %163 = call i32 @TEST_true(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = bitcast i64* %9 to i32*
  %168 = call i32 @OSSL_PARAM_get_uint64(%struct.TYPE_10__* %166, i32* %167)
  %169 = call i32 @TEST_true(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @TEST_size_t_eq(i64 %172, i32 12345)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171, %165, %160
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177, %138
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %179

179:                                              ; preds = %178, %175, %158, %136, %115, %99, %80, %55
  %180 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @OSSL_PARAM_get_int32(%struct.TYPE_10__*, i64*) #2

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.TYPE_10__*, i64*) #2

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__*, i64*) #2

declare dso_local i32 @le_copy(i8*, i64*, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #2

declare dso_local i32 @OSSL_PARAM_set_int32(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @OSSL_PARAM_set_uint32(%struct.TYPE_10__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
