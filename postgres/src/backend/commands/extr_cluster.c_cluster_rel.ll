; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_cluster_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_cluster_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }

@CLUOPT_VERBOSE = common dso_local global i32 0, align 4
@CLUOPT_RECHECK = common dso_local global i32 0, align 4
@PROGRESS_COMMAND_CLUSTER = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_COMMAND = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_COMMAND_CLUSTER = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_COMMAND_VACUUM_FULL = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot cluster a shared catalog\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot cluster temporary tables of other sessions\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot vacuum temporary tables of other sessions\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CLUSTER\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VACUUM\00", align 1
@RELKIND_MATVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cluster_rel(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CLUOPT_VERBOSE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CLUOPT_RECHECK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %23 = load i32, i32* @PROGRESS_COMMAND_CLUSTER, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pgstat_progress_start_command(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @OidIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @PROGRESS_CLUSTER_COMMAND, align 4
  %31 = load i32, i32* @PROGRESS_CLUSTER_COMMAND_CLUSTER, align 4
  %32 = call i32 @pgstat_progress_update_param(i32 %30, i32 %31)
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @PROGRESS_CLUSTER_COMMAND, align 4
  %35 = load i32, i32* @PROGRESS_CLUSTER_COMMAND_VACUUM_FULL, align 4
  %36 = call i32 @pgstat_progress_update_param(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AccessExclusiveLock, align 4
  %40 = call %struct.TYPE_13__* @try_relation_open(i32 %38, i32 %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %7, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 (...) @pgstat_progress_end_command()
  br label %194

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (...) @GetUserId()
  %51 = call i32 @pg_class_ownercheck(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = load i32, i32* @AccessExclusiveLock, align 4
  %56 = call i32 @relation_close(%struct.TYPE_13__* %54, i32 %55)
  %57 = call i32 (...) @pgstat_progress_end_command()
  br label %194

58:                                               ; preds = %48
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_13__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = load i32, i32* @AccessExclusiveLock, align 4
  %65 = call i32 @relation_close(%struct.TYPE_13__* %63, i32 %64)
  %66 = call i32 (...) @pgstat_progress_end_command()
  br label %194

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @OidIsValid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = load i32, i32* @RELOID, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ObjectIdGetDatum(i32 %73)
  %75 = call i32 @SearchSysCacheExists1(i32 %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = load i32, i32* @AccessExclusiveLock, align 4
  %80 = call i32 @relation_close(%struct.TYPE_13__* %78, i32 %79)
  %81 = call i32 (...) @pgstat_progress_end_command()
  br label %194

82:                                               ; preds = %71
  %83 = load i32, i32* @INDEXRELID, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ObjectIdGetDatum(i32 %84)
  %86 = call i32 @SearchSysCache1(i32 %83, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @HeapTupleIsValid(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = load i32, i32* @AccessExclusiveLock, align 4
  %93 = call i32 @relation_close(%struct.TYPE_13__* %91, i32 %92)
  %94 = call i32 (...) @pgstat_progress_end_command()
  br label %194

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @GETSTRUCT(i32 %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ReleaseSysCache(i32 %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = load i32, i32* @AccessExclusiveLock, align 4
  %108 = call i32 @relation_close(%struct.TYPE_13__* %106, i32 %107)
  %109 = call i32 (...) @pgstat_progress_end_command()
  br label %194

110:                                              ; preds = %95
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ReleaseSysCache(i32 %111)
  br label %113

113:                                              ; preds = %110, %67
  br label %114

114:                                              ; preds = %113, %45
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @OidIsValid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @ERROR, align 4
  %127 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %128 = call i32 @errcode(i32 %127)
  %129 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %130 = call i32 @ereport(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %118, %114
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_13__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @OidIsValid(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* @ERROR, align 4
  %141 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %142 = call i32 @errcode(i32 %141)
  %143 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %144 = call i32 @ereport(i32 %140, i32 %143)
  br label %151

145:                                              ; preds = %135
  %146 = load i32, i32* @ERROR, align 4
  %147 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %148 = call i32 @errcode(i32 %147)
  %149 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %150 = call i32 @ereport(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %131
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @OidIsValid(i32 %154)
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %159 = call i32 @CheckTableNotInUse(%struct.TYPE_13__* %153, i8* %158)
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @OidIsValid(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %152
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @AccessExclusiveLock, align 4
  %168 = call i32 @check_index_is_clusterable(%struct.TYPE_13__* %164, i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %152
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @RELKIND_MATVIEW, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %169
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = call i32 @RelationIsPopulated(%struct.TYPE_13__* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = load i32, i32* @AccessExclusiveLock, align 4
  %184 = call i32 @relation_close(%struct.TYPE_13__* %182, i32 %183)
  %185 = call i32 (...) @pgstat_progress_end_command()
  br label %194

186:                                              ; preds = %177, %169
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = call i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_13__* %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @rebuild_relation(%struct.TYPE_13__* %189, i32 %190, i32 %191)
  %193 = call i32 (...) @pgstat_progress_end_command()
  br label %194

194:                                              ; preds = %186, %181, %103, %90, %77, %62, %53, %43
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pgstat_progress_start_command(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local %struct.TYPE_13__* @try_relation_open(i32, i32) #1

declare dso_local i32 @pgstat_progress_end_command(...) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @relation_close(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_13__*) #1

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @CheckTableNotInUse(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @check_index_is_clusterable(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @RelationIsPopulated(%struct.TYPE_13__*) #1

declare dso_local i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_13__*) #1

declare dso_local i32 @rebuild_relation(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
