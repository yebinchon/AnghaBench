; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_send_request.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.interface_info = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, %struct.TYPE_16__, i8*, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__*, i64 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.in_addr }
%struct.TYPE_15__ = type { i64 }

@S_REBOOTING = common dso_local global i64 0, align 8
@S_REQUESTING = common dso_local global i64 0, align 8
@S_INIT = common dso_local global i8* null, align 8
@INADDR_BROADCAST = common dso_local global %struct.in_addr zeroinitializer, align 4
@REMOTE_PORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DHCPREQUEST on %s to %s port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_request(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.interface_info*
  store %struct.interface_info* %10, %struct.interface_info** %3, align 8
  %11 = call i32 @time(i64* %7)
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %14 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %12, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S_REBOOTING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %29 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S_REQUESTING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %27, %1
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %36, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load i8*, i8** @S_INIT, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %49 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i64 %47, i64* %51, align 8
  %52 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %53 = call i32 @cancel_timeout(void (i8*)* @send_request, %struct.interface_info* %52)
  %54 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %55 = call i32 @state_init(%struct.interface_info* %54)
  br label %384

56:                                               ; preds = %35, %27
  %57 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %58 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @S_REBOOTING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %56
  %65 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %66 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %64
  %72 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %73 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %82 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %89 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 9
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %80, %71, %64, %56
  %93 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %94 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @S_REQUESTING, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %92
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %103 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %101, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %100
  %111 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %112 = call %struct.TYPE_15__* @AdapterFindInfo(%struct.interface_info* %111)
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = icmp ne %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @DeleteIPAddress(i64 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %110
  %123 = load i8*, i8** @S_INIT, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %126 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  %129 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %130 = call i32 @state_init(%struct.interface_info* %129)
  br label %384

131:                                              ; preds = %100, %92
  %132 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %133 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %131
  %139 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %140 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %147 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i32 %145, i32* %149, align 8
  br label %166

150:                                              ; preds = %131
  %151 = call i32 (...) @rand()
  %152 = ashr i32 %151, 2
  %153 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %154 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 2, %157
  %159 = srem i32 %152, %158
  %160 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %161 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, %159
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %150, %138
  %167 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %168 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %173 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %171, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %166
  %181 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %182 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %181, i32 0, i32 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %187, 2
  %189 = call i32 (...) @rand()
  %190 = ashr i32 %189, 2
  %191 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %192 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %191, i32 0, i32 0
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = srem i32 %190, %195
  %197 = add nsw i32 %188, %196
  %198 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %199 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  store i32 %197, i32* %201, align 8
  br label %202

202:                                              ; preds = %180, %166
  %203 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %204 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %203, i32 0, i32 0
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @S_REQUESTING, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %243

210:                                              ; preds = %202
  %211 = load i64, i64* %7, align 8
  %212 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %213 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %212, i32 0, i32 0
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %211, %217
  %219 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %220 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %219, i32 0, i32 0
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 6
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %218, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %210
  %228 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %229 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %228, i32 0, i32 0
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 6
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* %7, align 8
  %236 = sub nsw i64 %234, %235
  %237 = add nsw i64 %236, 1
  %238 = trunc i64 %237 to i32
  %239 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %240 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %239, i32 0, i32 0
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i32 %238, i32* %242, align 8
  br label %243

243:                                              ; preds = %227, %210, %202
  %244 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 16)
  %245 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %246 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %245, i32 0, i32 0
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @S_REQUESTING, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %270, label %252

252:                                              ; preds = %243
  %253 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %254 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %253, i32 0, i32 0
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @S_REBOOTING, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %270, label %260

260:                                              ; preds = %252
  %261 = load i64, i64* %7, align 8
  %262 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %263 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %262, i32 0, i32 0
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %261, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %260, %252, %243
  %271 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = bitcast %struct.in_addr* %272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %273, i8* align 4 bitcast (%struct.in_addr* @INADDR_BROADCAST to i8*), i64 4, i1 false)
  br label %284

274:                                              ; preds = %260
  %275 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %278 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %277, i32 0, i32 0
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @memcpy(%struct.in_addr* %276, i32 %282, i32 4)
  br label %284

284:                                              ; preds = %274, %270
  %285 = load i32, i32* @REMOTE_PORT, align 4
  %286 = call i8* @htons(i32 %285)
  %287 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %286, i8** %287, align 8
  %288 = load i32, i32* @AF_INET, align 4
  %289 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %288, i32* %289, align 4
  %290 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %291 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %290, i32 0, i32 0
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @S_REQUESTING, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %284
  %298 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %299 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %298, i32 0, i32 0
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @memcpy(%struct.in_addr* %5, i32 %305, i32 4)
  br label %310

307:                                              ; preds = %284
  %308 = load i32, i32* @INADDR_ANY, align 4
  %309 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %308, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %297
  %311 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %312 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %311, i32 0, i32 0
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @S_REQUESTING, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %310
  %319 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %320 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %319, i32 0, i32 0
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 5
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %325 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %324, i32 0, i32 0
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  store i8* %323, i8** %328, align 8
  br label %348

329:                                              ; preds = %310
  %330 = load i32, i32* %6, align 4
  %331 = icmp slt i32 %330, 65536
  br i1 %331, label %332, label %340

332:                                              ; preds = %329
  %333 = load i32, i32* %6, align 4
  %334 = call i8* @htons(i32 %333)
  %335 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %336 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %335, i32 0, i32 0
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  store i8* %334, i8** %339, align 8
  br label %347

340:                                              ; preds = %329
  %341 = call i8* @htons(i32 65535)
  %342 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %343 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %342, i32 0, i32 0
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 0
  store i8* %341, i8** %346, align 8
  br label %347

347:                                              ; preds = %340, %332
  br label %348

348:                                              ; preds = %347, %318
  %349 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %350 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @inet_ntoa(i32 %355)
  %357 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @ntohs(i8* %358)
  %360 = call i32 @note(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %351, i32 %356, i32 %359)
  %361 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %362 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %363 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %362, i32 0, i32 0
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 4
  %366 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %367 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %366, i32 0, i32 0
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @send_packet(%struct.interface_info* %361, %struct.TYPE_16__* %365, i32 %370, i32 %372, %struct.sockaddr_in* %4, i32* null)
  %374 = load i64, i64* %7, align 8
  %375 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %376 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %375, i32 0, i32 0
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %374, %380
  %382 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %383 = call i32 @add_timeout(i64 %381, void (i8*)* @send_request, %struct.interface_info* %382)
  br label %384

384:                                              ; preds = %348, %122, %45
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @cancel_timeout(void (i8*)*, %struct.interface_info*) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

declare dso_local %struct.TYPE_15__* @AdapterFindInfo(%struct.interface_info*) #1

declare dso_local i32 @DeleteIPAddress(i64) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.in_addr*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @note(i8*, i32, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @send_packet(%struct.interface_info*, %struct.TYPE_16__*, i32, i32, %struct.sockaddr_in*, i32*) #1

declare dso_local i32 @add_timeout(i64, void (i8*)*, %struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
