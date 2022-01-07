; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_StartLogStreamer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_StartLogStreamer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i8*, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"could not parse write-ahead log location \22%s\22\00", align 1
@WalSegSz = common dso_local global i32 0, align 4
@bgpipe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"could not create pipe for background process: %m\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@basedir = common dso_local global i8* null, align 8
@conn = common dso_local global i32 0, align 4
@MINIMUM_VERSION_FOR_PG_WAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"pg_xlog\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@MINIMUM_VERSION_FOR_TEMP_SLOTS = common dso_local global i64 0, align 8
@temp_replication_slot = common dso_local global i32 0, align 4
@replication_slot = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"pg_basebackup_%d\00", align 1
@create_slot = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"created temporary replication slot \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"created replication slot \22%s\22\00", align 1
@format = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s/%s/archive_status\00", align 1
@pg_dir_create_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@bgchild = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"could not create background process: %m\00", align 1
@kill_bgchild_atexit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @StartLogStreamer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartLogStreamer(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = call %struct.TYPE_5__* @pg_malloc0(i32 40)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WalSegSz, align 4
  %41 = call i64 @XLogSegmentOffset(i32 %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load i32, i32* @bgpipe, align 4
  %49 = call i64 @pipe(i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %30
  %52 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @exit(i32 1) #4
  unreachable

54:                                               ; preds = %30
  %55 = call i32 (...) @GetConnection()
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i32 @exit(i32 1) #4
  unreachable

64:                                               ; preds = %54
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @basedir, align 8
  %69 = load i32, i32* @conn, align 4
  %70 = call i64 @PQserverVersion(i32 %69)
  %71 = load i64, i64* @MINIMUM_VERSION_FOR_PG_WAL, align 8
  %72 = icmp slt i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %75 = call i32 @snprintf(i8* %67, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %74)
  %76 = load i32, i32* @conn, align 4
  %77 = call i64 @PQserverVersion(i32 %76)
  %78 = load i64, i64* @MINIMUM_VERSION_FOR_TEMP_SLOTS, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 0, i32* @temp_replication_slot, align 4
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* @temp_replication_slot, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i64, i64* @replication_slot, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @PQbackendPID(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = call i64 @psprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  store i64 %93, i64* @replication_slot, align 8
  br label %94

94:                                               ; preds = %87, %84, %81
  %95 = load i32, i32* @temp_replication_slot, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @create_slot, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %97, %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @replication_slot, align 8
  %105 = load i32, i32* @temp_replication_slot, align 4
  %106 = call i32 @CreateReplicationSlot(i32 %103, i64 %104, i32* null, i32 %105, i32 1, i32 1, i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %100
  %109 = call i32 @exit(i32 1) #4
  unreachable

110:                                              ; preds = %100
  %111 = load i64, i64* @verbose, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* @temp_replication_slot, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, i64* @replication_slot, align 8
  %118 = call i32 @pg_log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %117)
  br label %122

119:                                              ; preds = %113
  %120 = load i64, i64* @replication_slot, align 8
  %121 = call i32 @pg_log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %110
  br label %124

124:                                              ; preds = %123, %97
  %125 = load i8, i8* @format, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 112
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = trunc i64 %13 to i32
  %130 = load i8*, i8** @basedir, align 8
  %131 = load i32, i32* @conn, align 4
  %132 = call i64 @PQserverVersion(i32 %131)
  %133 = load i64, i64* @MINIMUM_VERSION_FOR_PG_WAL, align 8
  %134 = icmp slt i64 %132, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %137 = call i32 @snprintf(i8* %15, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %130, i8* %136)
  %138 = load i32, i32* @pg_dir_create_mode, align 4
  %139 = call i64 @pg_mkdir_p(i8* %15, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @EEXIST, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %15)
  %147 = call i32 @exit(i32 1) #4
  unreachable

148:                                              ; preds = %141, %128
  br label %149

149:                                              ; preds = %148, %124
  %150 = call i64 (...) @fork()
  store i64 %150, i64* @bgchild, align 8
  %151 = load i64, i64* @bgchild, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = call i32 @LogStreamerMain(%struct.TYPE_5__* %154)
  %156 = call i32 @exit(i32 %155) #4
  unreachable

157:                                              ; preds = %149
  %158 = load i64, i64* @bgchild, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %162 = call i32 @exit(i32 1) #4
  unreachable

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* @kill_bgchild_atexit, align 4
  %166 = call i32 @atexit(i32 %165)
  %167 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @pg_malloc0(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @pg_log_error(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @XLogSegmentOffset(i32, i32) #2

declare dso_local i64 @pipe(i32) #2

declare dso_local i32 @GetConnection(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @PQserverVersion(i32) #2

declare dso_local i64 @psprintf(i8*, i32) #2

declare dso_local i64 @PQbackendPID(i32) #2

declare dso_local i32 @CreateReplicationSlot(i32, i64, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @pg_log_info(i8*, i64) #2

declare dso_local i64 @pg_mkdir_p(i8*, i32) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @LogStreamerMain(%struct.TYPE_5__*) #2

declare dso_local i32 @atexit(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
