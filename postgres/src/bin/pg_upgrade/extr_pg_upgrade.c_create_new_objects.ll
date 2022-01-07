; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_create_new_objects.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_create_new_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Restoring database schemas in the new cluster\0A\00", align 1
@old_cluster = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@PG_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DB_DUMP_FILE_MASK = common dso_local global i8* null, align 8
@DB_DUMP_LOG_FILE_MASK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"--clean --create\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"\22%s/pg_restore\22 %s %s --exit-on-error --verbose --dbname postgres \22%s\22\00", align 1
@new_cluster = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--create\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"\22%s/pg_restore\22 %s %s --exit-on-error --verbose --dbname template1 \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_new_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_new_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = call i32 @prep_status(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %61, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @old_cluster, i32 0, i32 1, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = load i32, i32* @MAXPGPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %2, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %3, align 8
  %23 = load i32, i32* @MAXPGPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @old_cluster, i32 0, i32 1, i32 1), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 4, i32* %7, align 4
  br label %58

36:                                               ; preds = %18
  %37 = load i32, i32* @PG_STATUS, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pg_log(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = trunc i64 %20 to i32
  %43 = load i8*, i8** @DB_DUMP_FILE_MASK, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i8* %22, i32 %42, i8* %43, i32 %46)
  %48 = trunc i64 %24 to i32
  %49 = load i8*, i8** @DB_DUMP_LOG_FILE_MASK, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i8* %25, i32 %48, i8* %49, i32 %52)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %55 = call i32 @cluster_conn_opts(%struct.TYPE_10__* @new_cluster)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @exec_prog(i8* %25, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32 %55, i8* %56, i8* %22)
  store i32 2, i32* %7, align 4
  br label %58

58:                                               ; preds = %36, %35
  %59 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %139 [
    i32 4, label %61
    i32 2, label %64
  ]

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %14

64:                                               ; preds = %58, %14
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %121, %64
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @old_cluster, i32 0, i32 1, i32 0), align 8
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %65
  %70 = load i32, i32* @MAXPGPATH, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %8, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %9, align 8
  %74 = load i32, i32* @MAXPGPATH, align 4
  %75 = zext i32 %74 to i64
  %76 = alloca i8, i64 %75, align 16
  store i64 %75, i64* %10, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @old_cluster, i32 0, i32 1, i32 1), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %11, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strcmp(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  store i32 7, i32* %7, align 4
  br label %117

87:                                               ; preds = %69
  %88 = load i32, i32* @PG_STATUS, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pg_log(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = trunc i64 %71 to i32
  %94 = load i8*, i8** @DB_DUMP_FILE_MASK, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snprintf(i8* %73, i32 %93, i8* %94, i32 %97)
  %99 = trunc i64 %75 to i32
  %100 = load i8*, i8** @DB_DUMP_LOG_FILE_MASK, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snprintf(i8* %76, i32 %99, i8* %100, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @strcmp(i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %87
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %112

111:                                              ; preds = %87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %114 = call i32 @cluster_conn_opts(%struct.TYPE_10__* @new_cluster)
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @parallel_exec_prog(i8* %76, i32* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %114, i8* %115, i8* %73)
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %112, %86
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %7, align 4
  switch i32 %119, label %139 [
    i32 0, label %120
    i32 7, label %121
  ]

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %65

124:                                              ; preds = %65
  br label %125

125:                                              ; preds = %128, %124
  %126 = call i32 @reap_child(i32 1)
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %125

129:                                              ; preds = %125
  %130 = call i32 (...) @end_progress_output()
  %131 = call i32 (...) @check_ok()
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @old_cluster, i32 0, i32 0), align 8
  %133 = call i32 @GET_MAJOR_VERSION(i32 %132)
  %134 = icmp slt i32 %133, 903
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 @set_frozenxids(i32 1)
  br label %137

137:                                              ; preds = %135, %129
  %138 = call i32 @get_db_and_rel_infos(%struct.TYPE_10__* @new_cluster)
  ret void

139:                                              ; preds = %117, %58
  unreachable
}

declare dso_local i32 @prep_status(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pg_log(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @exec_prog(i8*, i32*, i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @cluster_conn_opts(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @parallel_exec_prog(i8*, i32*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @reap_child(i32) #1

declare dso_local i32 @end_progress_output(...) #1

declare dso_local i32 @check_ok(...) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @set_frozenxids(i32) #1

declare dso_local i32 @get_db_and_rel_infos(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
