; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_crypto_new_ex_data_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_crypto_new_ex_data_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@CRYPTO_F_CRYPTO_NEW_EX_DATA_EX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_new_ex_data_ex(i32* %0, i32 %1, i8* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca [10 x %struct.TYPE_16__*], align 16
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_14__* @openssl_ctx_get_ex_data_global(i32* %17)
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %16, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %155

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_15__* @get_and_lock(i32* %23, i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %15, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %155

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sk_EX_CALLBACK_num(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %14, i64 0, i64 0
  %44 = call i64 @OSSL_NELEM(%struct.TYPE_16__** %43)
  %45 = trunc i64 %44 to i32
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %14, i64 0, i64 0
  store %struct.TYPE_16__** %48, %struct.TYPE_16__*** %13, align 8
  br label %55

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_16__** @OPENSSL_malloc(i32 %53)
  store %struct.TYPE_16__** %54, %struct.TYPE_16__*** %13, align 8
  br label %55

55:                                               ; preds = %49, %47
  %56 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %57 = icmp ne %struct.TYPE_16__** %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32 %66, i32 %67)
  %69 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %69, i64 %71
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %72, align 8
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %59

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %29
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CRYPTO_THREAD_unlock(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %87 = icmp eq %struct.TYPE_16__** %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @CRYPTO_F_CRYPTO_NEW_EX_DATA_EX, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @CRYPTOerr(i32 %89, i32 %90)
  store i32 0, i32* %5, align 4
  br label %155

92:                                               ; preds = %85, %78
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %144, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %93
  %98 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %98, i64 %100
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = icmp ne %struct.TYPE_16__* %102, null
  br i1 %103, label %104, label %143

104:                                              ; preds = %97
  %105 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %105, i64 %107
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)** %110, align 8
  %112 = icmp ne i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)* %111, null
  br i1 %112, label %113, label %143

113:                                              ; preds = %104
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_17__* %114, i32 %115)
  store i8* %116, i8** %12, align 8
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %117, i64 %119
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)** %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %128, i64 %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %135, i64 %137
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %123(i8* %124, i8* %125, %struct.TYPE_17__* %126, i32 %127, i32 %134, i32 %141)
  br label %143

143:                                              ; preds = %113, %104, %97
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %93

147:                                              ; preds = %93
  %148 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %149 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %14, i64 0, i64 0
  %150 = icmp ne %struct.TYPE_16__** %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %153 = call i32 @OPENSSL_free(%struct.TYPE_16__** %152)
  br label %154

154:                                              ; preds = %151, %147
  store i32 1, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %88, %28, %21
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_14__* @openssl_ctx_get_ex_data_global(i32*) #1

declare dso_local %struct.TYPE_15__* @get_and_lock(i32*, i32) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__** @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
