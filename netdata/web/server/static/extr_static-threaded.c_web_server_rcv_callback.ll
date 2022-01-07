; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_rcv_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_rcv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }
%struct.web_client = type { i64, i64, i32, i32, i32 }

@worker_private = common dso_local global %struct.TYPE_6__* null, align 8
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%llu: processing received data on fd %d.\00", align 1
@WEB_CLIENT_MODE_FILECOPY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%llu: FILECOPY DETECTED ON FD %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%llu: CREATING FILECOPY SLOT ON FD %d\00", align 1
@POLLINFO_FLAG_CLIENT_SOCKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"FILENAME\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@web_server_file_add_callback = common dso_local global i32 0, align 4
@web_server_file_del_callback = common dso_local global i32 0, align 4
@web_server_file_read_callback = common dso_local global i32 0, align 4
@web_server_file_write_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to add filecopy fd. Closing client.\00", align 1
@POLLIN = common dso_local global i16 0, align 2
@POLLOUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i16*)* @web_server_rcv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_server_rcv_callback(%struct.TYPE_5__* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i16* %1, i16** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker_private, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.web_client*
  store %struct.web_client* %16, %struct.web_client** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.web_client*, %struct.web_client** %6, align 8
  %21 = call i64 @web_client_receive(%struct.web_client* %20)
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load i32, i32* @D_WEB_CLIENT, align 4
  %29 = load %struct.web_client*, %struct.web_client** %6, align 8
  %30 = getelementptr inbounds %struct.web_client, %struct.web_client* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @debug(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.web_client*, %struct.web_client** %6, align 8
  %35 = call i32 @web_client_process_request(%struct.web_client* %34)
  %36 = load %struct.web_client*, %struct.web_client** %6, align 8
  %37 = getelementptr inbounds %struct.web_client, %struct.web_client* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WEB_CLIENT_MODE_FILECOPY, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %27
  %45 = load %struct.web_client*, %struct.web_client** %6, align 8
  %46 = getelementptr inbounds %struct.web_client, %struct.web_client* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %44
  %50 = load i32, i32* @D_WEB_CLIENT, align 4
  %51 = load %struct.web_client*, %struct.web_client** %6, align 8
  %52 = getelementptr inbounds %struct.web_client, %struct.web_client* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @debug(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.web_client*, %struct.web_client** %6, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %76

62:                                               ; preds = %49
  %63 = load %struct.web_client*, %struct.web_client** %6, align 8
  %64 = getelementptr inbounds %struct.web_client, %struct.web_client* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.web_client*, %struct.web_client** %6, align 8
  %67 = getelementptr inbounds %struct.web_client, %struct.web_client* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.web_client*, %struct.web_client** %6, align 8
  %72 = getelementptr inbounds %struct.web_client, %struct.web_client* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %73, %74
  br label %76

76:                                               ; preds = %70, %62, %49
  %77 = phi i1 [ false, %62 ], [ false, %49 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load i32, i32* @D_WEB_CLIENT, align 4
  %83 = load %struct.web_client*, %struct.web_client** %6, align 8
  %84 = getelementptr inbounds %struct.web_client, %struct.web_client* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @debug(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.web_client*, %struct.web_client** %6, align 8
  %94 = getelementptr inbounds %struct.web_client, %struct.web_client* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @POLLINFO_FLAG_CLIENT_SOCKET, align 4
  %100 = load i32, i32* @web_server_file_add_callback, align 4
  %101 = load i32, i32* @web_server_file_del_callback, align 4
  %102 = load i32, i32* @web_server_file_read_callback, align 4
  %103 = load i32, i32* @web_server_file_write_callback, align 4
  %104 = load %struct.web_client*, %struct.web_client** %6, align 8
  %105 = bitcast %struct.web_client* %104 to i8*
  %106 = call %struct.TYPE_5__* @poll_add_fd(i32 %92, i32 %95, i32 %98, i32 0, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103, i8* %105)
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %8, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %81
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.web_client*, %struct.web_client** %6, align 8
  %114 = getelementptr inbounds %struct.web_client, %struct.web_client* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %117

115:                                              ; preds = %81
  %116 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %170

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %76
  br label %119

119:                                              ; preds = %118, %44
  br label %144

120:                                              ; preds = %27
  %121 = load %struct.web_client*, %struct.web_client** %6, align 8
  %122 = getelementptr inbounds %struct.web_client, %struct.web_client* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.web_client*, %struct.web_client** %6, align 8
  %128 = call i64 @web_client_has_wait_receive(%struct.web_client* %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i1 [ false, %120 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i16, i16* @POLLIN, align 2
  %137 = sext i16 %136 to i32
  %138 = load i16*, i16** %5, align 8
  %139 = load i16, i16* %138, align 2
  %140 = sext i16 %139 to i32
  %141 = or i32 %140, %137
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %138, align 2
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143, %119
  %145 = load %struct.web_client*, %struct.web_client** %6, align 8
  %146 = getelementptr inbounds %struct.web_client, %struct.web_client* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.web_client*, %struct.web_client** %6, align 8
  %152 = call i64 @web_client_has_wait_send(%struct.web_client* %151)
  %153 = icmp ne i64 %152, 0
  br label %154

154:                                              ; preds = %150, %144
  %155 = phi i1 [ false, %144 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i16, i16* @POLLOUT, align 2
  %161 = sext i16 %160 to i32
  %162 = load i16*, i16** %5, align 8
  %163 = load i16, i16* %162, align 2
  %164 = sext i16 %163 to i32
  %165 = or i32 %164, %161
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %162, align 2
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.web_client*, %struct.web_client** %6, align 8
  %169 = call i32 @web_server_check_client_status(%struct.web_client* %168)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %115, %26
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @web_client_receive(%struct.web_client*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @web_client_process_request(%struct.web_client*) #1

declare dso_local %struct.TYPE_5__* @poll_add_fd(i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @web_client_has_wait_receive(%struct.web_client*) #1

declare dso_local i64 @web_client_has_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_server_check_client_status(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
