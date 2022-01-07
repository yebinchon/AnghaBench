; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_conn_timeout_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_conn_timeout_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@TIMEOUT_MSG_SIZE = common dso_local global i32 0, align 4
@max_fds = common dso_local global i32 0, align 4
@CONNS_PER_SLICE = common dso_local global i32 0, align 4
@do_run_conn_timeout_thread = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"idle timeout thread at top of connection list\0A\00", align 1
@current_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"idle timeout thread sleeping for %ulus\0A\00", align 1
@conns = common dso_local global %struct.TYPE_6__** null, align 8
@conn_new_cmd = common dso_local global i64 0, align 8
@conn_read = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to write timeout to notify pipe\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"idle timeout thread finished pass, sleeping for %ds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @conn_timeout_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conn_timeout_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @TIMEOUT_MSG_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @max_fds, align 4
  %15 = load i32, i32* @CONNS_PER_SLICE, align 4
  %16 = sdiv i32 %14, %15
  %17 = sdiv i32 1000000, %16
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %138, %1
  %19 = load i64, i64* @do_run_conn_timeout_thread, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %142

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 0), align 8
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @current_time, align 8
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %117, %27
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @max_fds, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %120

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CONNS_PER_SLICE, align 4
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 0), align 8
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @usleep(i32 %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @conns, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %117

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @conns, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IS_TCP(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %117

68:                                               ; preds = %56
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @conn_new_cmd, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @conn_read, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %117

81:                                               ; preds = %74, %68
  %82 = load i64, i64* @current_time, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 1), align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 116, i8* %90, align 16
  %91 = getelementptr inbounds i8, i8* %13, i64 1
  %92 = call i32 @memcpy(i8* %91, i32* %3, i32 4)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TIMEOUT_MSG_SIZE, align 4
  %99 = call i32 @write(i32 %97, i8* %13, i32 %98)
  %100 = load i32, i32* @TIMEOUT_MSG_SIZE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %89
  br label %116

105:                                              ; preds = %81
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %80, %67, %55
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %29

120:                                              ; preds = %29
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 1), align 8
  %122 = load i64, i64* @current_time, align 8
  %123 = load i64, i64* %7, align 8
  %124 = sub nsw i64 %122, %123
  %125 = sub nsw i64 %121, %124
  %126 = add nsw i64 %125, 1
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %120
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 0), align 8
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @stderr, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %139, 1000000
  %141 = call i32 @usleep(i32 %140)
  br label %18

142:                                              ; preds = %18
  %143 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %143)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @IS_TCP(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
