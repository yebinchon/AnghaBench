; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_fetch_dxtn.c_fetch_2d_texel_rgba_dxt5.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_fetch_dxtn.c_fetch_2d_texel_rgba_dxt5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACOMP = common dso_local global i64 0, align 8
@CHAN_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_2d_texel_rgba_dxt5(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to i64*
  store i64* %20, i64** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 3
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 4
  %27 = mul nsw i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 4
  %30 = add nsw i32 %27, %29
  %31 = mul nsw i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %21, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 3
  %42 = mul nsw i32 %41, 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 3
  %45 = add nsw i32 %42, %44
  %46 = mul nsw i32 %45, 3
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sdiv i32 %48, 8
  %50 = add nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sdiv i32 %55, 8
  %57 = add nsw i32 3, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = and i32 %62, 7
  %64 = ashr i32 %61, %63
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %66, 7
  %68 = sub nsw i32 8, %67
  %69 = shl i32 %65, %68
  %70 = or i32 %64, %69
  %71 = and i32 %70, 7
  store i32 %71, i32* %18, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 3
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 3
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @dxt135_decode_imageblock(i32* %73, i32 %75, i32 %77, i32 2, i32* %78)
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %5
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @UBYTE_TO_CHAN(i32 %83)
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* @ACOMP, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  br label %150

88:                                               ; preds = %5
  %89 = load i32, i32* %18, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @UBYTE_TO_CHAN(i32 %92)
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* @ACOMP, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  br label %149

97:                                               ; preds = %88
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 8, %103
  %105 = mul nsw i32 %102, %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %18, align 4
  %108 = sub nsw i32 %107, 1
  %109 = mul nsw i32 %106, %108
  %110 = add nsw i32 %105, %109
  %111 = sdiv i32 %110, 7
  %112 = call i64 @UBYTE_TO_CHAN(i32 %111)
  %113 = load i64*, i64** %11, align 8
  %114 = load i64, i64* @ACOMP, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  br label %148

116:                                              ; preds = %97
  %117 = load i32, i32* %18, align 4
  %118 = icmp slt i32 %117, 6
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 6, %121
  %123 = mul nsw i32 %120, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %125, 1
  %127 = mul nsw i32 %124, %126
  %128 = add nsw i32 %123, %127
  %129 = sdiv i32 %128, 5
  %130 = call i64 @UBYTE_TO_CHAN(i32 %129)
  %131 = load i64*, i64** %11, align 8
  %132 = load i64, i64* @ACOMP, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  store i64 %130, i64* %133, align 8
  br label %147

134:                                              ; preds = %116
  %135 = load i32, i32* %18, align 4
  %136 = icmp eq i32 %135, 6
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* @ACOMP, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 0, i64* %140, align 8
  br label %146

141:                                              ; preds = %134
  %142 = load i64, i64* @CHAN_MAX, align 8
  %143 = load i64*, i64** %11, align 8
  %144 = load i64, i64* @ACOMP, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %137
  br label %147

147:                                              ; preds = %146, %119
  br label %148

148:                                              ; preds = %147, %101
  br label %149

149:                                              ; preds = %148, %91
  br label %150

150:                                              ; preds = %149, %82
  ret void
}

declare dso_local i32 @dxt135_decode_imageblock(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @UBYTE_TO_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
