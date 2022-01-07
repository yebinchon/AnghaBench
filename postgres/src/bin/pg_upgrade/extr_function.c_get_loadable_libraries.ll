; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_function.c_get_loadable_libraries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_function.c_get_loadable_libraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@old_cluster = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [104 x i8] c"SELECT DISTINCT probin FROM pg_catalog.pg_proc WHERE prolang = %u AND probin IS NOT NULL AND oid >= %u;\00", align 1
@ClanguageId = common dso_local global i32 0, align 4
@FirstNormalObjectId = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [227 x i8] c"SELECT 1 FROM pg_catalog.pg_proc p     JOIN pg_catalog.pg_namespace n     ON pronamespace = n.oid WHERE proname = 'plpython_call_handler' AND nspname = 'public' AND prolang = %u AND probin = '$libdir/plpython' AND p.oid >= %u;\00", align 1
@PG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [614 x i8] c"\0AThe old cluster has a \22plpython_call_handler\22 function defined\0Ain the \22public\22 schema which is a duplicate of the one defined\0Ain the \22pg_catalog\22 schema.  You can confirm this by executing\0Ain psql:\0A\0A    \\df *.plpython_call_handler\0A\0AThe \22public\22 schema version of this function was created by a\0Apre-8.1 install of plpython, and must be removed for pg_upgrade\0Ato complete because it references a now-obsolete \22plpython\22\0Ashared object file.  You can remove the \22public\22 schema version\0Aof this function by running the following command:\0A\0A    DROP FUNCTION public.plpython_call_handler()\0A\0Ain each affected database:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Remove the problem functions from the old cluster to continue.\0A\00", align 1
@os_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_loadable_libraries() #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @pg_malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32**
  store i32** %17, i32*** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %78, %0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 0, i32 1), align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @connectToServer(%struct.TYPE_11__* @old_cluster, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ClanguageId, align 4
  %33 = load i32, i32* @FirstNormalObjectId, align 4
  %34 = call i32* @executeQueryOrDie(i32* %31, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32**, i32*** %1, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %34, i32** %38, align 8
  %39 = load i32**, i32*** %1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @PQntuples(i32* %43)
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 1), align 8
  %50 = call i32 @GET_MAJOR_VERSION(i32 %49)
  %51 = icmp slt i32 %50, 901
  br i1 %51, label %52, label %75

52:                                               ; preds = %22
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @ClanguageId, align 4
  %55 = load i32, i32* @FirstNormalObjectId, align 4
  %56 = call i32* @executeQueryOrDie(i32* %53, i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @PQntuples(i32* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @PG_WARNING, align 4
  %65 = call i32 (i32, i8*, ...) @pg_log(i32 %64, i8* getelementptr inbounds ([614 x i8], [614 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @PG_WARNING, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @pg_log(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %52
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @PQclear(i32* %73)
  br label %75

75:                                               ; preds = %72, %22
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @PQfinish(i32* %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %18

81:                                               ; preds = %18
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @pg_fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = call i64 @pg_malloc(i32 %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @os_info, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %135, %86
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load i32**, i32*** %1, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @PQntuples(i32* %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %129, %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @PQgetvalue(i32* %111, i32 %112, i32 0)
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @pg_strdup(i8* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @os_info, i32 0, i32 1), align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @os_info, i32 0, i32 1), align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %106

132:                                              ; preds = %106
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @PQclear(i32* %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %93

138:                                              ; preds = %93
  %139 = load i32**, i32*** %1, align 8
  %140 = call i32 @pg_free(i32** %139)
  %141 = load i32, i32* %2, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @os_info, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32* @connectToServer(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*, i32, i32) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @pg_log(i32, i8*, ...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @pg_fatal(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_strdup(i8*) #1

declare dso_local i32 @pg_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
