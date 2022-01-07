; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_decoder.c_decode_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_decoder.c_decode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)*, i32 }

@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i64*, i64, i32*, i64*, i64)* @decode_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_buffer(%struct.TYPE_7__* %0, i32* noalias %1, i64* noalias %2, i64 %3, i32* noalias %4, i64* noalias %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  br label %19

19:                                               ; preds = %7, %145
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %42, %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  %55 = call i64 @my_min(i64 %45, i64 %54)
  %56 = add i64 %41, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)*, i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %10, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 %63(i32 %67, %struct.TYPE_8__* %69, i32* %70, i64* %71, i64 %72)
  store i64 %73, i64* %17, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %18, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64*, i64** %14, align 8
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %81, %83
  %85 = icmp ule i64 %80, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %95, %96
  %98 = load i64, i64* %18, align 8
  %99 = call i32 @memcpy(i32* %91, i64 %97, i64 %98)
  %100 = load i64, i64* %18, align 8
  %101 = load i64*, i64** %14, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %100
  store i64 %103, i64* %101, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %33
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = call i32 @lz_decoder_reset(%struct.TYPE_7__* %110)
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* @LZMA_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load i64*, i64** %14, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %15, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115, %109
  %121 = load i64, i64* %17, align 8
  store i64 %121, i64* %8, align 8
  br label %146

122:                                              ; preds = %115
  br label %145

123:                                              ; preds = %33
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* @LZMA_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %142, label %127

127:                                              ; preds = %123
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %136, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %132, %127, %123
  %143 = load i64, i64* %17, align 8
  store i64 %143, i64* %8, align 8
  br label %146

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %122
  br label %19

146:                                              ; preds = %142, %120
  %147 = load i64, i64* %8, align 8
  ret i64 %147
}

declare dso_local i64 @my_min(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @lz_decoder_reset(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
