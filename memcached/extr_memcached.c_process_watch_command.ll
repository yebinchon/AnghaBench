; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_watch_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_watch_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@COMMAND_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rawcmds\00", align 1
@LOG_RAWCMDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"evictions\00", align 1
@LOG_EVICTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fetchers\00", align 1
@LOG_FETCHERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"mutations\00", align 1
@LOG_MUTATIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"sysevents\00", align 1
@LOG_SYSEVENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"WATCHER_TOO_MANY log watcher limit reached\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"WATCHER_FAILED failed to add log watcher\00", align 1
@conn_watch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @process_watch_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_watch_command(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @set_noreply_maybe(%struct.TYPE_11__* %13, %struct.TYPE_10__* %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %17, 2
  br i1 %18, label %19, label %105

19:                                               ; preds = %3
  %20 = load i32, i32* @COMMAND_TOKEN, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %101, %19
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @LOG_RAWCMDS, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %100

41:                                               ; preds = %28
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @LOG_EVICTIONS, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %99

54:                                               ; preds = %41
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @LOG_FETCHERS, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %98

67:                                               ; preds = %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @LOG_MUTATIONS, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %97

80:                                               ; preds = %67
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* @LOG_SYSEVENTS, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %96

93:                                               ; preds = %80
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = call i32 @out_string(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %129

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97, %63
  br label %99

99:                                               ; preds = %98, %50
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %22

104:                                              ; preds = %22
  br label %109

105:                                              ; preds = %3
  %106 = load i32, i32* @LOG_FETCHERS, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %104
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @logger_add_watcher(%struct.TYPE_11__* %110, i32 %113, i32 %114)
  switch i32 %115, label %129 [
    i32 128, label %116
    i32 130, label %119
    i32 129, label %122
  ]

116:                                              ; preds = %109
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = call i32 @out_string(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %129

119:                                              ; preds = %109
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = call i32 @out_string(%struct.TYPE_11__* %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %129

122:                                              ; preds = %109
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = load i32, i32* @conn_watch, align 4
  %125 = call i32 @conn_set_state(%struct.TYPE_11__* %123, i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = call i32 @event_del(i32* %127)
  br label %129

129:                                              ; preds = %93, %109, %122, %119, %116
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_noreply_maybe(%struct.TYPE_11__*, %struct.TYPE_10__*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @out_string(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @logger_add_watcher(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @event_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
