; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_connect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@PGRES_POLLING_WRITING = common dso_local global i64 0, align 8
@PGRES_POLLING_READING = common dso_local global i64 0, align 8
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WAIT_EVENT_LIBPQWALRECEIVER_CONNECT = common dso_local global i32 0, align 4
@PGRES_POLLING_OK = common dso_local global i64 0, align 8
@PGRES_POLLING_FAILED = common dso_local global i64 0, align 8
@CONNECTION_OK = common dso_local global i64 0, align 8
@CONNECTION_STARTED = common dso_local global i64 0, align 8
@WL_SOCKET_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i32, i8*, i8**)* @libpqrcv_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @libpqrcv_connect(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [5 x i8*], align 16
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %18
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %22
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %26
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %33
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %43
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  br label %45

45:                                               ; preds = %37, %4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %48
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %52
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %59
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  %61 = call i8* (...) @GetDatabaseEncodingName()
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %63
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %56, %45
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %68
  store i8* null, i8** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %71
  store i8* null, i8** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %74, 40
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = call %struct.TYPE_4__* @palloc0(i32 8)
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %80 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 0
  %81 = call i32 @PQconnectStartParams(i8** %79, i8** %80, i32 1)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @PQstatus(i32 %86)
  %88 = load i64, i64* @CONNECTION_BAD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %65
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PQerrorMessage(i32 %93)
  %95 = call i8* @pchomp(i32 %94)
  %96 = load i8**, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %168

97:                                               ; preds = %65
  %98 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %147, %97
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @PGRES_POLLING_READING, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @WL_SOCKET_READABLE, align 4
  store i32 %104, i32* %15, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i32, i32* @MyLatch, align 4
  %109 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %110 = load i32, i32* @WL_LATCH_SET, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PQsocket(i32 %116)
  %118 = load i32, i32* @WAIT_EVENT_LIBPQWALRECEIVER_CONNECT, align 4
  %119 = call i32 @WaitLatchOrSocket(i32 %108, i32 %113, i32 %117, i32 0, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @WL_LATCH_SET, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @MyLatch, align 4
  %126 = call i32 @ResetLatch(i32 %125)
  %127 = call i32 (...) @ProcessWalRcvInterrupts()
  br label %128

128:                                              ; preds = %124, %107
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @PQconnectPoll(i32 %136)
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @PGRES_POLLING_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  %146 = icmp ne i64 %144, %145
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i1 [ false, %139 ], [ %146, %143 ]
  br i1 %148, label %99, label %149

149:                                              ; preds = %147
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @PQstatus(i32 %152)
  %154 = load i64, i64* @CONNECTION_OK, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @PQerrorMessage(i32 %159)
  %161 = call i8* @pchomp(i32 %160)
  %162 = load i8**, i8*** %9, align 8
  store i8* %161, i8** %162, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %168

163:                                              ; preds = %149
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** %5, align 8
  br label %168

168:                                              ; preds = %163, %156, %90
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %169
}

declare dso_local i8* @GetDatabaseEncodingName(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_4__* @palloc0(i32) #1

declare dso_local i32 @PQconnectStartParams(i8**, i8**, i32) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i8* @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PQsocket(i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessWalRcvInterrupts(...) #1

declare dso_local i64 @PQconnectPoll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
