; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_occ.c_process_received_occ_msg.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_occ.c_process_received_occ_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, i32, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@OCC_STRING_SIZE = common dso_local global i32 0, align 4
@D_PACKET_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RECEIVED OCC_REQUEST\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"RECEIVED OCC_MTU_REQUEST\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RECEIVED OCC_MTU_LOAD_REQUEST\00", align 1
@OCC_MTU_LOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"RECEIVED OCC_REPLY\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RECEIVED OCC_MTU_REPLY\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [94 x i8] c"NOTE: Empirical MTU test completed [Tried,Actual] local->remote=[%d,%d] remote->local=[%d,%d]\00", align 1
@TUN_MTU_MIN = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [135 x i8] c"NOTE: This connection is unable to accommodate a UDP packet size of %d. Consider using --fragment or --mssfix options as a workaround.\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"RECEIVED OCC_EXIT\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"remote-exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_received_occ_msg(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %6 = load i32, i32* @OCC_STRING_SIZE, align 4
  %7 = call i32 @buf_advance(%struct.TYPE_13__* %5, i32 %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = call i32 @buf_read_u8(%struct.TYPE_13__* %11)
  switch i32 %12, label %222 [
    i32 128, label %13
    i32 130, label %19
    i32 132, label %25
    i32 129, label %46
    i32 131, label %103
    i32 133, label %210
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @D_PACKET_CONTENT, align 4
  %15 = call i32 @dmsg(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 129, i32* %18, align 8
  br label %222

19:                                               ; preds = %1
  %20 = load i32, i32* @D_PACKET_CONTENT, align 4
  %21 = call i32 @dmsg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.context*, %struct.context** %2, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 131, i32* %24, align 8
  br label %222

25:                                               ; preds = %1
  %26 = load i32, i32* @D_PACKET_CONTENT, align 4
  %27 = call i32 @dmsg(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.context*, %struct.context** %2, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = call i8* @buf_read_u16(%struct.TYPE_13__* %30)
  %32 = load %struct.context*, %struct.context** %2, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 9
  store i8* %31, i8** %34, align 8
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 9
  %38 = load i8*, i8** %37, align 8
  %39 = icmp uge i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32, i32* @OCC_MTU_LOAD, align 4
  %42 = load %struct.context*, %struct.context** %2, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %25
  br label %222

46:                                               ; preds = %1
  %47 = load i32, i32* @D_PACKET_CONTENT, align 4
  %48 = call i32 @dmsg(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.context*, %struct.context** %2, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %46
  %55 = load %struct.context*, %struct.context** %2, align 8
  %56 = call i32 @TLS_MODE(%struct.context* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %98, label %58

58:                                               ; preds = %54
  %59 = load %struct.context*, %struct.context** %2, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %58
  %65 = load %struct.context*, %struct.context** %2, align 8
  %66 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = call i64 @BPTR(%struct.TYPE_13__* %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.context*, %struct.context** %2, align 8
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.context*, %struct.context** %2, align 8
  %75 = getelementptr inbounds %struct.context, %struct.context* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @options_cmp_equal_safe(i8* %69, i32 %73, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %64
  %82 = load %struct.context*, %struct.context** %2, align 8
  %83 = getelementptr inbounds %struct.context, %struct.context* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = call i64 @BPTR(%struct.TYPE_13__* %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.context*, %struct.context** %2, align 8
  %88 = getelementptr inbounds %struct.context, %struct.context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.context*, %struct.context** %2, align 8
  %92 = getelementptr inbounds %struct.context, %struct.context* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @options_warning_safe(i8* %86, i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %81, %64
  br label %98

98:                                               ; preds = %97, %58, %54, %46
  %99 = load %struct.context*, %struct.context** %2, align 8
  %100 = getelementptr inbounds %struct.context, %struct.context* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 7
  %102 = call i32 @event_timeout_clear(i32* %101)
  br label %222

103:                                              ; preds = %1
  %104 = load i32, i32* @D_PACKET_CONTENT, align 4
  %105 = call i32 @dmsg(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.context*, %struct.context** %2, align 8
  %107 = getelementptr inbounds %struct.context, %struct.context* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = call i8* @buf_read_u16(%struct.TYPE_13__* %108)
  %110 = load %struct.context*, %struct.context** %2, align 8
  %111 = getelementptr inbounds %struct.context, %struct.context* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 6
  store i8* %109, i8** %112, align 8
  %113 = load %struct.context*, %struct.context** %2, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = call i8* @buf_read_u16(%struct.TYPE_13__* %115)
  %117 = load %struct.context*, %struct.context** %2, align 8
  %118 = getelementptr inbounds %struct.context, %struct.context* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  store i8* %116, i8** %119, align 8
  %120 = load %struct.context*, %struct.context** %2, align 8
  %121 = getelementptr inbounds %struct.context, %struct.context* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %205

125:                                              ; preds = %103
  %126 = load %struct.context*, %struct.context** %2, align 8
  %127 = getelementptr inbounds %struct.context, %struct.context* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ugt i8* %129, null
  br i1 %130, label %131, label %205

131:                                              ; preds = %125
  %132 = load %struct.context*, %struct.context** %2, align 8
  %133 = getelementptr inbounds %struct.context, %struct.context* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ugt i8* %135, null
  br i1 %136, label %137, label %205

137:                                              ; preds = %131
  %138 = load i32, i32* @M_INFO, align 4
  %139 = load %struct.context*, %struct.context** %2, align 8
  %140 = getelementptr inbounds %struct.context, %struct.context* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.context*, %struct.context** %2, align 8
  %144 = getelementptr inbounds %struct.context, %struct.context* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.context*, %struct.context** %2, align 8
  %148 = getelementptr inbounds %struct.context, %struct.context* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.context*, %struct.context** %2, align 8
  %152 = getelementptr inbounds %struct.context, %struct.context* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32, i8*, i8*, ...) @msg(i32 %138, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i64 0, i64 0), i8* %142, i8* %146, i8* %150, i8* %154)
  %156 = load %struct.context*, %struct.context** %2, align 8
  %157 = getelementptr inbounds %struct.context, %struct.context* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %204, label %162

162:                                              ; preds = %137
  %163 = load %struct.context*, %struct.context** %2, align 8
  %164 = getelementptr inbounds %struct.context, %struct.context* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @proto_is_dgram(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %204

170:                                              ; preds = %162
  %171 = load %struct.context*, %struct.context** %2, align 8
  %172 = getelementptr inbounds %struct.context, %struct.context* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** @TUN_MTU_MIN, align 8
  %176 = icmp ugt i8* %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %170
  %178 = load %struct.context*, %struct.context** %2, align 8
  %179 = getelementptr inbounds %struct.context, %struct.context* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 6
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.context*, %struct.context** %2, align 8
  %183 = getelementptr inbounds %struct.context, %struct.context* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ult i8* %181, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %177
  %188 = load %struct.context*, %struct.context** %2, align 8
  %189 = getelementptr inbounds %struct.context, %struct.context* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.context*, %struct.context** %2, align 8
  %193 = getelementptr inbounds %struct.context, %struct.context* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ult i8* %191, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %187, %177
  %198 = load i32, i32* @M_INFO, align 4
  %199 = load %struct.context*, %struct.context** %2, align 8
  %200 = getelementptr inbounds %struct.context, %struct.context* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (i32, i8*, i8*, ...) @msg(i32 %198, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.6, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %197, %187, %170, %162, %137
  br label %205

205:                                              ; preds = %204, %131, %125, %103
  %206 = load %struct.context*, %struct.context** %2, align 8
  %207 = getelementptr inbounds %struct.context, %struct.context* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = call i32 @event_timeout_clear(i32* %208)
  br label %222

210:                                              ; preds = %1
  %211 = load i32, i32* @D_PACKET_CONTENT, align 4
  %212 = call i32 @dmsg(i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %213 = load i32, i32* @SIGTERM, align 4
  %214 = load %struct.context*, %struct.context** %2, align 8
  %215 = getelementptr inbounds %struct.context, %struct.context* %214, i32 0, i32 1
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store i32 %213, i32* %217, align 8
  %218 = load %struct.context*, %struct.context** %2, align 8
  %219 = getelementptr inbounds %struct.context, %struct.context* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %221, align 8
  br label %222

222:                                              ; preds = %1, %210, %205, %98, %45, %19, %13
  %223 = load %struct.context*, %struct.context** %2, align 8
  %224 = getelementptr inbounds %struct.context, %struct.context* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_advance(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @buf_read_u8(%struct.TYPE_13__*) #1

declare dso_local i32 @dmsg(i32, i8*) #1

declare dso_local i8* @buf_read_u16(%struct.TYPE_13__*) #1

declare dso_local i32 @TLS_MODE(%struct.context*) #1

declare dso_local i32 @options_cmp_equal_safe(i8*, i32, i64) #1

declare dso_local i64 @BPTR(%struct.TYPE_13__*) #1

declare dso_local i32 @options_warning_safe(i8*, i32, i64) #1

declare dso_local i32 @event_timeout_clear(i32*) #1

declare dso_local i32 @msg(i32, i8*, i8*, ...) #1

declare dso_local i32 @proto_is_dgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
