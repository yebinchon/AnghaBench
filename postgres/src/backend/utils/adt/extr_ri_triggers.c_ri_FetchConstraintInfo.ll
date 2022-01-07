; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_FetchConstraintInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_FetchConstraintInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"no pg_constraint entry for trigger \22%s\22 on table \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Remove this referential integrity trigger and its mates, then do ALTER TABLE ADD CONSTRAINT.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"wrong pg_constraint entry for trigger \22%s\22 on table \22%s\22\00", align 1
@FKCONSTR_MATCH_FULL = common dso_local global i64 0, align 8
@FKCONSTR_MATCH_PARTIAL = common dso_local global i64 0, align 8
@FKCONSTR_MATCH_SIMPLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"unrecognized confmatchtype: %d\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"MATCH PARTIAL not yet implemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i32, i32)* @ri_FetchConstraintInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ri_FetchConstraintInfo(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @OidIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @RelationGetRelationName(i32 %22)
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = call i32 @errhint(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %16, i32 %25)
  br label %27

27:                                               ; preds = %15, %3
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_7__* @ri_LoadConstraintInfo(i32 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @RelationGetRelid(i32 %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40, %32
  %48 = load i32, i32* @ERROR, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @RelationGetRelationName(i32 %53)
  %55 = call i32 (i32, i8*, i64, ...) @elog(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  br label %82

57:                                               ; preds = %27
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @RelationGetRelid(i32 %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %64, %57
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @RelationGetRelationName(i32 %78)
  %80 = call i32 (i32, i8*, i64, ...) @elog(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %77, i32 %79)
  br label %81

81:                                               ; preds = %72, %64
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FKCONSTR_MATCH_FULL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FKCONSTR_MATCH_PARTIAL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FKCONSTR_MATCH_SIMPLE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @ERROR, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, i64, ...) @elog(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %100, %94, %88, %82
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FKCONSTR_MATCH_PARTIAL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 @ereport(i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %119
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_7__* @ri_LoadConstraintInfo(i32) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
