; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_load.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i32, i32* (i32*, i32)*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* (i32, i32, i32)* }

@STORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Loading next object\0A\00", align 1
@OSSL_STORE_INFO_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Got a %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OSSL_STORE_load(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  br label %8

8:                                                ; preds = %91, %49, %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i64 @OSSL_STORE_eof(%struct.TYPE_6__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %107

13:                                               ; preds = %8
  %14 = load i32, i32* @STORE, align 4
  %15 = call i32 @OSSL_TRACE(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32* (i32, i32, i32)*, i32* (i32, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32* %20(i32 %23, i32 %26, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32* (i32*, i32)*, i32* (i32*, i32)** %32, align 8
  %34 = icmp ne i32* (i32*, i32)* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %13
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32* (i32*, i32)*, i32* (i32*, i32)** %40, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32* %41(i32* %42, i32 %45)
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %8

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %35, %13
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @OSSL_STORE_INFO_get_type(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @OSSL_STORE_INFO_NAME, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp eq i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @OSSL_STORE_INFO_free(i32* %92)
  br label %8

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %65, %59
  br label %96

96:                                               ; preds = %95, %54, %51
  %97 = load i32*, i32** %4, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @STORE, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @OSSL_STORE_INFO_get_type(i32* %101)
  %103 = call i32 @OSSL_STORE_INFO_type_string(i32 %102)
  %104 = call i32 @OSSL_TRACE1(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32*, i32** %4, align 8
  store i32* %106, i32** %2, align 8
  br label %107

107:                                              ; preds = %105, %12
  %108 = load i32*, i32** %2, align 8
  ret i32* %108
}

declare dso_local i64 @OSSL_STORE_eof(%struct.TYPE_6__*) #1

declare dso_local i32 @OSSL_TRACE(i32, i8*) #1

declare dso_local i32 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

declare dso_local i32 @OSSL_TRACE1(i32, i8*, i32) #1

declare dso_local i32 @OSSL_STORE_INFO_type_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
