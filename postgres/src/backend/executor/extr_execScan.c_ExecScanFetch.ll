; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execScan.c_ExecScanFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execScan.c_ExecScanFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, i32**, i32** }
%struct.TYPE_18__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32* (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*, i32*)*)* @ExecScanFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExecScanFetch(%struct.TYPE_17__* %0, i32* (%struct.TYPE_17__*)* %1, i32 (%struct.TYPE_17__*, i32*)* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32* (%struct.TYPE_17__*)*, align 8
  %7 = alloca i32 (%struct.TYPE_17__*, i32*)*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* (%struct.TYPE_17__*)* %1, i32* (%struct.TYPE_17__*)** %6, align 8
  store i32 (%struct.TYPE_17__*, i32*)* %2, i32 (%struct.TYPE_17__*, i32*)** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %8, align 8
  %19 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %166

24:                                               ; preds = %3
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %9, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_18__*
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 %41(%struct.TYPE_17__* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @ExecClearTuple(i32* %47)
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %4, align 8
  br label %170

51:                                               ; preds = %24
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32* @ExecClearTuple(i32* %65)
  store i32* %66, i32** %4, align 8
  br label %170

67:                                               ; preds = %51
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %119

77:                                               ; preds = %67
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %13, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = call i64 @TupIsNull(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %77
  store i32* null, i32** %4, align 8
  br label %170

108:                                              ; preds = %77
  %109 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %7, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 %109(%struct.TYPE_17__* %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32*, i32** %13, align 8
  %116 = call i32* @ExecClearTuple(i32* %115)
  store i32* %116, i32** %4, align 8
  br label %170

117:                                              ; preds = %108
  %118 = load i32*, i32** %13, align 8
  store i32* %118, i32** %4, align 8
  br label %170

119:                                              ; preds = %67
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %122, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %162

129:                                              ; preds = %119
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %14, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @EvalPlanQualFetchRowMark(%struct.TYPE_20__* %140, i32 %141, i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %129
  store i32* null, i32** %4, align 8
  br label %170

146:                                              ; preds = %129
  %147 = load i32*, i32** %14, align 8
  %148 = call i64 @TupIsNull(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32* null, i32** %4, align 8
  br label %170

151:                                              ; preds = %146
  %152 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %7, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 %152(%struct.TYPE_17__* %153, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %151
  %158 = load i32*, i32** %14, align 8
  %159 = call i32* @ExecClearTuple(i32* %158)
  store i32* %159, i32** %4, align 8
  br label %170

160:                                              ; preds = %151
  %161 = load i32*, i32** %14, align 8
  store i32* %161, i32** %4, align 8
  br label %170

162:                                              ; preds = %119
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %3
  %167 = load i32* (%struct.TYPE_17__*)*, i32* (%struct.TYPE_17__*)** %6, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = call i32* %167(%struct.TYPE_17__* %168)
  store i32* %169, i32** %4, align 8
  br label %170

170:                                              ; preds = %166, %160, %157, %150, %145, %117, %114, %107, %61, %49
  %171 = load i32*, i32** %4, align 8
  ret i32* %171
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32* @ExecClearTuple(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32 @EvalPlanQualFetchRowMark(%struct.TYPE_20__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
