; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaDec.c_LzmaDec_Allocate.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaDec.c_LzmaDec_Allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_15__*, i64)* }

@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_Allocate(%struct.TYPE_17__* %0, i32* %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @LzmaProps_Decode(%struct.TYPE_16__* %10, i32* %12, i32 %13)
  %15 = call i32 @RINOK(i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = call i32 @LzmaDec_AllocateProbs2(%struct.TYPE_17__* %16, %struct.TYPE_16__* %10, %struct.TYPE_15__* %17)
  %19 = call i32 @RINOK(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26, %4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = call i32 @LzmaDec_FreeDict(%struct.TYPE_17__* %33, %struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_15__*, i64)*, i64 (%struct.TYPE_15__*, i64)** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 %38(%struct.TYPE_15__* %39, i64 %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_17__* %50, %struct.TYPE_15__* %51)
  %53 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %53, i32* %5, align 4
  br label %64

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_16__* %60 to i8*
  %62 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load i32, i32* @SZ_OK, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LzmaProps_Decode(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @LzmaDec_AllocateProbs2(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @LzmaDec_FreeDict(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
