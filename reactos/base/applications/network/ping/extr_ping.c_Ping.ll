; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_Ping.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_Ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_18__, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@RequestSize = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_NO_RESOURCES = common dso_local global i32 0, align 4
@Family = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SIZEOF_ICMP_ERROR = common dso_local global i32 0, align 4
@SIZEOF_IO_STATUS_BLOCK = common dso_local global i32 0, align 4
@EchosSent = common dso_local global i32 0, align 4
@hIcmpFile = common dso_local global i32 0, align 4
@Target = common dso_local global %struct.TYPE_13__* null, align 8
@IpOptions = common dso_local global i32 0, align 4
@Timeout = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_REQUEST_TIMED_OUT = common dso_local global i32 0, align 4
@IDS_TRANSMIT_FAILED = common dso_local global i32 0, align 4
@EchosReceived = common dso_local global i32 0, align 4
@Address = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@IDS_REPLY_FROM = common dso_local global i32 0, align 4
@EchosSuccessful = common dso_local global i32 0, align 4
@IDS_REPLY_TIME_0MS = common dso_local global i32 0, align 4
@IDS_REPLY_TIME_MS = common dso_local global i32 0, align 4
@RTTMin = common dso_local global i32 0, align 4
@RTTMax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@RTTTotal = common dso_local global i32 0, align 4
@IDS_DEST_NET_UNREACHABLE = common dso_local global i32 0, align 4
@IDS_DEST_HOST_UNREACHABLE = common dso_local global i32 0, align 4
@IDS_TTL_EXPIRED = common dso_local global i32 0, align 4
@IDS_REPLY_STATUS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IDS_REPLY_BYTES = common dso_local global i32 0, align 4
@IDS_REPLY_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ping() #0 {
  %1 = alloca %struct.sockaddr_in6*, align 8
  %2 = alloca %struct.sockaddr_in6*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6, align 8
  %6 = alloca %struct.sockaddr_in6, align 8
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %1, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load i32, i32* @RequestSize, align 4
  %15 = call %struct.sockaddr_in6* @malloc(i32 %14)
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %2, align 8
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %17 = icmp eq %struct.sockaddr_in6* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = load i32, i32* @StdErr, align 4
  %20 = load i32, i32* @IDS_NO_RESOURCES, align 4
  %21 = call i32 (i32, i32, ...) @ConResPrintf(i32 %19, i32 %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %0
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %25 = load i32, i32* @RequestSize, align 4
  %26 = call i32 @ZeroMemory(%struct.sockaddr_in6* %24, i32 %25)
  %27 = load i64, i64* @Family, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @RequestSize, align 4
  %42 = load i32, i32* @SIZEOF_ICMP_ERROR, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @SIZEOF_IO_STATUS_BLOCK, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call %struct.sockaddr_in6* @malloc(i32 %48)
  store %struct.sockaddr_in6* %49, %struct.sockaddr_in6** %1, align 8
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %51 = icmp eq %struct.sockaddr_in6* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load i32, i32* @StdErr, align 4
  %54 = load i32, i32* @IDS_NO_RESOURCES, align 4
  %55 = call i32 (i32, i32, ...) @ConResPrintf(i32 %53, i32 %54)
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %57 = call i32 @free(%struct.sockaddr_in6* %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %40
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ZeroMemory(%struct.sockaddr_in6* %60, i32 %61)
  %63 = load i32, i32* @EchosSent, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @EchosSent, align 4
  %65 = load i64, i64* @Family, align 8
  %66 = load i64, i64* @AF_INET6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = call i32 @ZeroMemory(%struct.sockaddr_in6* %5, i32 24)
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 3
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @hIcmpFile, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Target, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.sockaddr_in6*
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %78 = load i32, i32* @RequestSize, align 4
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @Timeout, align 4
  %82 = call i32 @Icmp6SendEcho2(i32 %72, i32* null, i32* null, i32* null, %struct.sockaddr_in6* %5, %struct.sockaddr_in6* %76, %struct.sockaddr_in6* %77, i32 %78, i32* @IpOptions, %struct.sockaddr_in6* %79, i32 %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %98

83:                                               ; preds = %59
  %84 = load i32, i32* @hIcmpFile, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Target, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_20__*
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %93 = load i32, i32* @RequestSize, align 4
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @Timeout, align 4
  %97 = call i32 @IcmpSendEcho2(i32 %84, i32* null, i32* null, i32* null, i32 %91, %struct.sockaddr_in6* %92, i32 %93, i32* @IpOptions, %struct.sockaddr_in6* %94, i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %83, %68
  %99 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %100 = call i32 @free(%struct.sockaddr_in6* %99)
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = call i32 (...) @GetLastError()
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  switch i32 %105, label %110 [
    i32 130, label %106
  ]

106:                                              ; preds = %103
  %107 = load i32, i32* @StdOut, align 4
  %108 = load i32, i32* @IDS_REQUEST_TIMED_OUT, align 4
  %109 = call i32 (i32, i32, ...) @ConResPrintf(i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %103
  %111 = load i32, i32* @StdOut, align 4
  %112 = load i32, i32* @IDS_TRANSMIT_FAILED, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i32, i32, ...) @ConResPrintf(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %106
  br label %336

116:                                              ; preds = %98
  %117 = load i32, i32* @EchosReceived, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @EchosReceived, align 4
  %119 = call i32 @ZeroMemory(%struct.sockaddr_in6* %7, i32 24)
  %120 = call i32 @ZeroMemory(%struct.sockaddr_in6* %6, i32 24)
  %121 = load i64, i64* @Family, align 8
  %122 = load i64, i64* @AF_INET6, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %226

124:                                              ; preds = %116
  %125 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %126 = bitcast %struct.sockaddr_in6* %125 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %10, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = bitcast i32* %128 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %129, %struct.TYPE_21__** %11, align 8
  %130 = load i64, i64* @AF_INET6, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 3
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @CopyMemory(i32 %135, i32 %138, i32 4)
  %140 = ptrtoint %struct.sockaddr_in6* %6 to i64
  store i64 %140, i64* %8, align 8
  store i32 24, i32* %9, align 4
  %141 = load i64, i64* %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @Address, align 4
  %144 = load i32, i32* @NI_MAXHOST, align 4
  %145 = load i32, i32* @NI_NUMERICHOST, align 4
  %146 = call i32 @GetNameInfoW(i64 %141, i32 %142, i32 %143, i32 %144, i32* null, i32 0, i32 %145)
  %147 = load i32, i32* @StdOut, align 4
  %148 = load i32, i32* @IDS_REPLY_FROM, align 4
  %149 = load i32, i32* @Address, align 4
  %150 = call i32 (i32, i32, ...) @ConResPrintf(i32 %147, i32 %148, i32 %149)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %218 [
    i32 129, label %154
    i32 131, label %206
    i32 132, label %210
    i32 128, label %214
  ]

154:                                              ; preds = %124
  %155 = load i32, i32* @EchosSuccessful, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @EchosSuccessful, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @StdOut, align 4
  %163 = load i32, i32* @IDS_REPLY_TIME_0MS, align 4
  %164 = call i32 (i32, i32, ...) @ConResPrintf(i32 %162, i32 %163)
  br label %172

165:                                              ; preds = %154
  %166 = load i32, i32* @StdOut, align 4
  %167 = load i32, i32* @IDS_REPLY_TIME_MS, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i32, ...) @ConResPrintf(i32 %166, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %165, %161
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @RTTMin, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* @RTTMin, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178, %172
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* @RTTMin, align 4
  br label %185

185:                                              ; preds = %181, %178
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @RTTMax, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* @RTTMax, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191, %185
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* @RTTMax, align 4
  br label %198

198:                                              ; preds = %194, %191
  %199 = load i32, i32* @StdOut, align 4
  %200 = call i32 @ConPuts(i32 %199, i8* bitcast ([2 x i32]* @.str to i8*))
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @RTTTotal, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* @RTTTotal, align 4
  br label %225

206:                                              ; preds = %124
  %207 = load i32, i32* @StdOut, align 4
  %208 = load i32, i32* @IDS_DEST_NET_UNREACHABLE, align 4
  %209 = call i32 (i32, i32, ...) @ConResPrintf(i32 %207, i32 %208)
  br label %225

210:                                              ; preds = %124
  %211 = load i32, i32* @StdOut, align 4
  %212 = load i32, i32* @IDS_DEST_HOST_UNREACHABLE, align 4
  %213 = call i32 (i32, i32, ...) @ConResPrintf(i32 %211, i32 %212)
  br label %225

214:                                              ; preds = %124
  %215 = load i32, i32* @StdOut, align 4
  %216 = load i32, i32* @IDS_TTL_EXPIRED, align 4
  %217 = call i32 (i32, i32, ...) @ConResPrintf(i32 %215, i32 %216)
  br label %225

218:                                              ; preds = %124
  %219 = load i32, i32* @StdOut, align 4
  %220 = load i32, i32* @IDS_REPLY_STATUS, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32, i32, ...) @ConResPrintf(i32 %219, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %218, %214, %210, %206, %198
  br label %335

226:                                              ; preds = %116
  %227 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %228 = bitcast %struct.sockaddr_in6* %227 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %12, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 4
  store i32* %230, i32** %13, align 8
  %231 = load i32, i32* @AF_INET, align 4
  %232 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  %233 = load i32*, i32** %13, align 8
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = ptrtoint %struct.sockaddr_in6* %7 to i64
  store i64 %238, i64* %8, align 8
  store i32 24, i32* %9, align 4
  %239 = load i64, i64* %8, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @Address, align 4
  %242 = load i32, i32* @NI_MAXHOST, align 4
  %243 = load i32, i32* @NI_NUMERICHOST, align 4
  %244 = call i32 @GetNameInfoW(i64 %239, i32 %240, i32 %241, i32 %242, i32* null, i32 0, i32 %243)
  %245 = load i32, i32* @StdOut, align 4
  %246 = load i32, i32* @IDS_REPLY_FROM, align 4
  %247 = load i32, i32* @Address, align 4
  %248 = call i32 (i32, i32, ...) @ConResPrintf(i32 %245, i32 %246, i32 %247)
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  switch i32 %251, label %327 [
    i32 129, label %252
    i32 131, label %315
    i32 132, label %319
    i32 128, label %323
  ]

252:                                              ; preds = %226
  %253 = load i32, i32* @EchosSuccessful, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* @EchosSuccessful, align 4
  %255 = load i32, i32* @StdOut, align 4
  %256 = load i32, i32* @IDS_REPLY_BYTES, align 4
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i32, i32, ...) @ConResPrintf(i32 %255, i32 %256, i32 %259)
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %252
  %266 = load i32, i32* @StdOut, align 4
  %267 = load i32, i32* @IDS_REPLY_TIME_0MS, align 4
  %268 = call i32 (i32, i32, ...) @ConResPrintf(i32 %266, i32 %267)
  br label %276

269:                                              ; preds = %252
  %270 = load i32, i32* @StdOut, align 4
  %271 = load i32, i32* @IDS_REPLY_TIME_MS, align 4
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i32, i32, ...) @ConResPrintf(i32 %270, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %269, %265
  %277 = load i32, i32* @StdOut, align 4
  %278 = load i32, i32* @IDS_REPLY_TTL, align 4
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i32, i32, ...) @ConResPrintf(i32 %277, i32 %278, i32 %282)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @RTTMin, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %292, label %289

289:                                              ; preds = %276
  %290 = load i32, i32* @RTTMin, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289, %276
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* @RTTMin, align 4
  br label %296

296:                                              ; preds = %292, %289
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @RTTMax, align 4
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %305, label %302

302:                                              ; preds = %296
  %303 = load i32, i32* @RTTMax, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %302, %296
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* @RTTMax, align 4
  br label %309

309:                                              ; preds = %305, %302
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @RTTTotal, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* @RTTTotal, align 4
  br label %334

315:                                              ; preds = %226
  %316 = load i32, i32* @StdOut, align 4
  %317 = load i32, i32* @IDS_DEST_NET_UNREACHABLE, align 4
  %318 = call i32 (i32, i32, ...) @ConResPrintf(i32 %316, i32 %317)
  br label %334

319:                                              ; preds = %226
  %320 = load i32, i32* @StdOut, align 4
  %321 = load i32, i32* @IDS_DEST_HOST_UNREACHABLE, align 4
  %322 = call i32 (i32, i32, ...) @ConResPrintf(i32 %320, i32 %321)
  br label %334

323:                                              ; preds = %226
  %324 = load i32, i32* @StdOut, align 4
  %325 = load i32, i32* @IDS_TTL_EXPIRED, align 4
  %326 = call i32 (i32, i32, ...) @ConResPrintf(i32 %324, i32 %325)
  br label %334

327:                                              ; preds = %226
  %328 = load i32, i32* @StdOut, align 4
  %329 = load i32, i32* @IDS_REPLY_STATUS, align 4
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i32, i32, ...) @ConResPrintf(i32 %328, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %327, %323, %319, %315, %309
  br label %335

335:                                              ; preds = %334, %225
  br label %336

336:                                              ; preds = %335, %115
  %337 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %1, align 8
  %338 = call i32 @free(%struct.sockaddr_in6* %337)
  ret void
}

declare dso_local %struct.sockaddr_in6* @malloc(i32) #1

declare dso_local i32 @ConResPrintf(i32, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ZeroMemory(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @free(%struct.sockaddr_in6*) #1

declare dso_local i32 @Icmp6SendEcho2(i32, i32*, i32*, i32*, %struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.sockaddr_in6*, i32, i32*, %struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @IcmpSendEcho2(i32, i32*, i32*, i32*, i32, %struct.sockaddr_in6*, i32, i32*, %struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CopyMemory(i32, i32, i32) #1

declare dso_local i32 @GetNameInfoW(i64, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
