; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_FillDistancesPrices.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_FillDistancesPrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32**, i64, i32, i32** }

@kNumFullDistances = common dso_local global i32 0, align 4
@kStartPosModelIndex = common dso_local global i32 0, align 4
@kNumLenToPosStates = common dso_local global i32 0, align 4
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kEndPosModelIndex = common dso_local global i32 0, align 4
@kNumAlignBits = common dso_local global i32 0, align 4
@kNumBitPriceShiftBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @FillDistancesPrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillDistancesPrices(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %15 = load i32, i32* @kNumFullDistances, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load i32, i32* @kStartPosModelIndex, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %55, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @kNumFullDistances, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @GetPosSlot1(i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 1
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = or i32 2, %32
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @RcTree_ReverseGetPrice(i32 %43, i32 %44, i32 %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %18, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %24
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %20

58:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %173, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @kNumLenToPosStates, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %176

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %11, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %96, %63
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @kNumPosSlotBits, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @RcTree_GetPrice(i32* %85, i32 %86, i32 %87, i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %78

99:                                               ; preds = %78
  %100 = load i32, i32* @kEndPosModelIndex, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %121, %99
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @kNumAlignBits, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @kNumBitPriceShiftBits, align 4
  %114 = shl i32 %112, %113
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %146, %124
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @kStartPosModelIndex, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %132

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %169, %149
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @kNumFullDistances, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i64 @GetPosSlot1(i32 %156)
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %18, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %159, %163
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %150

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %59

176:                                              ; preds = %59
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %179)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetPosSlot1(i32) #2

declare dso_local i32 @RcTree_ReverseGetPrice(i32, i32, i32, i32) #2

declare dso_local i32 @RcTree_GetPrice(i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
