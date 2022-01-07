; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xzs_ReadBackward.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xzs_ReadBackward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*, i64*, i32)* }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_23__*, i64, i32)* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_21__*, i64)* }

@SZ_SEEK_END = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_SEEK_SET = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_PROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Xzs_ReadBackward(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, i64* %2, %struct.TYPE_23__* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i64 (%struct.TYPE_22__*, i64*, i32)*, i64 (%struct.TYPE_22__*, i64*, i32)** %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %21 = load i32, i32* @SZ_SEEK_END, align 4
  %22 = call i64 %19(%struct.TYPE_22__* %20, i64* %12, i32 %21)
  %23 = call i32 @RINOK(i64 %22)
  %24 = load i64, i64* %12, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %132, %5
  %27 = call i32 @Xz_Construct(%struct.TYPE_25__* %13)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %31 = call i64 @Xz_ReadBackward(%struct.TYPE_25__* %13, %struct.TYPE_22__* %28, i64* %29, %struct.TYPE_21__* %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @RINOK(i64 %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %26
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sdiv i64 %50, 4
  %52 = add nsw i64 %47, %51
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %15, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i64 (%struct.TYPE_21__*, i64)*, i64 (%struct.TYPE_21__*, i64)** %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = load i64, i64* %15, align 8
  %59 = mul i64 %58, 8
  %60 = call i64 %56(%struct.TYPE_21__* %57, i64 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %65, i64* %6, align 8
  br label %135

66:                                               ; preds = %44
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32* %70, %struct.TYPE_25__* %73, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_21__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_25__*)** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = call i32 %82(%struct.TYPE_21__* %83, %struct.TYPE_25__* %86)
  %88 = load i32*, i32** %16, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_25__*
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 2
  store %struct.TYPE_25__* %89, %struct.TYPE_25__** %91, align 8
  br label %92

92:                                               ; preds = %66, %26
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i64 %98
  %101 = bitcast %struct.TYPE_25__* %100 to i8*
  %102 = bitcast %struct.TYPE_25__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 8, i1 false)
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %133

107:                                              ; preds = %92
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i64 (%struct.TYPE_22__*, i64*, i32)*, i64 (%struct.TYPE_22__*, i64*, i32)** %109, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load i32, i32* @SZ_SEEK_SET, align 4
  %114 = call i64 %110(%struct.TYPE_22__* %111, i64* %112, i32 %113)
  %115 = call i32 @RINOK(i64 %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %117 = icmp ne %struct.TYPE_23__* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i64 (%struct.TYPE_23__*, i64, i32)*, i64 (%struct.TYPE_23__*, i64, i32)** %120, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %123, %125
  %127 = call i64 %121(%struct.TYPE_23__* %122, i64 %126, i32 -1)
  %128 = load i64, i64* @SZ_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i64, i64* @SZ_ERROR_PROGRESS, align 8
  store i64 %131, i64* %6, align 8
  br label %135

132:                                              ; preds = %118, %107
  br label %26

133:                                              ; preds = %106
  %134 = load i64, i64* @SZ_OK, align 8
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %133, %130, %64
  %136 = load i64, i64* %6, align 8
  ret i64 %136
}

declare dso_local i32 @RINOK(i64) #1

declare dso_local i32 @Xz_Construct(%struct.TYPE_25__*) #1

declare dso_local i64 @Xz_ReadBackward(%struct.TYPE_25__*, %struct.TYPE_22__*, i64*, %struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_25__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
