; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_CheckMyDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_CheckMyDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@DATABASEOID = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for database %u\00", align 1
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"database \22%s\22 has disappeared from pg_database\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Database OID %u now seems to belong to \22%s\22.\00", align 1
@IsUnderPostmaster = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"database \22%s\22 is not currently accepting connections\00", align 1
@ACL_CONNECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"permission denied for database \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"User does not have CONNECT privilege.\00", align 1
@ERRCODE_TOO_MANY_CONNECTIONS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"too many connections for database \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"server_encoding\00", align 1
@PGC_INTERNAL = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@PGC_BACKEND = common dso_local global i32 0, align 4
@PGC_S_DYNAMIC_DEFAULT = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"database locale is incompatible with operating system\00", align 1
@.str.10 = private unnamed_addr constant [92 x i8] c"The database was initialized with LC_COLLATE \22%s\22,  which is not recognized by setlocale().\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"Recreate the database with another locale or install the missing locale.\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [90 x i8] c"The database was initialized with LC_CTYPE \22%s\22,  which is not recognized by setlocale().\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"lc_collate\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"lc_ctype\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @CheckMyDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckMyDatabase(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @DATABASEOID, align 4
  %12 = load i32, i32* @MyDatabaseId, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @MyDatabaseId, align 4
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @GETSTRUCT(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %8, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @NameStr(i32 %29)
  %31 = call i64 @strcmp(i8* %26, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = load i32, i32* @FATAL, align 4
  %35 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @MyDatabaseId, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @NameStr(i32 %42)
  %44 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %43)
  %45 = call i32 @ereport(i32 %34, i32 %44)
  br label %46

46:                                               ; preds = %33, %22
  %47 = load i64, i64* @IsUnderPostmaster, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %108

49:                                               ; preds = %46
  %50 = call i32 (...) @IsAutoVacuumWorkerProcess()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %108, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @FATAL, align 4
  %62 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = call i32 @ereport(i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %60, %57, %52
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @MyDatabaseId, align 4
  %72 = call i32 (...) @GetUserId()
  %73 = load i32, i32* @ACL_CONNECT, align 4
  %74 = call i64 @pg_database_aclcheck(i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* @ACLCHECK_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @FATAL, align 4
  %79 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %70, %67
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @MyDatabaseId, align 4
  %95 = call i64 @CountDBConnections(i32 %94)
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32, i32* @FATAL, align 4
  %102 = load i32, i32* @ERRCODE_TOO_MANY_CONNECTIONS, align 4
  %103 = call i32 @errcode(i32 %102)
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = call i32 @ereport(i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %100, %93, %90, %85
  br label %108

108:                                              ; preds = %107, %49, %46
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @SetDatabaseEncoding(i32 %111)
  %113 = call i8* (...) @GetDatabaseEncodingName()
  %114 = load i32, i32* @PGC_INTERNAL, align 4
  %115 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %116 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %113, i32 %114, i32 %115)
  %117 = call i8* (...) @GetDatabaseEncodingName()
  %118 = load i32, i32* @PGC_BACKEND, align 4
  %119 = load i32, i32* @PGC_S_DYNAMIC_DEFAULT, align 4
  %120 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @NameStr(i32 %123)
  store i8* %124, i8** %9, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @NameStr(i32 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i32, i32* @LC_COLLATE, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = call i32* @pg_perm_setlocale(i32 %129, i8* %130)
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %108
  %134 = load i32, i32* @FATAL, align 4
  %135 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.10, i64 0, i64 0), i8* %136)
  %138 = call i32 @errhint(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %139 = call i32 @ereport(i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %133, %108
  %141 = load i32, i32* @LC_CTYPE, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = call i32* @pg_perm_setlocale(i32 %141, i8* %142)
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i32, i32* @FATAL, align 4
  %147 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.12, i64 0, i64 0), i8* %148)
  %150 = call i32 @errhint(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %151 = call i32 @ereport(i32 %146, i32 %150)
  br label %152

152:                                              ; preds = %145, %140
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* @PGC_INTERNAL, align 4
  %155 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %156 = call i32 @SetConfigOption(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %153, i32 %154, i32 %155)
  %157 = load i8*, i8** %10, align 8
  %158 = load i32, i32* @PGC_INTERNAL, align 4
  %159 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %160 = call i32 @SetConfigOption(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %157, i32 %158, i32 %159)
  %161 = call i32 (...) @check_strxfrm_bug()
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @ReleaseSysCache(i32 %162)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @CountDBConnections(i32) #1

declare dso_local i32 @SetDatabaseEncoding(i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i8* @GetDatabaseEncodingName(...) #1

declare dso_local i32* @pg_perm_setlocale(i32, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @check_strxfrm_bug(...) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
