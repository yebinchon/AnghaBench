; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"NO_KEY\00", align 1
@EVP_CIPH_WRAP_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"NO_IV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NO_TAG\00", align 1
@cipher_test_run.aux_err = internal global [64 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [26 x i8] c"%s in-place, %sfragmented\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"misaligned\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s output and %s input, %sfragmented\00", align 1
@EVP_CIPH_CCM_MODE = common dso_local global i64 0, align 8
@EVP_CIPH_SIV_MODE = common dso_local global i64 0, align 8
@EVP_CIPH_XTS_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @cipher_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_test_run(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %2, align 4
  br label %177

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @EVP_CIPHER_iv_length(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @EVP_CIPHER_mode(i32 %33)
  %35 = load i64, i64* @EVP_CIPH_WRAP_MODE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  store i32 0, i32* %2, align 4
  br label %177

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %24, %19
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  store i32 0, i32* %2, align 4
  br label %177

54:                                               ; preds = %46, %41
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %173, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp ule i64 %56, 1
  br i1 %57, label %58, label %174

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i8** %60, align 8
  store i64 -1, i64* %8, align 8
  br label %61

61:                                               ; preds = %130, %58
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 2
  br i1 %63, label %64, label %133

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %76 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @BIO_snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %71, i8* %75)
  br label %91

77:                                               ; preds = %64
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %90 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @BIO_snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %81, i8* %85, i8* %89)
  br label %91

91:                                               ; preds = %77, %67
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @cipher_test_enc(%struct.TYPE_5__* %97, i32 1, i64 %98, i64 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %177

108:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %177

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @cipher_test_enc(%struct.TYPE_5__* %116, i32 0, i64 %117, i64 %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %177

127:                                              ; preds = %123
  store i32 1, i32* %2, align 4
  br label %177

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %8, align 8
  br label %61

133:                                              ; preds = %61
  %134 = load i64, i64* %7, align 8
  %135 = icmp eq i64 %134, 1
  br i1 %135, label %136, label %170

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %136
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %166, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @EVP_CIPHER_mode(i32 %148)
  %150 = load i64, i64* @EVP_CIPH_SIV_MODE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %166, label %152

152:                                              ; preds = %145
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @EVP_CIPHER_mode(i32 %155)
  %157 = load i64, i64* @EVP_CIPH_XTS_MODE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @EVP_CIPHER_mode(i32 %162)
  %164 = load i64, i64* @EVP_CIPH_WRAP_MODE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %152, %145, %139
  br label %174

167:                                              ; preds = %159
  store i64 0, i64* %7, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %173

170:                                              ; preds = %136, %133
  %171 = load i64, i64* %7, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %7, align 8
  br label %173

173:                                              ; preds = %170, %167
  br label %55

174:                                              ; preds = %166, %55
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store i8* null, i8** %176, align 8
  store i32 1, i32* %2, align 4
  br label %177

177:                                              ; preds = %174, %127, %126, %108, %107, %51, %37, %16
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i64 @EVP_CIPHER_iv_length(i32) #1

declare dso_local i64 @EVP_CIPHER_mode(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @cipher_test_enc(%struct.TYPE_5__*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
