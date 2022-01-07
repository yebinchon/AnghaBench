; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_cache_set.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_cache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32 }

@IMPL_CACHE_FLUSH_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_method_store_cache_set(%struct.TYPE_16__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %123

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %123

25:                                               ; preds = %21
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = call i32 @ossl_property_write_lock(%struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = call i32 @ossl_method_cache_flush_some(%struct.TYPE_16__* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.TYPE_17__* @ossl_method_store_retrieve(%struct.TYPE_16__* %36, i32 %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %13, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %40 = icmp eq %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @ossl_property_unlock(%struct.TYPE_16__* %42)
  store i32 0, i32* %5, align 4
  br label %123

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @lh_QUERY_delete(i32 %52, %struct.TYPE_15__* %10)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = call i32 @ossl_property_unlock(%struct.TYPE_16__* %61)
  store i32 1, i32* %5, align 4
  br label %123

63:                                               ; preds = %44
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strlen(i8* %64)
  store i64 %65, i64* %14, align 8
  %66 = add i64 24, %65
  %67 = trunc i64 %66 to i32
  %68 = call %struct.TYPE_15__* @OPENSSL_malloc(i32 %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %12, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %118

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  %86 = call i32 @memcpy(i8* %82, i8* %83, i64 %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %91 = call %struct.TYPE_15__* @lh_QUERY_insert(i32 %89, %struct.TYPE_15__* %90)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %11, align 8
  %92 = icmp ne %struct.TYPE_15__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %71
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = call i32 @OPENSSL_free(%struct.TYPE_15__* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = call i32 @ossl_property_unlock(%struct.TYPE_16__* %96)
  store i32 1, i32* %5, align 4
  br label %123

98:                                               ; preds = %71
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lh_QUERY_error(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* @IMPL_CACHE_FLUSH_THRESHOLD, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = call i32 @ossl_property_unlock(%struct.TYPE_16__* %115)
  store i32 1, i32* %5, align 4
  br label %123

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117, %63
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = call i32 @ossl_property_unlock(%struct.TYPE_16__* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = call i32 @OPENSSL_free(%struct.TYPE_15__* %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %114, %93, %60, %41, %24, %20
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @ossl_property_write_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @ossl_method_cache_flush_some(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @ossl_method_store_retrieve(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ossl_property_unlock(%struct.TYPE_16__*) #1

declare dso_local i32* @lh_QUERY_delete(i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @OPENSSL_malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_15__* @lh_QUERY_insert(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_15__*) #1

declare dso_local i32 @lh_QUERY_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
