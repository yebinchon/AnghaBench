; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_ExecEndNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_ExecEndNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecEndNode(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp eq %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %183

6:                                                ; preds = %1
  %7 = call i32 (...) @check_stack_depth()
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bms_free(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = call i32 @nodeTag(%struct.TYPE_4__* %20)
  switch i32 %21, label %178 [
    i32 139, label %22
    i32 141, label %26
    i32 144, label %30
    i32 165, label %34
    i32 146, label %38
    i32 140, label %42
    i32 164, label %46
    i32 161, label %50
    i32 137, label %54
    i32 138, label %58
    i32 155, label %62
    i32 156, label %66
    i32 150, label %70
    i32 151, label %74
    i32 162, label %78
    i32 163, label %82
    i32 132, label %86
    i32 134, label %90
    i32 157, label %94
    i32 133, label %98
    i32 130, label %102
    i32 160, label %106
    i32 143, label %110
    i32 128, label %114
    i32 158, label %118
    i32 159, label %122
    i32 142, label %126
    i32 145, label %130
    i32 153, label %134
    i32 147, label %138
    i32 135, label %142
    i32 154, label %146
    i32 166, label %150
    i32 129, label %154
    i32 131, label %158
    i32 152, label %162
    i32 136, label %166
    i32 148, label %170
    i32 149, label %174
  ]

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = bitcast %struct.TYPE_4__* %23 to i32*
  %25 = call i32 @ExecEndResult(i32* %24)
  br label %183

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = bitcast %struct.TYPE_4__* %27 to i32*
  %29 = call i32 @ExecEndProjectSet(i32* %28)
  br label %183

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = bitcast %struct.TYPE_4__* %31 to i32*
  %33 = call i32 @ExecEndModifyTable(i32* %32)
  br label %183

34:                                               ; preds = %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = bitcast %struct.TYPE_4__* %35 to i32*
  %37 = call i32 @ExecEndAppend(i32* %36)
  br label %183

38:                                               ; preds = %19
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = bitcast %struct.TYPE_4__* %39 to i32*
  %41 = call i32 @ExecEndMergeAppend(i32* %40)
  br label %183

42:                                               ; preds = %19
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = bitcast %struct.TYPE_4__* %43 to i32*
  %45 = call i32 @ExecEndRecursiveUnion(i32* %44)
  br label %183

46:                                               ; preds = %19
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = bitcast %struct.TYPE_4__* %47 to i32*
  %49 = call i32 @ExecEndBitmapAnd(i32* %48)
  br label %183

50:                                               ; preds = %19
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to i32*
  %53 = call i32 @ExecEndBitmapOr(i32* %52)
  br label %183

54:                                               ; preds = %19
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i32*
  %57 = call i32 @ExecEndSeqScan(i32* %56)
  br label %183

58:                                               ; preds = %19
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = bitcast %struct.TYPE_4__* %59 to i32*
  %61 = call i32 @ExecEndSampleScan(i32* %60)
  br label %183

62:                                               ; preds = %19
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = bitcast %struct.TYPE_4__* %63 to i32*
  %65 = call i32 @ExecEndGather(i32* %64)
  br label %183

66:                                               ; preds = %19
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = bitcast %struct.TYPE_4__* %67 to i32*
  %69 = call i32 @ExecEndGatherMerge(i32* %68)
  br label %183

70:                                               ; preds = %19
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = bitcast %struct.TYPE_4__* %71 to i32*
  %73 = call i32 @ExecEndIndexScan(i32* %72)
  br label %183

74:                                               ; preds = %19
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = bitcast %struct.TYPE_4__* %75 to i32*
  %77 = call i32 @ExecEndIndexOnlyScan(i32* %76)
  br label %183

78:                                               ; preds = %19
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = bitcast %struct.TYPE_4__* %79 to i32*
  %81 = call i32 @ExecEndBitmapIndexScan(i32* %80)
  br label %183

82:                                               ; preds = %19
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = bitcast %struct.TYPE_4__* %83 to i32*
  %85 = call i32 @ExecEndBitmapHeapScan(i32* %84)
  br label %183

86:                                               ; preds = %19
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = bitcast %struct.TYPE_4__* %87 to i32*
  %89 = call i32 @ExecEndTidScan(i32* %88)
  br label %183

90:                                               ; preds = %19
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = bitcast %struct.TYPE_4__* %91 to i32*
  %93 = call i32 @ExecEndSubqueryScan(i32* %92)
  br label %183

94:                                               ; preds = %19
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = bitcast %struct.TYPE_4__* %95 to i32*
  %97 = call i32 @ExecEndFunctionScan(i32* %96)
  br label %183

98:                                               ; preds = %19
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = bitcast %struct.TYPE_4__* %99 to i32*
  %101 = call i32 @ExecEndTableFuncScan(i32* %100)
  br label %183

102:                                              ; preds = %19
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = bitcast %struct.TYPE_4__* %103 to i32*
  %105 = call i32 @ExecEndValuesScan(i32* %104)
  br label %183

106:                                              ; preds = %19
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %108 = bitcast %struct.TYPE_4__* %107 to i32*
  %109 = call i32 @ExecEndCteScan(i32* %108)
  br label %183

110:                                              ; preds = %19
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = bitcast %struct.TYPE_4__* %111 to i32*
  %113 = call i32 @ExecEndNamedTuplestoreScan(i32* %112)
  br label %183

114:                                              ; preds = %19
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = bitcast %struct.TYPE_4__* %115 to i32*
  %117 = call i32 @ExecEndWorkTableScan(i32* %116)
  br label %183

118:                                              ; preds = %19
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = bitcast %struct.TYPE_4__* %119 to i32*
  %121 = call i32 @ExecEndForeignScan(i32* %120)
  br label %183

122:                                              ; preds = %19
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = bitcast %struct.TYPE_4__* %123 to i32*
  %125 = call i32 @ExecEndCustomScan(i32* %124)
  br label %183

126:                                              ; preds = %19
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = bitcast %struct.TYPE_4__* %127 to i32*
  %129 = call i32 @ExecEndNestLoop(i32* %128)
  br label %183

130:                                              ; preds = %19
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = bitcast %struct.TYPE_4__* %131 to i32*
  %133 = call i32 @ExecEndMergeJoin(i32* %132)
  br label %183

134:                                              ; preds = %19
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = bitcast %struct.TYPE_4__* %135 to i32*
  %137 = call i32 @ExecEndHashJoin(i32* %136)
  br label %183

138:                                              ; preds = %19
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = bitcast %struct.TYPE_4__* %139 to i32*
  %141 = call i32 @ExecEndMaterial(i32* %140)
  br label %183

142:                                              ; preds = %19
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = bitcast %struct.TYPE_4__* %143 to i32*
  %145 = call i32 @ExecEndSort(i32* %144)
  br label %183

146:                                              ; preds = %19
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = bitcast %struct.TYPE_4__* %147 to i32*
  %149 = call i32 @ExecEndGroup(i32* %148)
  br label %183

150:                                              ; preds = %19
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = bitcast %struct.TYPE_4__* %151 to i32*
  %153 = call i32 @ExecEndAgg(i32* %152)
  br label %183

154:                                              ; preds = %19
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %156 = bitcast %struct.TYPE_4__* %155 to i32*
  %157 = call i32 @ExecEndWindowAgg(i32* %156)
  br label %183

158:                                              ; preds = %19
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = bitcast %struct.TYPE_4__* %159 to i32*
  %161 = call i32 @ExecEndUnique(i32* %160)
  br label %183

162:                                              ; preds = %19
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = bitcast %struct.TYPE_4__* %163 to i32*
  %165 = call i32 @ExecEndHash(i32* %164)
  br label %183

166:                                              ; preds = %19
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = bitcast %struct.TYPE_4__* %167 to i32*
  %169 = call i32 @ExecEndSetOp(i32* %168)
  br label %183

170:                                              ; preds = %19
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %172 = bitcast %struct.TYPE_4__* %171 to i32*
  %173 = call i32 @ExecEndLockRows(i32* %172)
  br label %183

174:                                              ; preds = %19
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %176 = bitcast %struct.TYPE_4__* %175 to i32*
  %177 = call i32 @ExecEndLimit(i32* %176)
  br label %183

178:                                              ; preds = %19
  %179 = load i32, i32* @ERROR, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %181 = call i32 @nodeTag(%struct.TYPE_4__* %180)
  %182 = call i32 @elog(i32 %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %5, %178, %174, %170, %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @bms_free(i32*) #1

declare dso_local i32 @nodeTag(%struct.TYPE_4__*) #1

declare dso_local i32 @ExecEndResult(i32*) #1

declare dso_local i32 @ExecEndProjectSet(i32*) #1

declare dso_local i32 @ExecEndModifyTable(i32*) #1

declare dso_local i32 @ExecEndAppend(i32*) #1

declare dso_local i32 @ExecEndMergeAppend(i32*) #1

declare dso_local i32 @ExecEndRecursiveUnion(i32*) #1

declare dso_local i32 @ExecEndBitmapAnd(i32*) #1

declare dso_local i32 @ExecEndBitmapOr(i32*) #1

declare dso_local i32 @ExecEndSeqScan(i32*) #1

declare dso_local i32 @ExecEndSampleScan(i32*) #1

declare dso_local i32 @ExecEndGather(i32*) #1

declare dso_local i32 @ExecEndGatherMerge(i32*) #1

declare dso_local i32 @ExecEndIndexScan(i32*) #1

declare dso_local i32 @ExecEndIndexOnlyScan(i32*) #1

declare dso_local i32 @ExecEndBitmapIndexScan(i32*) #1

declare dso_local i32 @ExecEndBitmapHeapScan(i32*) #1

declare dso_local i32 @ExecEndTidScan(i32*) #1

declare dso_local i32 @ExecEndSubqueryScan(i32*) #1

declare dso_local i32 @ExecEndFunctionScan(i32*) #1

declare dso_local i32 @ExecEndTableFuncScan(i32*) #1

declare dso_local i32 @ExecEndValuesScan(i32*) #1

declare dso_local i32 @ExecEndCteScan(i32*) #1

declare dso_local i32 @ExecEndNamedTuplestoreScan(i32*) #1

declare dso_local i32 @ExecEndWorkTableScan(i32*) #1

declare dso_local i32 @ExecEndForeignScan(i32*) #1

declare dso_local i32 @ExecEndCustomScan(i32*) #1

declare dso_local i32 @ExecEndNestLoop(i32*) #1

declare dso_local i32 @ExecEndMergeJoin(i32*) #1

declare dso_local i32 @ExecEndHashJoin(i32*) #1

declare dso_local i32 @ExecEndMaterial(i32*) #1

declare dso_local i32 @ExecEndSort(i32*) #1

declare dso_local i32 @ExecEndGroup(i32*) #1

declare dso_local i32 @ExecEndAgg(i32*) #1

declare dso_local i32 @ExecEndWindowAgg(i32*) #1

declare dso_local i32 @ExecEndUnique(i32*) #1

declare dso_local i32 @ExecEndHash(i32*) #1

declare dso_local i32 @ExecEndSetOp(i32*) #1

declare dso_local i32 @ExecEndLockRows(i32*) #1

declare dso_local i32 @ExecEndLimit(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
