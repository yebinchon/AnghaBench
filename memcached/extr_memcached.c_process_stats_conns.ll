; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_stats_conns.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_stats_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@STAT_KEY_LEN = common dso_local global i32 0, align 4
@STAT_VAL_LEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@max_fds = common dso_local global i32 0, align 4
@conns = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@conn_closed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@conn_listening = common dso_local global i64 0, align 8
@conn_read = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"listen_addr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"secs_since_last_cmd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@current_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @process_stats_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stats_conns(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @STAT_KEY_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @STAT_VAL_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i64 12, i64* %9, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @assert(i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %132, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @max_fds, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %135

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %131

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_UDP(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i8*, i8*, ...) @APPEND_NUM_STAT(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @conn_closed, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %130

67:                                               ; preds = %57
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @conn_to_str(%struct.TYPE_3__* %72, i8* %25, i8* %30)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, i8*, ...) @APPEND_NUM_STAT(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @conn_listening, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %67
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_UDP(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %96, i64 %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @conn_read, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %95, %85
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, i8*, ...) @APPEND_NUM_STAT(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %108

108:                                              ; preds = %105, %95, %67
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @state_text(i64 %116)
  %118 = call i32 (i32, i8*, i8*, ...) @APPEND_NUM_STAT(i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @current_time, align 4
  %121 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @conns, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %121, i64 %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %120, %127
  %129 = call i32 (i32, i8*, i8*, ...) @APPEND_NUM_STAT(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %108, %57
  br label %131

131:                                              ; preds = %130, %37
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %33

135:                                              ; preds = %33
  %136 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @IS_UDP(i32) #2

declare dso_local i32 @APPEND_NUM_STAT(i32, i8*, i8*, ...) #2

declare dso_local i32 @conn_to_str(%struct.TYPE_3__*, i8*, i8*) #2

declare dso_local i32 @state_text(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
