; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_drbg_reseed.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_drbg_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@DRBG_READY = common dso_local global i32 0, align 4
@DRBG_ERROR = common dso_local global i32 0, align 4
@master_ctx = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@public_ctx = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@private_ctx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i64)* @test_drbg_reseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_drbg_reseed(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [32 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @DRBG_READY, align 4
  br label %28

26:                                               ; preds = %8
  %27 = load i32, i32* @DRBG_ERROR, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %21, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TEST_int_ne(i32 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @TEST_int_ne(i32 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @TEST_int_ne(i32 %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41, %35, %28
  store i32 0, i32* %9, align 4
  br label %205

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TEST_int_le(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @TEST_int_le(i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57, %48
  store i32 0, i32* %9, align 4
  br label %205

67:                                               ; preds = %57
  %68 = load i64, i64* %17, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i64 @time(i32* null)
  store i64 %71, i64* %17, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64, i64* %17, align 8
  br label %78

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i64 [ %76, %75 ], [ 0, %77 ]
  store i64 %79, i64* %19, align 8
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %81 = call i32 @RAND_bytes(i8* %80, i32 32)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @TEST_int_eq(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %87 = call i32 @RAND_priv_bytes(i8* %86, i32 32)
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @TEST_int_eq(i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85, %78
  store i32 0, i32* %9, align 4
  br label %205

92:                                               ; preds = %85
  %93 = call i64 @time(i32* null)
  store i64 %93, i64* %20, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @TEST_int_eq(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @TEST_int_eq(i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %21, align 4
  %112 = call i32 @TEST_int_eq(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107, %100, %92
  store i32 0, i32* %9, align 4
  br label %205

115:                                              ; preds = %107
  %116 = load i32, i32* %14, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @master_ctx, i32 0, i32 0), align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @TEST_int_eq(i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %205

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %115
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @public_ctx, i32 0, i32 0), align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @TEST_int_eq(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %205

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %125
  %136 = load i32, i32* %16, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @private_ctx, i32 0, i32 0), align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @TEST_int_eq(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %205

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %135
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %202

148:                                              ; preds = %145
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @TEST_int_eq(i32 %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %148
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @TEST_int_eq(i32 %160, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157, %148
  store i32 0, i32* %9, align 4
  br label %205

167:                                              ; preds = %157
  %168 = load i64, i64* %19, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @TEST_time_t_le(i64 %168, i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %20, align 8
  %179 = call i32 @TEST_time_t_le(i64 %177, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %174, %167
  store i32 0, i32* %9, align 4
  br label %205

182:                                              ; preds = %174
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @TEST_time_t_ge(i64 %185, i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %182
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @TEST_time_t_ge(i64 %194, i64 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %191, %182
  store i32 0, i32* %9, align 4
  br label %205

201:                                              ; preds = %191
  br label %204

202:                                              ; preds = %145
  %203 = call i32 (...) @ERR_clear_error()
  br label %204

204:                                              ; preds = %202, %201
  store i32 1, i32* %9, align 4
  br label %205

205:                                              ; preds = %204, %200, %181, %166, %143, %133, %123, %114, %91, %66, %47
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @RAND_priv_bytes(i8*, i32) #1

declare dso_local i32 @TEST_time_t_le(i64, i64) #1

declare dso_local i32 @TEST_time_t_ge(i64, i64) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
