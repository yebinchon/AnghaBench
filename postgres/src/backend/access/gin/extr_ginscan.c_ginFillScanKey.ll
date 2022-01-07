; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginscan.c_ginFillScanKey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginscan.c_ginFillScanKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i64, i64, i32, i32, i32**, i32*, i64*, i64, i32* }

@GIN_SEARCH_MODE_DEFAULT = common dso_local global i32 0, align 4
@GIN_CAT_EMPTY_ITEM = common dso_local global i32 0, align 4
@GIN_CAT_EMPTY_QUERY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected searchMode: %d\00", align 1
@InvalidStrategy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32, i64, i32, i64*, i32*, i32*, i32**)* @ginFillScanKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginFillScanKey(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i64* %6, i32* %7, i32* %8, i32** %9) #0 {
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i64* %6, i64** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32** %9, i32*** %20, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %36
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %21, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %22, align 8
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @GIN_SEARCH_MODE_DEFAULT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %10
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %44, %10
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %23, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i64 @palloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 7
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i64 @palloc0(i32 %65)
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 18
  store i32* %67, i32** %69, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 17
  store i64 %70, i64* %72, align 8
  %73 = load i64*, i64** %17, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 16
  store i64* %73, i64** %75, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 15
  store i32* %76, i32** %78, align 8
  %79 = load i32**, i32*** %20, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 14
  store i32** %79, i32*** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 12
  %93 = call i32 @ItemPointerSetMin(i32* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  store i32 0, i32* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 6
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 11
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 9
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 8
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %110 = call i32 @ginInitConsistentFunction(%struct.TYPE_8__* %108, %struct.TYPE_10__* %109)
  store i32 0, i32* %24, align 4
  br label %111

111:                                              ; preds = %192, %47
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %195

115:                                              ; preds = %111
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %23, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %162

119:                                              ; preds = %115
  %120 = load i64*, i64** %17, align 8
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %25, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %26, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %119
  %140 = load i32*, i32** %19, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* %24, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  br label %149

148:                                              ; preds = %139, %119
  br label %149

149:                                              ; preds = %148, %142
  %150 = phi i32 [ %147, %142 ], [ 0, %148 ]
  store i32 %150, i32* %27, align 4
  %151 = load i32**, i32*** %20, align 8
  %152 = icmp ne i32** %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32**, i32*** %20, align 8
  %155 = load i32, i32* %24, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  br label %160

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %153
  %161 = phi i32* [ %158, %153 ], [ null, %159 ]
  store i32* %161, i32** %28, align 8
  br label %176

162:                                              ; preds = %115
  store i64 0, i64* %25, align 8
  %163 = load i32, i32* %14, align 4
  switch i32 %163, label %170 [
    i32 128, label %164
    i32 130, label %166
    i32 129, label %168
  ]

164:                                              ; preds = %162
  %165 = load i32, i32* @GIN_CAT_EMPTY_ITEM, align 4
  store i32 %165, i32* %26, align 4
  br label %174

166:                                              ; preds = %162
  %167 = load i32, i32* @GIN_CAT_EMPTY_QUERY, align 4
  store i32 %167, i32* %26, align 4
  br label %174

168:                                              ; preds = %162
  %169 = load i32, i32* @GIN_CAT_EMPTY_QUERY, align 4
  store i32 %169, i32* %26, align 4
  br label %174

170:                                              ; preds = %162
  %171 = load i32, i32* @ERROR, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @elog(i32 %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172)
  store i32 0, i32* %26, align 4
  br label %174

174:                                              ; preds = %170, %168, %166, %164
  store i32 0, i32* %27, align 4
  store i32* null, i32** %28, align 8
  %175 = load i32, i32* @InvalidStrategy, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %174, %160
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i64, i64* %25, align 8
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32*, i32** %28, align 8
  %185 = call i32 @ginFillScanEntry(%struct.TYPE_9__* %177, i32 %178, i32 %179, i32 %180, i64 %181, i32 %182, i32 %183, i32* %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %24, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  br label %192

192:                                              ; preds = %176
  %193 = load i32, i32* %24, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %24, align 4
  br label %111

195:                                              ; preds = %111
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @ItemPointerSetMin(i32*) #1

declare dso_local i32 @ginInitConsistentFunction(%struct.TYPE_8__*, %struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ginFillScanEntry(%struct.TYPE_9__*, i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
