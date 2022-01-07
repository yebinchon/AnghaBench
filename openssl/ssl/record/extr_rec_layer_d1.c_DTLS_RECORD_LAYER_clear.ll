; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_DTLS_RECORD_LAYER_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_DTLS_RECORD_LAYER_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DTLS_RECORD_LAYER_clear(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %3, align 8
  br label %12

12:                                               ; preds = %19, %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_17__* @pqueue_pop(i32* %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %5, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @OPENSSL_free(i64 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @OPENSSL_free(i64 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = call i32 @pitem_free(%struct.TYPE_17__* %33)
  br label %12

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %43, %35
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call %struct.TYPE_17__* @pqueue_pop(i32* %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %4, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @OPENSSL_free(i64 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @OPENSSL_free(i64 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i32 @pitem_free(%struct.TYPE_17__* %57)
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %67, %59
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call %struct.TYPE_17__* @pqueue_pop(i32* %64)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %4, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %5, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @OPENSSL_free(i64 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @OPENSSL_free(i64 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @pitem_free(%struct.TYPE_17__* %81)
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %6, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %7, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %8, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = call i32 @memset(%struct.TYPE_19__* %96, i32 0, i32 24)
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i32* %102, i32** %105, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32* %106, i32** %109, align 8
  ret void
}

declare dso_local %struct.TYPE_17__* @pqueue_pop(i32*) #1

declare dso_local i32 @OPENSSL_free(i64) #1

declare dso_local i32 @pitem_free(%struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
