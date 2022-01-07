; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_make_response.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_make_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_17__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i8**, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i8**, i32, i32 }

@COAP_TYPE_ACK = common dso_local global i32 0, align 4
@COAP_OPTION_CONTENT_FORMAT = common dso_local global i32 0, align 4
@COAP_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_make_response(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i8** %2, i64 %3, i8* %4, i8* %5, %struct.TYPE_17__* %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store i8** %2, i8*** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @COAP_TYPE_ACK, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %34, i8** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %40, i8** %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %9
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %60 = bitcast %struct.TYPE_17__* %58 to i8*
  %61 = bitcast %struct.TYPE_17__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  br label %62

62:                                               ; preds = %50, %9
  %63 = load i32, i32* @COAP_OPTION_CONTENT_FORMAT, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32* %71, i32** %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* @COAP_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %83, i32* %10, align 4
  br label %114

84:                                               ; preds = %62
  %85 = load i64, i64* %19, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65280
  %88 = ashr i32 %87, 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load i64, i64* %19, align 8
  %94 = trunc i64 %93 to i32
  %95 = and i32 %94, 255
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i32 2, i32* %105, align 8
  %106 = load i8**, i8*** %13, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i8** %106, i8*** %109, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %84, %82
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
