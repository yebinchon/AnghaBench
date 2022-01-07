; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_buffer_encoder.c_block_encode_normal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_buffer_encoder.c_block_encode_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32 }

@LZMA_DATA_ERROR = common dso_local global i64 0, align 8
@LZMA_BUF_ERROR = common dso_local global i64 0, align 8
@LZMA_NEXT_CODER_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i32*, i64, i32*, i64*, i64)* @block_encode_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_encode_normal(%struct.TYPE_10__* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i64 @lzma2_bound(i64 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64, i64* @LZMA_DATA_ERROR, align 8
  store i64 %29, i64* %8, align 8
  br label %138

30:                                               ; preds = %7
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = call i32 @lzma_block_header_size(%struct.TYPE_10__* %34)
  %36 = call i32 @return_if_error(i32 %35)
  %37 = load i64, i64* %15, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %37, %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ule i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %46, i64* %8, align 8
  br label %138

47:                                               ; preds = %30
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %14, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64*, i64** %14, align 8
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %56, %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load i64*, i64** %14, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %64, %47
  %72 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 bitcast (%struct.TYPE_9__* @LZMA_NEXT_CODER_INIT to i8*), i64 16, i1 false)
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @lzma_raw_encoder_init(%struct.TYPE_9__* %17, i32* %73, i32 %76)
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* @LZMA_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  store i64 0, i64* %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %83 = load i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* @LZMA_FINISH, align 4
  %93 = call i64 %83(i32 %85, i32* %86, i32* %87, i64* %19, i64 %88, i32* %89, i64* %90, i64 %91, i32 %92)
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %81, %71
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @lzma_next_end(%struct.TYPE_9__* %17, i32* %95)
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* @LZMA_STREAM_END, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  %101 = load i64*, i64** %14, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  %108 = sub i64 %102, %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = call i64 @lzma_block_header_encode(%struct.TYPE_10__* %111, i32* %114)
  store i64 %115, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* @LZMA_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %120, i64* %18, align 8
  br label %121

121:                                              ; preds = %119, %100
  br label %129

122:                                              ; preds = %94
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* @LZMA_OK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %127, i64* %18, align 8
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %121
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* @LZMA_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i64, i64* %16, align 8
  %135 = load i64*, i64** %14, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i64, i64* %18, align 8
  store i64 %137, i64* %8, align 8
  br label %138

138:                                              ; preds = %136, %45, %28
  %139 = load i64, i64* %8, align 8
  ret i64 %139
}

declare dso_local i64 @lzma2_bound(i64) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_block_header_size(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lzma_raw_encoder_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @lzma_next_end(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @lzma_block_header_encode(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
