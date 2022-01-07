; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_scanGetItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_scanGetItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*)* @scanGetItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scanGetItem(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  br label %20

20:                                               ; preds = %152, %4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ItemPointerSetMin(i32* %21)
  store i32 1, i32* %12, align 4
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %148, %20
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  br i1 %33, label %34, label %151

34:                                               ; preds = %32
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %13, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @keyGetItem(i32* %42, i32 %45, %struct.TYPE_8__* %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %188

57:                                               ; preds = %34
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %151

66:                                               ; preds = %57
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = call i64 @ItemPointerIsLossyPage(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = call i64 @GinItemPointerGetBlockNumber(i32* %7)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = call i64 @GinItemPointerGetBlockNumber(i32* %74)
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = call i64 @GinItemPointerGetBlockNumber(i32* %79)
  %81 = load i32, i32* @InvalidOffsetNumber, align 4
  %82 = call i32 @ItemPointerSet(i32* %7, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  br label %99

84:                                               ; preds = %66
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = call i64 @GinItemPointerGetOffsetNumber(i32* %86)
  %88 = icmp sgt i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = call i64 @GinItemPointerGetBlockNumber(i32* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = call i64 @GinItemPointerGetOffsetNumber(i32* %95)
  %97 = call i32 @OffsetNumberPrev(i64 %96)
  %98 = call i32 @ItemPointerSet(i32* %7, i64 %93, i32 %97)
  br label %99

99:                                               ; preds = %84, %83
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  br label %147

107:                                              ; preds = %99
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = call i64 @ItemPointerIsLossyPage(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %8, align 8
  %114 = call i64 @ItemPointerIsLossyPage(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %112, %107
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i64 @GinItemPointerGetBlockNumber(i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = call i64 @GinItemPointerGetBlockNumber(i32* %120)
  %122 = icmp sge i64 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i64 @GinItemPointerGetBlockNumber(i32* %126)
  %128 = load i32*, i32** %8, align 8
  %129 = call i64 @GinItemPointerGetBlockNumber(i32* %128)
  %130 = icmp eq i64 %127, %129
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %12, align 4
  br label %146

132:                                              ; preds = %112
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32*, i32** %8, align 8
  %136 = call i64 @ginCompareItemPointers(i32* %134, i32* %135)
  %137 = icmp sge i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32*, i32** %8, align 8
  %143 = call i64 @ginCompareItemPointers(i32* %141, i32* %142)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %132, %116
  br label %147

147:                                              ; preds = %146, %102
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %11, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %11, align 8
  br label %23

151:                                              ; preds = %62, %32
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br i1 %155, label %20, label %156

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @ItemPointerIsMin(i32* %157)
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @Assert(i32 %161)
  %163 = load i32*, i32** %9, align 8
  store i32 0, i32* %163, align 4
  store i64 0, i64* %11, align 8
  br label %164

164:                                              ; preds = %184, %156
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %164
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %11, align 8
  %175 = add nsw i64 %173, %174
  %176 = inttoptr i64 %175 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %14, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32*, i32** %9, align 8
  store i32 1, i32* %182, align 4
  br label %187

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %11, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %164

187:                                              ; preds = %181, %164
  store i32 1, i32* %5, align 4
  br label %188

188:                                              ; preds = %187, %56
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @ItemPointerSetMin(i32*) #1

declare dso_local i32 @keyGetItem(i32*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @ItemPointerIsLossyPage(i32*) #1

declare dso_local i64 @GinItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GinItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @OffsetNumberPrev(i64) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32 @ItemPointerIsMin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
