; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerSQLDropAddObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerSQLDropAddObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, i32 }

@currentEventTriggerState = common dso_local global %struct.TYPE_12__* null, align 8
@NamespaceRelationId = common dso_local global i64 0, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidAttrNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerSQLDropAddObject(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentEventTriggerState, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %215

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @getObjectClass(%struct.TYPE_11__* %19)
  %21 = call i32 @EventTriggerSupportsObjectClass(i32 %20)
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NamespaceRelationId, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @isAnyTempNamespace(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @isTempNamespace(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %215

41:                                               ; preds = %34, %28, %18
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentEventTriggerState, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = call %struct.TYPE_10__* @palloc0(i32 72)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %7, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = bitcast %struct.TYPE_11__* %48 to i8*
  %51 = bitcast %struct.TYPE_11__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 24, i1 false)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @is_objectclass_supported(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %177

63:                                               ; preds = %41
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @AccessShareLock, align 4
  %69 = call i32 @table_open(i64 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @get_object_attnum_oid(i64 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @get_catalog_object_by_oid(i32 %70, i32 %74, i32 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %173

82:                                               ; preds = %63
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @get_object_attnum_namespace(i64 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @InvalidAttrNumber, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %82
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @RelationGetDescr(i32 %94)
  %96 = call i32 @heap_getattr(i64 %92, i64 %93, i32 %95, i32* %13)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %131, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @DatumGetObjectId(i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i64 @isTempNamespace(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 8
  br label %130

110:                                              ; preds = %99
  %111 = load i32, i32* %14, align 4
  %112 = call i64 @isAnyTempNamespace(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = call i32 @pfree(%struct.TYPE_10__* %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @AccessShareLock, align 4
  %119 = call i32 @table_close(i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @MemoryContextSwitchTo(i32 %120)
  br label %215

122:                                              ; preds = %110
  %123 = load i32, i32* %14, align 4
  %124 = call i8* @get_namespace_name(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %105
  br label %131

131:                                              ; preds = %130, %91
  br label %132

132:                                              ; preds = %131, %82
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @get_object_namensp_unique(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %132
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %172

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @get_object_attnum_name(i64 %149)
  store i64 %150, i64* %11, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @InvalidAttrNumber, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %145
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @RelationGetDescr(i32 %157)
  %159 = call i32 @heap_getattr(i64 %155, i64 %156, i32 %158, i32* %13)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %12, align 4
  %164 = call i32* @DatumGetName(i32 %163)
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @NameStr(i32 %165)
  %167 = call i32 @pstrdup(i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 10
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %162, %154
  br label %171

171:                                              ; preds = %170, %145
  br label %172

172:                                              ; preds = %171, %139, %132
  br label %173

173:                                              ; preds = %172, %63
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @AccessShareLock, align 4
  %176 = call i32 @table_close(i32 %174, i32 %175)
  br label %193

177:                                              ; preds = %41
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NamespaceRelationId, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @isTempNamespace(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  store i32 1, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %183, %177
  br label %193

193:                                              ; preds = %192, %173
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 7
  %200 = call i32 @getObjectIdentityParts(%struct.TYPE_11__* %195, i32* %197, i32* %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 5
  %205 = call i32 @getObjectTypeDescription(%struct.TYPE_11__* %204)
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 6
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentEventTriggerState, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 4
  %212 = call i32 @slist_push_head(i32* %209, i32* %211)
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @MemoryContextSwitchTo(i32 %213)
  br label %215

215:                                              ; preds = %193, %114, %40, %17
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @EventTriggerSupportsObjectClass(i32) #1

declare dso_local i32 @getObjectClass(%struct.TYPE_11__*) #1

declare dso_local i64 @isAnyTempNamespace(i32) #1

declare dso_local i64 @isTempNamespace(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_10__* @palloc0(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_objectclass_supported(i64) #1

declare dso_local i32 @table_open(i64, i32) #1

declare dso_local i64 @get_catalog_object_by_oid(i32, i32, i32) #1

declare dso_local i32 @get_object_attnum_oid(i64) #1

declare dso_local i64 @get_object_attnum_namespace(i64) #1

declare dso_local i32 @heap_getattr(i64, i64, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_10__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i64 @get_object_namensp_unique(i64) #1

declare dso_local i64 @get_object_attnum_name(i64) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @DatumGetName(i32) #1

declare dso_local i32 @getObjectIdentityParts(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @getObjectTypeDescription(%struct.TYPE_11__*) #1

declare dso_local i32 @slist_push_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
