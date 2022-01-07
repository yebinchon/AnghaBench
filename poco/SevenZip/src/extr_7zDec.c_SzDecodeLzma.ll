; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_7zDec.c_SzDecodeLzma.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_7zDec.c_SzDecodeLzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 (i8*, i64)*, i64 (i8*, i8**, i64*)* }
%struct.TYPE_15__ = type { i64, i64, i32* }

@SZ_OK = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, %struct.TYPE_13__*, i32*, i64, i32*)* @SzDecodeLzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SzDecodeLzma(%struct.TYPE_14__* %0, i64 %1, %struct.TYPE_13__* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i64, i64* @SZ_OK, align 8
  store i64 %20, i64* %14, align 8
  %21 = call i32 @LzmaDec_Construct(%struct.TYPE_15__* %13)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @LzmaDec_AllocateProbs(%struct.TYPE_15__* %13, i32 %25, i32 %30, i32* %31)
  %33 = call i32 @RINOK(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32* %34, i32** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = call i32 @LzmaDec_Init(%struct.TYPE_15__* %13)
  br label %39

39:                                               ; preds = %120, %6
  store i32* null, i32** %15, align 8
  store i64 262144, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64 (i8*, i8**, i64*)*, i64 (i8*, i8**, i64*)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = bitcast %struct.TYPE_13__* %49 to i8*
  %51 = bitcast i32** %15 to i8**
  %52 = call i64 %48(i8* %50, i8** %51, i64* %16)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @SZ_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %121

57:                                               ; preds = %45
  %58 = load i64, i64* %16, align 8
  store i64 %58, i64* %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* @LZMA_FINISH_END, align 4
  %64 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_15__* %13, i64 %61, i32* %62, i64* %17, i32 %63, i64* %19)
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %16, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @SZ_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  br label %121

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %17, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %84, %75
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %16, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %94, %89
  %106 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %105, %101, %97
  br label %121

108:                                              ; preds = %84, %81
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64 (i8*, i64)*, i64 (i8*, i64)** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = bitcast %struct.TYPE_13__* %112 to i8*
  %114 = load i64, i64* %17, align 8
  %115 = call i64 %111(i8* %113, i64 %114)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* @SZ_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %121

120:                                              ; preds = %108
  br label %39

121:                                              ; preds = %119, %107, %74, %56
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_15__* %13, i32* %122)
  %124 = load i64, i64* %14, align 8
  ret i64 %124
}

declare dso_local i32 @LzmaDec_Construct(%struct.TYPE_15__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i32 @LzmaDec_Init(%struct.TYPE_15__*) #1

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_15__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
