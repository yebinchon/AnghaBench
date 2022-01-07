; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isDistinctIndex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isDistinctIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }

@BMS = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@WO_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32)* @isDistinctIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDistinctIndex(i32* %0, i32* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_16__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BMS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %6
  store i32 0, i32* %7, align 4
  br label %151

37:                                               ; preds = %30
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BMS, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @testcase(i32 %44)
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %112, %37
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_17__* @sqlite3ExprSkipCollate(i32 %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %17, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_COLUMN, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %151

68:                                               ; preds = %52
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WO_EQ, align 4
  %77 = call %struct.TYPE_14__* @findTerm(i32* %69, i32 %72, i32 %75, i32 -1, i32 %76, i32 0)
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %16, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %68
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %18, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @sqlite3BinaryCompareCollSeq(i32* %84, i32 %87, i32 %90)
  store i32* %91, i32** %19, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %94 = call i32* @sqlite3ExprCollSeq(i32* %92, %struct.TYPE_17__* %93)
  store i32* %94, i32** %20, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = icmp eq i32* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %112

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %151

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = shl i32 1, %108
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %107, %98
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %46

115:                                              ; preds = %46
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %144, %115
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br label %126

126:                                              ; preds = %120, %117
  %127 = phi i1 [ false, %117 ], [ %125, %120 ]
  br i1 %127, label %128, label %147

128:                                              ; preds = %126
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @findIndexCol(i32* %129, %struct.TYPE_16__* %130, i32 %131, %struct.TYPE_15__* %132, i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %147

138:                                              ; preds = %128
  %139 = load i32, i32* %21, align 4
  %140 = shl i32 1, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %117

147:                                              ; preds = %137, %126
  %148 = load i32, i32* %14, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %147, %106, %67, %36
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_17__* @sqlite3ExprSkipCollate(i32) #1

declare dso_local %struct.TYPE_14__* @findTerm(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3BinaryCompareCollSeq(i32*, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @findIndexCol(i32*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
