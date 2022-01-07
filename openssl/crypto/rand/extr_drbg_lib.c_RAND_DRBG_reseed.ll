; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_reseed.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)*, i64, i64, i32, i32 (%struct.TYPE_8__*, i8*, i64)*, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i8*, i64, i8*, i64)* }

@DRBG_ERROR = common dso_local global i64 0, align 8
@RAND_F_RAND_DRBG_RESEED = common dso_local global i32 0, align 4
@RAND_R_IN_ERROR_STATE = common dso_local global i32 0, align 4
@DRBG_UNINITIALISED = common dso_local global i64 0, align 8
@RAND_R_NOT_INSTANTIATED = common dso_local global i32 0, align 4
@RAND_R_ADDITIONAL_INPUT_TOO_LONG = common dso_local global i32 0, align 4
@RAND_R_ERROR_RETRIEVING_ENTROPY = common dso_local global i32 0, align 4
@DRBG_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_reseed(%struct.TYPE_8__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DRBG_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @RAND_F_RAND_DRBG_RESEED, align 4
  %19 = load i32, i32* @RAND_R_IN_ERROR_STATE, align 4
  %20 = call i32 @RANDerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %162

21:                                               ; preds = %4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRBG_UNINITIALISED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @RAND_F_RAND_DRBG_RESEED, align 4
  %29 = load i32, i32* @RAND_R_NOT_INSTANTIATED, align 4
  %30 = call i32 @RANDerr(i32 %28, i32 %29)
  store i32 0, i32* %5, align 4
  br label %162

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 0, i64* %8, align 8
  br label %46

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @RAND_F_RAND_DRBG_RESEED, align 4
  %43 = load i32, i32* @RAND_R_ADDITIONAL_INPUT_TOO_LONG, align 4
  %44 = call i32 @RANDerr(i32 %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %162

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i64, i64* @DRBG_ERROR, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 8
  %52 = call i32 @tsan_load(i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %59
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)*, i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)** %74, align 8
  %76 = icmp ne i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)*, i64 (%struct.TYPE_8__*, i8**, i32, i64, i64, i32)** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i64 %80(%struct.TYPE_8__* %81, i8** %10, i32 %84, i64 %87, i64 %90, i32 %91)
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %77, %72
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ugt i64 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @RAND_F_RAND_DRBG_RESEED, align 4
  %107 = load i32, i32* @RAND_R_ERROR_RETRIEVING_ENTROPY, align 4
  %108 = call i32 @RANDerr(i32 %106, i32 %107)
  br label %138

109:                                              ; preds = %99
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 10
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_8__*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64, i8*, i64)** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 %114(%struct.TYPE_8__* %115, i8* %116, i64 %117, i8* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %109
  br label %138

123:                                              ; preds = %109
  %124 = load i64, i64* @DRBG_READY, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 6
  store i32 1, i32* %128, align 8
  %129 = call i32 @time(i32* null)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @tsan_store(i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %123, %122, %105
  %139 = load i8*, i8** %10, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 7
  %144 = load i32 (%struct.TYPE_8__*, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64)** %143, align 8
  %145 = icmp ne i32 (%struct.TYPE_8__*, i8*, i64)* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  %149 = load i32 (%struct.TYPE_8__*, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64)** %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 %149(%struct.TYPE_8__* %150, i8* %151, i64 %152)
  br label %154

154:                                              ; preds = %146, %141, %138
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DRBG_READY, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 1, i32* %5, align 4
  br label %162

161:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %160, %41, %27, %17
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @tsan_load(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @tsan_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
