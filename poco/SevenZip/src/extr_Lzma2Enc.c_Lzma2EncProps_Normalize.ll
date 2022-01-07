; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Enc.c_Lzma2EncProps_Normalize.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Enc.c_Lzma2EncProps_Normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NUM_MT_CODER_THREADS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Lzma2EncProps_Normalize(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = bitcast %struct.TYPE_5__* %7 to i8*
  %15 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_5__* %7)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NUM_MT_CODER_THREADS_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @NUM_MT_CODER_THREADS_MAX, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %80

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @NUM_MT_CODER_THREADS_MAX, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @NUM_MT_CODER_THREADS_MAX, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %79

63:                                               ; preds = %45
  %64 = load i32, i32* %3, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %66
  br label %78

74:                                               ; preds = %63
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %73
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_5__* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %80
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 2
  store i32 %104, i32* %9, align 4
  store i32 1048576, i32* %10, align 4
  store i32 268435456, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 1048576
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 1048576, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %109, 268435456
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 268435456, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %80
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LzmaEncProps_Normalize(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
