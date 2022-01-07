; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_block.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64 }
%struct.block_info = type { i32, i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__**, i64 }

@EBML_UINT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, %struct.block_info*)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(%struct.TYPE_7__* %0, i64 %1, %struct.block_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.block_info*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.block_info* %2, %struct.block_info** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.block_info*, %struct.block_info** %7, align 8
  %28 = call i32 @free_block(%struct.block_info* %27)
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @ebml_read_length(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 500000000
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @stream_tell(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %33, %3
  store i32 -1, i32* %4, align 4
  br label %172

45:                                               ; preds = %36
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @stream_tell(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @ebml_read_length(i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EBML_UINT_INVALID, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @stream_tell(i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %45
  br label %161

61:                                               ; preds = %55
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @stream_tell(i32* %62)
  %64 = add nsw i32 %63, 3
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %161

68:                                               ; preds = %61
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @stream_read_char(i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @stream_read_char(i32* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @stream_read_char(i32* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @stream_tell(i32* %79)
  %81 = load %struct.block_info*, %struct.block_info** %7, align 8
  %82 = getelementptr inbounds %struct.block_info, %struct.block_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %17, align 4
  %84 = ashr i32 %83, 1
  %85 = and i32 %84, 3
  store i32 %85, i32* %18, align 4
  %86 = load %struct.block_info*, %struct.block_info** %7, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @demux_mkv_read_block_lacing(%struct.block_info* %86, i32 %87, i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %161

93:                                               ; preds = %68
  %94 = load %struct.block_info*, %struct.block_info** %7, align 8
  %95 = getelementptr inbounds %struct.block_info, %struct.block_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 128
  %101 = load %struct.block_info*, %struct.block_info** %7, align 8
  %102 = getelementptr inbounds %struct.block_info, %struct.block_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.block_info*, %struct.block_info** %7, align 8
  %115 = getelementptr inbounds %struct.block_info, %struct.block_info* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  store i32 0, i32* %19, align 4
  br label %116

116:                                              ; preds = %145, %103
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %125, i64 %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %122
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 %139
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load %struct.block_info*, %struct.block_info** %7, align 8
  %143 = getelementptr inbounds %struct.block_info, %struct.block_info* %142, i32 0, i32 2
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %143, align 8
  br label %148

144:                                              ; preds = %122
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %116

148:                                              ; preds = %134, %116
  %149 = load %struct.block_info*, %struct.block_info** %7, align 8
  %150 = getelementptr inbounds %struct.block_info, %struct.block_info* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = icmp ne %struct.TYPE_5__* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store i32 0, i32* %14, align 4
  br label %161

154:                                              ; preds = %148
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @stream_tell(i32* %155)
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %161

160:                                              ; preds = %154
  store i32 1, i32* %14, align 4
  br label %161

161:                                              ; preds = %160, %159, %153, %92, %67, %60
  %162 = load i32, i32* %14, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.block_info*, %struct.block_info** %7, align 8
  %166 = call i32 @free_block(%struct.block_info* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @stream_seek(i32* %168, i32 %169)
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %167, %44
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @free_block(%struct.block_info*) #1

declare dso_local i32 @ebml_read_length(i32*) #1

declare dso_local i32 @stream_tell(i32*) #1

declare dso_local i32 @stream_read_char(i32*) #1

declare dso_local i64 @demux_mkv_read_block_lacing(%struct.block_info*, i32, i32*, i32) #1

declare dso_local i32 @stream_seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
