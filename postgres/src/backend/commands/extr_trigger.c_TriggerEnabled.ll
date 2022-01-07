; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_TriggerEnabled.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_TriggerEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, i64* }
%struct.TYPE_16__ = type { i32*, i32* }

@SessionReplicationRole = common dso_local global i64 0, align 8
@SESSION_REPLICATION_ROLE_REPLICA = common dso_local global i64 0, align 8
@TRIGGER_FIRES_ON_ORIGIN = common dso_local global i64 0, align 8
@TRIGGER_DISABLED = common dso_local global i64 0, align 8
@TRIGGER_FIRES_ON_REPLICA = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@PRS2_OLD_VARNO = common dso_local global i32 0, align 4
@INNER_VAR = common dso_local global i32 0, align 4
@PRS2_NEW_VARNO = common dso_local global i32 0, align 4
@OUTER_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*, i32*, i32*)* @TriggerEnabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TriggerEnabled(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i64, i64* @SessionReplicationRole, align 8
  %24 = load i64, i64* @SESSION_REPLICATION_ROLE_REPLICA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %7
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRIGGER_FIRES_ON_ORIGIN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRIGGER_DISABLED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  store i32 0, i32* %8, align 4
  br label %167

39:                                               ; preds = %32
  br label %54

40:                                               ; preds = %7
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TRIGGER_FIRES_ON_REPLICA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRIGGER_DISABLED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  store i32 0, i32* %8, align 4
  br label %167

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i32*, i32** %13, align 8
  %82 = call i64 @bms_is_member(i64 %80, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 1, i32* %17, align 4
  br label %89

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %64

89:                                               ; preds = %84, %64
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %167

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %59, %54
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %166

99:                                               ; preds = %94
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = icmp ne %struct.TYPE_17__* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = ptrtoint %struct.TYPE_14__* %104 to i64
  %111 = ptrtoint %struct.TYPE_14__* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 32
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %21, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32** %120, i32*** %18, align 8
  %121 = load i32**, i32*** %18, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %99
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @MemoryContextSwitchTo(i32 %127)
  store i32 %128, i32* %20, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32* @stringToNode(i32 %131)
  store i32* %132, i32** %22, align 8
  %133 = load i32*, i32** %22, align 8
  %134 = load i32, i32* @PRS2_OLD_VARNO, align 4
  %135 = load i32, i32* @INNER_VAR, align 4
  %136 = call i32 @ChangeVarNodes(i32* %133, i32 %134, i32 %135, i32 0)
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* @PRS2_NEW_VARNO, align 4
  %139 = load i32, i32* @OUTER_VAR, align 4
  %140 = call i32 @ChangeVarNodes(i32* %137, i32 %138, i32 %139, i32 0)
  %141 = load i32*, i32** %22, align 8
  %142 = call i64 @make_ands_implicit(i32* %141)
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %22, align 8
  %144 = load i32*, i32** %22, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %146 = call i32* @ExecPrepareQual(i32* %144, %struct.TYPE_17__* %145)
  %147 = load i32**, i32*** %18, align 8
  store i32* %146, i32** %147, align 8
  %148 = load i32, i32* %20, align 4
  %149 = call i32 @MemoryContextSwitchTo(i32 %148)
  br label %150

150:                                              ; preds = %124, %99
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %152 = call %struct.TYPE_16__* @GetPerTupleExprContext(%struct.TYPE_17__* %151)
  store %struct.TYPE_16__* %152, %struct.TYPE_16__** %19, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  store i32* %153, i32** %155, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i32* %156, i32** %158, align 8
  %159 = load i32**, i32*** %18, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %162 = call i32 @ExecQual(i32* %160, %struct.TYPE_16__* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  br label %167

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165, %94
  store i32 1, i32* %8, align 4
  br label %167

167:                                              ; preds = %166, %164, %92, %52, %38
  %168 = load i32, i32* %8, align 4
  ret i32 %168
}

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i64 @bms_is_member(i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @stringToNode(i32) #1

declare dso_local i32 @ChangeVarNodes(i32*, i32, i32, i32) #1

declare dso_local i64 @make_ands_implicit(i32*) #1

declare dso_local i32* @ExecPrepareQual(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @GetPerTupleExprContext(%struct.TYPE_17__*) #1

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
