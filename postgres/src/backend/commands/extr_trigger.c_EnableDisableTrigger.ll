; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_EnableDisableTrigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_EnableDisableTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i8, i32, i32, i32, i64 }
%struct.TYPE_26__ = type { i32, i32* }

@TriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@TriggerRelidNameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system trigger\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"trigger \22%s\22 for table \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnableDisableTrigger(%struct.TYPE_25__* %0, i8* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* @TriggerRelationId, align 4
  %25 = load i32, i32* @RowExclusiveLock, align 4
  %26 = call %struct.TYPE_25__* @table_open(i32 %24, i32 %25)
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %11, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %28 = load i32, i32* @Anum_pg_trigger_tgrelid, align 4
  %29 = load i32, i32* @BTEqualStrategyNumber, align 4
  %30 = load i32, i32* @F_OIDEQ, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = call i32 @RelationGetRelid(%struct.TYPE_25__* %31)
  %33 = call i32 @ObjectIdGetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %27, i32 %28, i32 %29, i32 %30, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %5
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %39 = load i32, i32* @Anum_pg_trigger_tgname, align 4
  %40 = load i32, i32* @BTEqualStrategyNumber, align 4
  %41 = load i32, i32* @F_NAMEEQ, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @CStringGetDatum(i8* %42)
  %44 = call i32 @ScanKeyInit(i32* %38, i32 %39, i32 %40, i32 %41, i32 %43)
  store i32 2, i32* %12, align 4
  br label %46

45:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %48 = load i32, i32* @TriggerRelidNameIndexId, align 4
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %51 = call i32 @systable_beginscan(%struct.TYPE_25__* %47, i32 %48, i32 1, i32* null, i32 %49, i32* %50)
  store i32 %51, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %157, %69, %46
  %53 = load i32, i32* %14, align 4
  %54 = call %struct.TYPE_27__* @systable_getnext(i32 %53)
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %15, align 8
  %55 = call i64 @HeapTupleIsValid(%struct.TYPE_27__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %163

57:                                               ; preds = %52
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %59 = call i32 @GETSTRUCT(%struct.TYPE_27__* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %18, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %52

70:                                               ; preds = %66
  %71 = call i32 (...) @superuser()
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @NameStr(i32 %79)
  %81 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = call i32 @ereport(i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %73, %70
  br label %84

84:                                               ; preds = %83, %57
  store i32 1, i32* %16, align 4
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %157

92:                                               ; preds = %84
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %94 = call %struct.TYPE_27__* @heap_copytuple(%struct.TYPE_27__* %93)
  store %struct.TYPE_27__* %94, %struct.TYPE_27__** %19, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %96 = call i32 @GETSTRUCT(%struct.TYPE_27__* %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %20, align 8
  %99 = load i8, i8* %8, align 1
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  store i8 %99, i8* %101, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %106 = call i32 @CatalogTupleUpdate(%struct.TYPE_25__* %102, i32* %104, %struct.TYPE_27__* %105)
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %108 = call i32 @heap_freetuple(%struct.TYPE_27__* %107)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %92
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @TRIGGER_FOR_ROW(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %116
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = call %struct.TYPE_26__* @RelationGetPartitionDesc(%struct.TYPE_25__* %123)
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %125

125:                                              ; preds = %152, %122
  %126 = load i32, i32* %22, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call %struct.TYPE_25__* @relation_open(i32 %138, i32 %139)
  store %struct.TYPE_25__* %140, %struct.TYPE_25__** %23, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @NameStr(i32 %144)
  %146 = load i8, i8* %8, align 1
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  call void @EnableDisableTrigger(%struct.TYPE_25__* %141, i8* %145, i8 signext %146, i32 %147, i32 %148)
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %150 = load i32, i32* @NoLock, align 4
  %151 = call i32 @table_close(%struct.TYPE_25__* %149, i32 %150)
  br label %152

152:                                              ; preds = %131
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %125

155:                                              ; preds = %125
  br label %156

156:                                              ; preds = %155, %116, %92
  store i32 1, i32* %17, align 4
  br label %157

157:                                              ; preds = %156, %84
  %158 = load i32, i32* @TriggerRelationId, align 4
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @InvokeObjectPostAlterHook(i32 %158, i32 %161, i32 0)
  br label %52

163:                                              ; preds = %52
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @systable_endscan(i32 %164)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %167 = load i32, i32* @RowExclusiveLock, align 4
  %168 = call i32 @table_close(%struct.TYPE_25__* %166, i32 %167)
  %169 = load i8*, i8** %7, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %183

171:                                              ; preds = %163
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* @ERROR, align 4
  %176 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %177 = call i32 @errcode(i32 %176)
  %178 = load i8*, i8** %7, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = call i32 @RelationGetRelationName(%struct.TYPE_25__* %179)
  %181 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %178, i32 %180)
  %182 = call i32 @ereport(i32 %175, i32 %181)
  br label %183

183:                                              ; preds = %174, %171, %163
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %188 = call i32 @CacheInvalidateRelcache(%struct.TYPE_25__* %187)
  br label %189

189:                                              ; preds = %186, %183
  ret void
}

declare dso_local %struct.TYPE_25__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_25__*) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_25__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_27__*) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local %struct.TYPE_27__* @heap_copytuple(%struct.TYPE_27__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_25__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_27__*) #1

declare dso_local i64 @TRIGGER_FOR_ROW(i32) #1

declare dso_local %struct.TYPE_26__* @RelationGetPartitionDesc(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @relation_open(i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_25__*) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
