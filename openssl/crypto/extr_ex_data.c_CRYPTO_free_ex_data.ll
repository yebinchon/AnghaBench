; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_CRYPTO_free_ex_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_CRYPTO_free_ex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)* }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_free_ex_data(i32 %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca [10 x %struct.TYPE_16__*], align 16
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %13, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_15__* @get_and_lock(i32* %17, i32 %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %144

22:                                               ; preds = %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call %struct.TYPE_14__* @openssl_ctx_get_ex_data_global(i32* %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %14, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %144

30:                                               ; preds = %22
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sk_EX_CALLBACK_num(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %40 = call i64 @OSSL_NELEM(%struct.TYPE_16__** %39)
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  store %struct.TYPE_16__** %44, %struct.TYPE_16__*** %13, align 8
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_16__** @OPENSSL_malloc(i32 %49)
  store %struct.TYPE_16__** %50, %struct.TYPE_16__*** %13, align 8
  br label %51

51:                                               ; preds = %45, %43
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %53 = icmp ne %struct.TYPE_16__** %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32 %62, i32 %63)
  %65 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %65, i64 %67
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %68, align 8
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %55

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CRYPTO_THREAD_unlock(i32 %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %133, %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %79
  %84 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %85 = icmp ne %struct.TYPE_16__** %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %87, i64 %89
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %11, align 8
  br label %106

92:                                               ; preds = %83
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @CRYPTO_THREAD_write_lock(i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32 %99, i32 %100)
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %11, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @CRYPTO_THREAD_unlock(i32 %104)
  br label %106

106:                                              ; preds = %92, %86
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %108 = icmp ne %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)** %111, align 8
  %113 = icmp ne i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %109
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_17__* %115, i32 %116)
  store i8* %117, i8** %10, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_17__*, i32, i32, i32)** %119, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %120(i8* %121, i8* %122, %struct.TYPE_17__* %123, i32 %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %114, %109, %106
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %79

136:                                              ; preds = %79
  %137 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %138 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %139 = icmp ne %struct.TYPE_16__** %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %142 = call i32 @OPENSSL_free(%struct.TYPE_16__** %141)
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %143, %29, %21
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @sk_void_free(i32* %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  ret void
}

declare dso_local %struct.TYPE_15__* @get_and_lock(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @openssl_ctx_get_ex_data_global(i32*) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__** @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_16__**) #1

declare dso_local i32 @sk_void_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
