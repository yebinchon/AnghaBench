; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_ExecHashSubPlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_ExecHashSubPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i64, i32*, i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"hashed subplan with direct correlation not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @ExecHashSubPlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecHashSubPlan(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 10
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NIL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NIL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %3
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @buildSubPlanHash(%struct.TYPE_7__* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @BoolGetDatum(i32 0)
  store i32 %57, i32* %4, align 4
  br label %179

58:                                               ; preds = %51, %45
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32* %59, i32** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = call i32* @ExecProject(%struct.TYPE_10__* %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @slotNoNulls(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %58
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @FindTupleHashEntry(i32* %79, i32* %80, i32 %83, i32 %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @ExecClearTuple(i32* %90)
  %92 = call i32 @BoolGetDatum(i32 1)
  store i32 %92, i32* %4, align 4
  br label %179

93:                                               ; preds = %76, %71
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @findPartialMatch(i32* %101, i32* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @ExecClearTuple(i32* %109)
  %111 = load i32*, i32** %7, align 8
  store i32 1, i32* %111, align 4
  %112 = call i32 @BoolGetDatum(i32 0)
  store i32 %112, i32* %4, align 4
  br label %179

113:                                              ; preds = %98, %93
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @ExecClearTuple(i32* %114)
  %116 = call i32 @BoolGetDatum(i32 0)
  store i32 %116, i32* %4, align 4
  br label %179

117:                                              ; preds = %58
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @ExecClearTuple(i32* %123)
  %125 = call i32 @BoolGetDatum(i32 0)
  store i32 %125, i32* %4, align 4
  br label %179

126:                                              ; preds = %117
  %127 = load i32*, i32** %10, align 8
  %128 = call i64 @slotAllNulls(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @ExecClearTuple(i32* %131)
  %133 = load i32*, i32** %7, align 8
  store i32 1, i32* %133, align 4
  %134 = call i32 @BoolGetDatum(i32 0)
  store i32 %134, i32* %4, align 4
  br label %179

135:                                              ; preds = %126
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @findPartialMatch(i32* %143, i32* %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @ExecClearTuple(i32* %151)
  %153 = load i32*, i32** %7, align 8
  store i32 1, i32* %153, align 4
  %154 = call i32 @BoolGetDatum(i32 0)
  store i32 %154, i32* %4, align 4
  br label %179

155:                                              ; preds = %140, %135
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @findPartialMatch(i32* %163, i32* %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @ExecClearTuple(i32* %171)
  %173 = load i32*, i32** %7, align 8
  store i32 1, i32* %173, align 4
  %174 = call i32 @BoolGetDatum(i32 0)
  store i32 %174, i32* %4, align 4
  br label %179

175:                                              ; preds = %160, %155
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @ExecClearTuple(i32* %176)
  %178 = call i32 @BoolGetDatum(i32 0)
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %175, %170, %150, %130, %122, %113, %108, %89, %56
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @buildSubPlanHash(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32* @ExecProject(%struct.TYPE_10__*) #1

declare dso_local i64 @slotNoNulls(i32*) #1

declare dso_local i32* @FindTupleHashEntry(i32*, i32*, i32, i32) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i64 @findPartialMatch(i32*, i32*, i32) #1

declare dso_local i64 @slotAllNulls(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
