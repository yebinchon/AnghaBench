; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_start_postmaster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_start_postmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i32, i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@MAXPGPATH = common dso_local global i32 0, align 4
@start_postmaster.exit_hook_registered = internal global i32 0, align 4
@stop_postmaster_atexit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"\22%s/pg_ctl\22 -w -l \22%s\22 -D \22%s\22 -o \22-p %d%s%s %s%s\22 start\00", align 1
@SERVER_LOG_FILE = common dso_local global i8* null, align 8
@BINARY_UPGRADE_SERVER_FLAG_CAT_VER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" -b\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c" -c autovacuum=off -c autovacuum_freeze_max_age=2000000000\00", align 1
@new_cluster = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c" -c synchronous_commit=off -c fsync=off -c full_page_writes=off\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SERVER_START_LOG_FILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@os_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@PG_REPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"\0Aconnection to database failed: %s\00", align 1
@old_cluster = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [69 x i8] c"could not connect to source postmaster started with the command:\0A%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"could not connect to target postmaster started with the command:\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"pg_ctl failed to start the source server, or connection failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"pg_ctl failed to start the target server, or connection failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_postmaster(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = mul nsw i32 %12, 4
  %14 = add nsw i32 %13, 1000
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = add nsw i32 %18, 200
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @start_postmaster.exit_hook_registered, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @stop_postmaster_atexit, align 4
  %26 = call i32 @atexit(i32 %25)
  store i32 1, i32* @start_postmaster.exit_hook_registered, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %28, align 16
  %29 = trunc i64 %15 to i32
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @SERVER_LOG_FILE, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BINARY_UPGRADE_SERVER_FLAG_CAT_VER, align 8
  %45 = icmp sge i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = icmp eq %struct.TYPE_9__* %48, @new_cluster
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %60 ]
  %63 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %17, i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i8* %36, i32 %39, i8* %47, i8* %51, i8* %62, i8* %21)
  %64 = load i32, i32* @SERVER_START_LOG_FILE, align 4
  %65 = load i8*, i8** @SERVER_LOG_FILE, align 8
  %66 = load i32, i32* @SERVER_START_LOG_FILE, align 4
  %67 = call i64 @strcmp(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** @SERVER_LOG_FILE, align 8
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ null, %71 ]
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @exec_prog(i32 %64, i8* %73, i32 %74, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %128

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @os_info, i32 0, i32 0), align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = call i32* @get_db_conn(%struct.TYPE_9__* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %89, i32** %8, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @PQstatus(i32* %92)
  %94 = load i64, i64* @CONNECTION_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %91, %87
  %97 = load i32, i32* @PG_REPORT, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @PQerrorMessage(i32* %98)
  %100 = call i32 @pg_log(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @PQfinish(i32* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = icmp eq %struct.TYPE_9__* %107, @old_cluster
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i8* %17)
  br label %113

111:                                              ; preds = %106
  %112 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %91
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @PQfinish(i32* %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = icmp eq %struct.TYPE_9__* %120, @old_cluster
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  br label %126

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %122
  br label %127

127:                                              ; preds = %126, %114
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %81
  %129 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atexit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @exec_prog(i32, i8*, i32, i32, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32* @get_db_conn(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @PQstatus(i32*) #2

declare dso_local i32 @pg_log(i32, i8*, i32) #2

declare dso_local i32 @PQerrorMessage(i32*) #2

declare dso_local i32 @PQfinish(i32*) #2

declare dso_local i32 @pg_fatal(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
