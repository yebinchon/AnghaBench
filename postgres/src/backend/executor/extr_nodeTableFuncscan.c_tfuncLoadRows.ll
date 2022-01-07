; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeTableFuncscan.c_tfuncLoadRows.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeTableFuncscan.c_tfuncLoadRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_28__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32*, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_26__*, i32, i32, i32, i32*)*, i64 (%struct.TYPE_26__*)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"null is not allowed in column \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_20__*)* @tfuncLoadRows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfuncLoadRows(%struct.TYPE_26__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %5, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %6, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %7, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_27__*
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MemoryContextSwitchTo(i32 %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %170, %2
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load i64 (%struct.TYPE_26__*)*, i64 (%struct.TYPE_26__*)** %53, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = call i64 %54(%struct.TYPE_26__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %182

58:                                               ; preds = %51
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @list_head(i32 %61)
  store i32* %62, i32** %13, align 8
  %63 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = call i32 @ExecClearTuple(%struct.TYPE_24__* %67)
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %167, %58
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %170

73:                                               ; preds = %69
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call %struct.TYPE_29__* @TupleDescAttr(%struct.TYPE_25__* %74, i32 %75)
  store %struct.TYPE_29__* %76, %struct.TYPE_29__** %15, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = call i32 @Int32GetDatum(i32 %83)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 0, i32* %93, align 4
  br label %157

94:                                               ; preds = %73
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_26__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32, i32, i32*)** %96, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 %97(%struct.TYPE_26__* %98, i32 %99, i32 %102, i32 %105, i32* %16)
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %94
  %114 = load i32*, i32** %13, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  %118 = call i64 @lfirst(i32* %117)
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %17, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load i32*, i32** %17, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = call i32 @ExecEvalExpr(i32* %123, %struct.TYPE_20__* %124, i32* %16)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %116
  br label %131

131:                                              ; preds = %130, %113, %94
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @bms_is_member(i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load i32, i32* @ERROR, align 4
  %143 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %144 = call i32 @errcode(i32 %143)
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @NameStr(i32 %147)
  %149 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %148)
  %150 = call i32 @ereport(i32 %142, i32 %149)
  br label %151

151:                                              ; preds = %141, %134, %131
  %152 = load i32, i32* %16, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %80
  %158 = load i32*, i32** %13, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = call i32* @lnext(i32 %163, i32* %164)
  store i32* %165, i32** %13, align 8
  br label %166

166:                                              ; preds = %160, %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %69

170:                                              ; preds = %69
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @tuplestore_putvalues(i32 %173, %struct.TYPE_25__* %174, i32* %175, i32* %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @MemoryContextReset(i32 %180)
  br label %51

182:                                              ; preds = %51
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @MemoryContextSwitchTo(i32 %183)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @list_head(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_29__* @TupleDescAttr(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32 @ExecEvalExpr(i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @bms_is_member(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32 @tuplestore_putvalues(i32, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
