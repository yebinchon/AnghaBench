; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_RemoveUserMapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_RemoveUserMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@ROLESPEC_PUBLIC = common dso_local global i64 0, align 8
@ACL_ID_PUBLIC = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"role \22%s\22 does not exist, skipping\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"server \22%s\22 does not exist\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"server \22%s\22 does not exist, skipping\00", align 1
@USERMAPPINGUSERSERVER = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_oid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"user mapping for \22%s\22 does not exist for server \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"user mapping for \22%s\22 does not exist for server \22%s\22, skipping\00", align 1
@UserMappingRelationId = common dso_local global i32 0, align 4
@DROP_CASCADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RemoveUserMapping(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ROLESPEC_PUBLIC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ACL_ID_PUBLIC, align 4
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_rolespec_oid(i64 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @OidIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @NOTICE, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @InvalidOid, align 4
  store i32 %37, i32* %2, align 4
  br label %124

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_10__* @GetForeignServerByName(i32 %42, i32 1)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %51, %46
  %61 = load i32, i32* @NOTICE, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = call i32 @ereport(i32 %61, i32 %65)
  %67 = load i32, i32* @InvalidOid, align 4
  store i32 %67, i32* %2, align 4
  br label %124

68:                                               ; preds = %39
  %69 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %70 = load i32, i32* @Anum_pg_user_mapping_oid, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ObjectIdGetDatum(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ObjectIdGetDatum(i32 %75)
  %77 = call i32 @GetSysCacheOid2(i32 %69, i32 %70, i32 %72, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @OidIsValid(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %68
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @MappingUserName(i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94)
  %96 = call i32 @ereport(i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %86, %81
  %98 = load i32, i32* @NOTICE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @MappingUserName(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %103)
  %105 = call i32 @ereport(i32 %98, i32 %104)
  %106 = load i32, i32* @InvalidOid, align 4
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %68
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @user_mapping_ddl_aclcheck(i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* @UserMappingRelationId, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* @DROP_CASCADE, align 4
  %122 = call i32 @performDeletion(%struct.TYPE_9__* %4, i32 %121, i32 0)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %107, %97, %60, %31
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @get_rolespec_oid(i64, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @GetForeignServerByName(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @MappingUserName(i32) #1

declare dso_local i32 @user_mapping_ddl_aclcheck(i32, i32, i32) #1

declare dso_local i32 @performDeletion(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
