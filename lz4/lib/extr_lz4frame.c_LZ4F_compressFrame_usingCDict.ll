; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_compressFrame_usingCDict.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_compressFrame_usingCDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32 }

@LZ4F_blockIndependent = common dso_local global i32 0, align 4
@LZ4F_ERROR_dstMaxSize_tooSmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LZ4F_compressFrame_usingCDict(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32* %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %15, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %18, align 8
  %26 = load i32*, i32** %18, align 8
  store i32* %26, i32** %19, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %20, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %34 = bitcast %struct.TYPE_11__* %16 to i8*
  %35 = bitcast %struct.TYPE_11__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  br label %38

36:                                               ; preds = %7
  %37 = call i32 @MEM_INIT(%struct.TYPE_11__* %16, i32 0, i32 24)
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @LZ4F_optimalBSID(i32 %50, i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @LZ4F_getBlockSize(i32 %59)
  %61 = icmp ule i64 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load i32, i32* @LZ4F_blockIndependent, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %47
  %67 = call i32 @MEM_INIT(%struct.TYPE_11__* %17, i32 0, i32 24)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @LZ4F_compressFrameBound(i64 %70, %struct.TYPE_11__* %16)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @LZ4F_ERROR_dstMaxSize_tooSmall, align 4
  %75 = call i64 @err0r(i32 %74)
  store i64 %75, i64* %8, align 8
  br label %150

76:                                               ; preds = %66
  %77 = load i32*, i32** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i64 @LZ4F_compressBegin_usingCDict(i32* %77, i8* %78, i64 %79, i32* %80, %struct.TYPE_11__* %16)
  store i64 %81, i64* %21, align 8
  %82 = load i64, i64* %21, align 8
  %83 = call i64 @LZ4F_isError(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i64, i64* %21, align 8
  store i64 %86, i64* %8, align 8
  br label %150

87:                                               ; preds = %76
  %88 = load i64, i64* %21, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %19, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = icmp uge i32* %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i64 @LZ4F_compressUpdate(i32* %96, i32* %97, i64 %103, i8* %104, i64 %105, %struct.TYPE_11__* %17)
  store i64 %106, i64* %22, align 8
  %107 = load i64, i64* %22, align 8
  %108 = call i64 @LZ4F_isError(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %87
  %111 = load i64, i64* %22, align 8
  store i64 %111, i64* %8, align 8
  br label %150

112:                                              ; preds = %87
  %113 = load i64, i64* %22, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %19, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = icmp uge i32* %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = call i64 @LZ4F_compressEnd(i32* %121, i32* %122, i64 %128, %struct.TYPE_11__* %17)
  store i64 %129, i64* %23, align 8
  %130 = load i64, i64* %23, align 8
  %131 = call i64 @LZ4F_isError(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %112
  %134 = load i64, i64* %23, align 8
  store i64 %134, i64* %8, align 8
  br label %150

135:                                              ; preds = %112
  %136 = load i64, i64* %23, align 8
  %137 = load i32*, i32** %19, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 %136
  store i32* %138, i32** %19, align 8
  %139 = load i32*, i32** %20, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = icmp uge i32* %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32*, i32** %19, align 8
  %145 = load i32*, i32** %18, align 8
  %146 = ptrtoint i32* %144 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %135, %133, %110, %85, %73
  %151 = load i64, i64* %8, align 8
  ret i64 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MEM_INIT(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @LZ4F_optimalBSID(i32, i64) #2

declare dso_local i64 @LZ4F_getBlockSize(i32) #2

declare dso_local i64 @LZ4F_compressFrameBound(i64, %struct.TYPE_11__*) #2

declare dso_local i64 @err0r(i32) #2

declare dso_local i64 @LZ4F_compressBegin_usingCDict(i32*, i8*, i64, i32*, %struct.TYPE_11__*) #2

declare dso_local i64 @LZ4F_isError(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @LZ4F_compressUpdate(i32*, i32*, i64, i8*, i64, %struct.TYPE_11__*) #2

declare dso_local i64 @LZ4F_compressEnd(i32*, i32*, i64, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
