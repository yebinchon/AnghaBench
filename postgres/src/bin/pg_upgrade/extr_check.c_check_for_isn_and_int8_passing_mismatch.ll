; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_isn_and_int8_passing_mismatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_isn_and_int8_passing_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Checking for contrib/isn with bigint-passing mismatch\00", align 1
@old_cluster = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@new_cluster = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"contrib_isn_and_int8_pass_by_value.txt\00", align 1
@.str.2 = private unnamed_addr constant [143 x i8] c"SELECT n.nspname, p.proname FROM\09pg_catalog.pg_proc p, \09\09pg_catalog.pg_namespace n WHERE\09p.pronamespace = n.oid AND \09\09p.probin = '$libdir/isn'\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"proname\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"In database: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"  %s.%s\0A\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"fatal\0A\00", align 1
@.str.10 = private unnamed_addr constant [390 x i8] c"Your installation contains \22contrib/isn\22 functions which rely on the\0Abigint data type.  Your old and new clusters pass bigint values\0Adifferently so this cluster cannot currently be upgraded.  You can\0Amanually upgrade databases that use \22contrib/isn\22 facilities and remove\0A\22contrib/isn\22 from the old cluster and restart the upgrade.  A list of\0Athe problem functions is in the file:\0A    %s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @check_for_isn_and_int8_passing_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_isn_and_int8_passing_mismatch(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = call i32 @prep_status(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @new_cluster, i32 0, i32 0, i32 0), align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (...) @check_ok()
  store i32 1, i32* %8, align 4
  br label %119

27:                                               ; preds = %1
  %28 = trunc i64 %18 to i32
  %29 = call i32 @snprintf(i8* %20, i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %100, %27
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %103

37:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %15, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32* @connectToServer(%struct.TYPE_14__* %45, i8* %48)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32* @executeQueryOrDie(i32* %50, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.2, i64 0, i64 0))
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @PQntuples(i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %92, %37
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call i32* @fopen_priv(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %66, i32** %4, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %20, i32 %70)
  br label %72

72:                                               ; preds = %68, %65, %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i8* @PQgetvalue(i32* %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @PQgetvalue(i32* %87, i32 %88, i32 %89)
  %91 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %86, i8* %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %58

95:                                               ; preds = %58
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @PQclear(i32* %96)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @PQfinish(i32* %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %30

103:                                              ; preds = %30
  %104 = load i32*, i32** %4, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @fclose(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* @PG_REPORT, align 4
  %114 = call i32 @pg_log(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %115 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([390 x i8], [390 x i8]* @.str.10, i64 0, i64 0), i8* %20)
  br label %118

116:                                              ; preds = %109
  %117 = call i32 (...) @check_ok()
  br label %118

118:                                              ; preds = %116, %112
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %25
  %120 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %8, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32 @check_ok(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32* @connectToServer(%struct.TYPE_14__*, i8*) #2

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #2

declare dso_local i32 @PQntuples(i32*) #2

declare dso_local i32 @PQfnumber(i32*, i8*) #2

declare dso_local i32* @fopen_priv(i8*, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

declare dso_local i32 @PQfinish(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @pg_log(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
