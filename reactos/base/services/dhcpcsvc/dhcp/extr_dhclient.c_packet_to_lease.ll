; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_packet_to_lease.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_packet_to_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.packet = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"dhcpoffer: no memory to record lease.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dhcpoffer: no memory for option %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid lease option - ignoring offer\00", align 1
@DHO_DHCP_OPTION_OVERLOAD = common dso_local global i64 0, align 8
@DHCP_SNAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"dhcpoffer: no memory for server name.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Bogus server name %s\00", align 1
@DHCP_FILE_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"dhcpoffer: no memory for filename.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.client_lease* @packet_to_lease(%struct.packet* %0) #0 {
  %2 = alloca %struct.client_lease*, align 8
  %3 = alloca %struct.packet*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %3, align 8
  %6 = call i8* @malloc(i32 56)
  %7 = bitcast i8* %6 to %struct.client_lease*
  store %struct.client_lease* %7, %struct.client_lease** %4, align 8
  %8 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %9 = icmp ne %struct.client_lease* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

12:                                               ; preds = %1
  %13 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %14 = call i32 @memset(%struct.client_lease* %13, i32 0, i32 56)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %130, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %133

18:                                               ; preds = %15
  %19 = load %struct.packet*, %struct.packet** %3, align 8
  %20 = getelementptr inbounds %struct.packet, %struct.packet* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %129

28:                                               ; preds = %18
  %29 = load %struct.packet*, %struct.packet** %3, align 8
  %30 = getelementptr inbounds %struct.packet, %struct.packet* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = call i8* @malloc(i32 %37)
  %39 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %40 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %38, i8** %45, align 8
  %46 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %47 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %59 = call i32 @free_client_lease(%struct.client_lease* %58)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

60:                                               ; preds = %28
  %61 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %62 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.packet*, %struct.packet** %3, align 8
  %70 = getelementptr inbounds %struct.packet, %struct.packet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.packet*, %struct.packet** %3, align 8
  %78 = getelementptr inbounds %struct.packet, %struct.packet* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i8* %68, i32* %76, i32 %84)
  %86 = load %struct.packet*, %struct.packet** %3, align 8
  %87 = getelementptr inbounds %struct.packet, %struct.packet* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %96 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i64 %94, i64* %101, align 8
  %102 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %103 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %111 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %109, i64 %117
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %60
  %120 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @check_option(%struct.client_lease* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %127 = call i32 @free_client_lease(%struct.client_lease* %126)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %18
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %15

133:                                              ; preds = %15
  %134 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %135 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 4, i32* %136, align 8
  %137 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %138 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.packet*, %struct.packet** %3, align 8
  %142 = getelementptr inbounds %struct.packet, %struct.packet* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %146 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memcpy(i8* %140, i32* %144, i32 %148)
  %150 = load %struct.packet*, %struct.packet** %3, align 8
  %151 = getelementptr inbounds %struct.packet, %struct.packet* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %133
  %159 = load %struct.packet*, %struct.packet** %3, align 8
  %160 = getelementptr inbounds %struct.packet, %struct.packet* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 2
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %223, label %170

170:                                              ; preds = %158, %133
  %171 = load %struct.packet*, %struct.packet** %3, align 8
  %172 = getelementptr inbounds %struct.packet, %struct.packet* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %223

179:                                              ; preds = %170
  %180 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i8* @malloc(i32 %181)
  %183 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %184 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %186 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %179
  %190 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %191 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %192 = call i32 @free_client_lease(%struct.client_lease* %191)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

193:                                              ; preds = %179
  %194 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %195 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.packet*, %struct.packet** %3, align 8
  %198 = getelementptr inbounds %struct.packet, %struct.packet* %197, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %203 = call i32 @memcpy(i8* %196, i32* %201, i32 %202)
  %204 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %205 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 0, i8* %209, align 1
  %210 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %211 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @res_hnok(i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %193
  %216 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %217 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %218)
  %220 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %221 = call i32 @free_client_lease(%struct.client_lease* %220)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

222:                                              ; preds = %193
  br label %223

223:                                              ; preds = %222, %170, %158
  %224 = load %struct.packet*, %struct.packet** %3, align 8
  %225 = getelementptr inbounds %struct.packet, %struct.packet* %224, i32 0, i32 1
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %223
  %233 = load %struct.packet*, %struct.packet** %3, align 8
  %234 = getelementptr inbounds %struct.packet, %struct.packet* %233, i32 0, i32 1
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 1
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %284, label %244

244:                                              ; preds = %232, %223
  %245 = load %struct.packet*, %struct.packet** %3, align 8
  %246 = getelementptr inbounds %struct.packet, %struct.packet* %245, i32 0, i32 0
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %284

253:                                              ; preds = %244
  %254 = load i32, i32* @DHCP_FILE_LEN, align 4
  %255 = add nsw i32 %254, 1
  %256 = call i8* @malloc(i32 %255)
  %257 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %258 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  %259 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %260 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %267, label %263

263:                                              ; preds = %253
  %264 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %265 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %266 = call i32 @free_client_lease(%struct.client_lease* %265)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %286

267:                                              ; preds = %253
  %268 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %269 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.packet*, %struct.packet** %3, align 8
  %272 = getelementptr inbounds %struct.packet, %struct.packet* %271, i32 0, i32 0
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* @DHCP_FILE_LEN, align 4
  %277 = call i32 @memcpy(i8* %270, i32* %275, i32 %276)
  %278 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %279 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load i32, i32* @DHCP_FILE_LEN, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  store i8 0, i8* %283, align 1
  br label %284

284:                                              ; preds = %267, %244, %232
  %285 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  store %struct.client_lease* %285, %struct.client_lease** %2, align 8
  br label %286

286:                                              ; preds = %284, %263, %215, %189, %124, %55, %10
  %287 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  ret %struct.client_lease* %287
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @memset(%struct.client_lease*, i32, i32) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @check_option(%struct.client_lease*, i32) #1

declare dso_local i32 @res_hnok(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
