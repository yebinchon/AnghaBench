; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_lzma_lzma_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_lzma_lzma_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@LZMA_OK = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@LZMA2_CHUNK_MAX = common dso_local global i64 0, align 8
@LOOP_INPUT_MAX = common dso_local global i64 0, align 8
@LZMA_RUN = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_lzma_encode(%struct.TYPE_16__* noalias %0, %struct.TYPE_15__* noalias %1, i32* noalias %2, i64* noalias %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %6
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = call i32 @encode_init(%struct.TYPE_16__* %22, %struct.TYPE_15__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @LZMA_OK, align 4
  store i32 %27, i32* %7, align 4
  br label %157

28:                                               ; preds = %21, %6
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = call i64 @mf_position(%struct.TYPE_15__* %29)
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %28, %109
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32*, i32** %10, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @rc_encode(i32* %33, i32* %34, i64* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @UINT32_MAX, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @LZMA_OK, align 4
  store i32 %45, i32* %7, align 4
  br label %157

46:                                               ; preds = %31
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @UINT32_MAX, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load i64, i64* %13, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = load i64*, i64** %11, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = call i64 @rc_pending(i32* %64)
  %66 = add i64 %62, %65
  %67 = load i64, i64* @LZMA2_CHUNK_MAX, align 8
  %68 = load i64, i64* @LOOP_INPUT_MAX, align 8
  %69 = sub nsw i64 %67, %68
  %70 = icmp uge i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60, %50
  br label %119

72:                                               ; preds = %60, %46
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LZMA_RUN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @LZMA_OK, align 4
  store i32 %87, i32* %7, align 4
  br label %157

88:                                               ; preds = %80
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %119

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = call i32 @lzma_lzma_optimum_fast(%struct.TYPE_16__* %101, %struct.TYPE_15__* %102, i64* %16, i64* %15)
  br label %109

104:                                              ; preds = %95
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @lzma_lzma_optimum_normal(%struct.TYPE_16__* %105, %struct.TYPE_15__* %106, i64* %16, i64* %15, i64 %107)
  br label %109

109:                                              ; preds = %104, %100
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @encode_symbol(%struct.TYPE_16__* %110, %struct.TYPE_15__* %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %14, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %14, align 8
  br label %31

119:                                              ; preds = %93, %71
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @UINT32_MAX, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @encode_eopm(%struct.TYPE_16__* %131, i64 %132)
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = call i32 @rc_flush(i32* %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32*, i32** %10, align 8
  %141 = load i64*, i64** %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i64 @rc_encode(i32* %139, i32* %140, i64* %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %134
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @UINT32_MAX, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* @LZMA_OK, align 4
  store i32 %151, i32* %7, align 4
  br label %157

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %119
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %153, %145, %86, %39, %26
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @encode_init(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @mf_position(%struct.TYPE_15__*) #1

declare dso_local i64 @rc_encode(i32*, i32*, i64*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rc_pending(i32*) #1

declare dso_local i32 @lzma_lzma_optimum_fast(%struct.TYPE_16__*, %struct.TYPE_15__*, i64*, i64*) #1

declare dso_local i32 @lzma_lzma_optimum_normal(%struct.TYPE_16__*, %struct.TYPE_15__*, i64*, i64*, i64) #1

declare dso_local i32 @encode_symbol(%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i64, i64) #1

declare dso_local i32 @encode_eopm(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @rc_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
