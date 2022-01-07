; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_file_read_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_file_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.web_client = type { i64, i64, i64, i32, i32 }

@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%llu: PREVENTED ATTEMPT TO READ FILE ON FD %d, ON CLOSED WEB CLIENT\00", align 1
@WEB_CLIENT_MODE_FILECOPY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"%llu: PREVENTED ATTEMPT TO READ FILE ON FD %d, ON NON-FILECOPY WEB CLIENT\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%llu: READING FILE ON FD %d\00", align 1
@worker_private = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"%llu: SIGNALING W TO SEND (iFD %d, oFD %d)\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%llu: DONE READING FILE ON FD %d\00", align 1
@POLLIN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i16*)* @web_server_file_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_server_file_read_callback(%struct.TYPE_10__* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i16* %1, i16** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.web_client*
  store %struct.web_client* %13, %struct.web_client** %6, align 8
  %14 = load %struct.web_client*, %struct.web_client** %6, align 8
  %15 = getelementptr inbounds %struct.web_client, %struct.web_client* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @D_WEB_CLIENT, align 4
  %24 = load %struct.web_client*, %struct.web_client** %6, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, i32, ...) @debug(i32 %23, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  store i32 -1, i32* %3, align 4
  br label %138

31:                                               ; preds = %2
  %32 = load %struct.web_client*, %struct.web_client** %6, align 8
  %33 = getelementptr inbounds %struct.web_client, %struct.web_client* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WEB_CLIENT_MODE_FILECOPY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.web_client*, %struct.web_client** %6, align 8
  %39 = getelementptr inbounds %struct.web_client, %struct.web_client* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.web_client*, %struct.web_client** %6, align 8
  %42 = getelementptr inbounds %struct.web_client, %struct.web_client* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br label %45

45:                                               ; preds = %37, %31
  %46 = phi i1 [ true, %31 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @D_WEB_CLIENT, align 4
  %52 = load %struct.web_client*, %struct.web_client** %6, align 8
  %53 = getelementptr inbounds %struct.web_client, %struct.web_client* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, i32, i32, ...) @debug(i32 %51, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  store i32 -1, i32* %3, align 4
  br label %138

59:                                               ; preds = %45
  %60 = load i32, i32* @D_WEB_CLIENT, align 4
  %61 = load %struct.web_client*, %struct.web_client** %6, align 8
  %62 = getelementptr inbounds %struct.web_client, %struct.web_client* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, i32, i32, ...) @debug(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @worker_private, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.web_client*, %struct.web_client** %6, align 8
  %73 = call i32 @web_client_read_file(%struct.web_client* %72)
  %74 = call i64 @unlikely(i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load %struct.web_client*, %struct.web_client** %6, align 8
  %76 = call i32 @web_client_has_wait_send(%struct.web_client* %75)
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %59
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %8, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = load %struct.web_client*, %struct.web_client** %6, align 8
  %85 = getelementptr inbounds %struct.web_client, %struct.web_client* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_10__* @pollinfo_from_slot(%struct.TYPE_9__* %83, i32 %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %9, align 8
  %88 = load i32, i32* @D_WEB_CLIENT, align 4
  %89 = load %struct.web_client*, %struct.web_client** %6, align 8
  %90 = getelementptr inbounds %struct.web_client, %struct.web_client* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, i32, i32, ...) @debug(i32 %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  %99 = load i32, i32* @POLLOUT, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %99
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %79, %59
  %111 = load i64, i64* %7, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load %struct.web_client*, %struct.web_client** %6, align 8
  %115 = getelementptr inbounds %struct.web_client, %struct.web_client* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.web_client*, %struct.web_client** %6, align 8
  %118 = getelementptr inbounds %struct.web_client, %struct.web_client* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br label %121

121:                                              ; preds = %113, %110
  %122 = phi i1 [ true, %110 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* @D_WEB_CLIENT, align 4
  %128 = load %struct.web_client*, %struct.web_client** %6, align 8
  %129 = getelementptr inbounds %struct.web_client, %struct.web_client* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, i32, i32, ...) @debug(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %130, i32 %133)
  store i32 -1, i32* %3, align 4
  br label %138

135:                                              ; preds = %121
  %136 = load i16, i16* @POLLIN, align 2
  %137 = load i16*, i16** %5, align 8
  store i16 %136, i16* %137, align 2
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %126, %50, %22
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @web_client_read_file(%struct.web_client*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @web_client_has_wait_send(%struct.web_client*) #1

declare dso_local %struct.TYPE_10__* @pollinfo_from_slot(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
