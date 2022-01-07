; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__jpeg_decode_block.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__jpeg_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@FAST_BITS = common dso_local global i32 0, align 4
@stbi__jpeg_dezigzag = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i16*, i32*, i32*, i32*, i32, i32*)* @stbi__jpeg_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__jpeg_decode_block(%struct.TYPE_8__* %0, i16* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i16* %1, i16** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i32 @stbi__grow_buffer_unsafe(%struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %29, %7
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__* %33, i32* %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %8, align 4
  br label %193

40:                                               ; preds = %32
  %41 = load i16*, i16** %10, align 8
  %42 = call i32 @memset(i16* %41, i32 0, i32 128)
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = load i32, i32* %19, align 4
  %48 = call i32 @stbi__extend_receive(%struct.TYPE_8__* %46, i32 %47)
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = trunc i32 %74 to i16
  %76 = load i16*, i16** %10, align 8
  %77 = getelementptr inbounds i16, i16* %76, i64 0
  store i16 %75, i16* %77, align 2
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %189, %50
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = call i32 @stbi__grow_buffer_unsafe(%struct.TYPE_8__* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FAST_BITS, align 4
  %91 = sub nsw i32 32, %90
  %92 = ashr i32 %89, %91
  %93 = load i32, i32* @FAST_BITS, align 4
  %94 = shl i32 1, %93
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %92, %95
  store i32 %96, i32* %21, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %141

104:                                              ; preds = %86
  %105 = load i32, i32* %22, align 4
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 15
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %22, align 4
  %111 = and i32 %110, 15
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32*, i32** @stbi__jpeg_dezigzag, align 8
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %22, align 4
  %129 = ashr i32 %128, 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %20, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %129, %134
  %136 = trunc i32 %135 to i16
  %137 = load i16*, i16** %10, align 8
  %138 = load i32, i32* %20, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %137, i64 %139
  store i16 %136, i16* %140, align 2
  br label %188

141:                                              ; preds = %86
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = call i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__* %142, i32* %143)
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %148, i32* %8, align 4
  br label %193

149:                                              ; preds = %141
  %150 = load i32, i32* %24, align 4
  %151 = and i32 %150, 15
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %24, align 4
  %153 = ashr i32 %152, 4
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %23, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load i32, i32* %24, align 4
  %158 = icmp ne i32 %157, 240
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %192

160:                                              ; preds = %156
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 16
  store i32 %162, i32* %18, align 4
  br label %187

163:                                              ; preds = %149
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %18, align 4
  %167 = load i32*, i32** @stbi__jpeg_dezigzag, align 8
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %20, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = load i32, i32* %23, align 4
  %175 = call i32 @stbi__extend_receive(%struct.TYPE_8__* %173, i32 %174)
  %176 = load i32*, i32** %15, align 8
  %177 = load i32, i32* %20, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  %182 = trunc i32 %181 to i16
  %183 = load i16*, i16** %10, align 8
  %184 = load i32, i32* %20, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i16, i16* %183, i64 %185
  store i16 %182, i16* %186, align 2
  br label %187

187:                                              ; preds = %163, %160
  br label %188

188:                                              ; preds = %187, %104
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %190, 64
  br i1 %191, label %78, label %192

192:                                              ; preds = %189, %159
  store i32 1, i32* %8, align 4
  br label %193

193:                                              ; preds = %192, %147, %38
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local i32 @stbi__grow_buffer_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @stbi__extend_receive(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
