; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpoffer.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpoffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.interface_info* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i32, i32* }
%struct.interface_info = type { %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.client_lease*, %struct.TYPE_13__, %struct.TYPE_11__*, i32 }
%struct.client_lease = type { i32, %struct.client_lease*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@DHO_DHCP_MESSAGE_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"DHCPOFFER\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BOOTREPLY\00", align 1
@S_SELECTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s from %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s isn't satisfactory.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s already seen.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"packet_to_lease failed.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Arp check failed\0A\00", align 1
@send_discover = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcpoffer(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %2, align 8
  %11 = load %struct.packet*, %struct.packet** %2, align 8
  %12 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 3
  %13 = load %struct.interface_info*, %struct.interface_info** %12, align 8
  store %struct.interface_info* %13, %struct.interface_info** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.packet*, %struct.packet** %2, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %23, i8** %9, align 8
  %24 = call i32 @time(i32* %10)
  %25 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %26 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @S_SELECTING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %78, label %32

32:                                               ; preds = %1
  %33 = load %struct.packet*, %struct.packet** %2, align 8
  %34 = getelementptr inbounds %struct.packet, %struct.packet* %33, i32 0, i32 3
  %35 = load %struct.interface_info*, %struct.interface_info** %34, align 8
  %36 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.packet*, %struct.packet** %2, align 8
  %41 = getelementptr inbounds %struct.packet, %struct.packet* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %78, label %46

46:                                               ; preds = %32
  %47 = load %struct.packet*, %struct.packet** %2, align 8
  %48 = getelementptr inbounds %struct.packet, %struct.packet* %47, i32 0, i32 3
  %49 = load %struct.interface_info*, %struct.interface_info** %48, align 8
  %50 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.packet*, %struct.packet** %2, align 8
  %54 = getelementptr inbounds %struct.packet, %struct.packet* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %78, label %59

59:                                               ; preds = %46
  %60 = load %struct.packet*, %struct.packet** %2, align 8
  %61 = getelementptr inbounds %struct.packet, %struct.packet* %60, i32 0, i32 3
  %62 = load %struct.interface_info*, %struct.interface_info** %61, align 8
  %63 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.packet*, %struct.packet** %2, align 8
  %67 = getelementptr inbounds %struct.packet, %struct.packet* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.packet*, %struct.packet** %2, align 8
  %72 = getelementptr inbounds %struct.packet, %struct.packet* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @memcmp(i32 %65, i32* %70, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59, %46, %32, %1
  br label %330

79:                                               ; preds = %59
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.packet*, %struct.packet** %2, align 8
  %82 = getelementptr inbounds %struct.packet, %struct.packet* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @piaddr(i32 %83)
  %85 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %123, %79
  %87 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %88 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %86
  %100 = load %struct.packet*, %struct.packet** %2, align 8
  %101 = getelementptr inbounds %struct.packet, %struct.packet* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %104 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %99
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %330

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %86

126:                                              ; preds = %86
  %127 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %128 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load %struct.client_lease*, %struct.client_lease** %130, align 8
  store %struct.client_lease* %131, %struct.client_lease** %4, align 8
  br label %132

132:                                              ; preds = %162, %126
  %133 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %134 = icmp ne %struct.client_lease* %133, null
  br i1 %134, label %135, label %166

135:                                              ; preds = %132
  %136 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %137 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %144 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.packet*, %struct.packet** %2, align 8
  %148 = getelementptr inbounds %struct.packet, %struct.packet* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %152 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = call i64 @memcmp(i32 %146, i32* %150, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %142
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  br label %330

161:                                              ; preds = %142, %135
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %164 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %163, i32 0, i32 1
  %165 = load %struct.client_lease*, %struct.client_lease** %164, align 8
  store %struct.client_lease* %165, %struct.client_lease** %4, align 8
  br label %132

166:                                              ; preds = %132
  %167 = load %struct.packet*, %struct.packet** %2, align 8
  %168 = call %struct.client_lease* @packet_to_lease(%struct.packet* %167)
  store %struct.client_lease* %168, %struct.client_lease** %4, align 8
  %169 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %170 = icmp ne %struct.client_lease* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %330

173:                                              ; preds = %166
  %174 = load %struct.packet*, %struct.packet** %2, align 8
  %175 = getelementptr inbounds %struct.packet, %struct.packet* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %184 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %173
  %186 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %187 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %186, i32 0, i32 0
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %192 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %194 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %195 = call i32 @check_arp(%struct.interface_info* %193, %struct.client_lease* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %185
  %198 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %330

199:                                              ; preds = %185
  %200 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %201 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %200, i32 0, i32 0
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %206 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %205, i32 0, i32 0
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 5
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %204, %211
  store i32 %212, i32* %8, align 4
  %213 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %214 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %219 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %218, i32 0, i32 0
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %217, %223
  br i1 %224, label %225, label %257

225:                                              ; preds = %199
  %226 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %227 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %231 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %230, i32 0, i32 0
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %237 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %236, i32 0, i32 0
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @memcmp(i32 %229, i32* %235, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %225
  %245 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %246 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %245, i32 0, i32 0
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 3
  %249 = load %struct.client_lease*, %struct.client_lease** %248, align 8
  %250 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %251 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %250, i32 0, i32 1
  store %struct.client_lease* %249, %struct.client_lease** %251, align 8
  %252 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %253 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %254 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %253, i32 0, i32 0
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 3
  store %struct.client_lease* %252, %struct.client_lease** %256, align 8
  br label %307

257:                                              ; preds = %225, %199
  %258 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %259 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %258, i32 0, i32 0
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = load %struct.client_lease*, %struct.client_lease** %261, align 8
  %263 = icmp ne %struct.client_lease* %262, null
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* %8, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  store i32 0, i32* %7, align 4
  br label %271

271:                                              ; preds = %270, %264, %257
  %272 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %273 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %272, i32 0, i32 1
  store %struct.client_lease* null, %struct.client_lease** %273, align 8
  %274 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %275 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %274, i32 0, i32 0
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 3
  %278 = load %struct.client_lease*, %struct.client_lease** %277, align 8
  %279 = icmp ne %struct.client_lease* %278, null
  br i1 %279, label %286, label %280

280:                                              ; preds = %271
  %281 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %282 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %283 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %282, i32 0, i32 0
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 3
  store %struct.client_lease* %281, %struct.client_lease** %285, align 8
  br label %306

286:                                              ; preds = %271
  %287 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %288 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %287, i32 0, i32 0
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = load %struct.client_lease*, %struct.client_lease** %290, align 8
  store %struct.client_lease* %291, %struct.client_lease** %5, align 8
  br label %292

292:                                              ; preds = %298, %286
  %293 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %294 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %293, i32 0, i32 1
  %295 = load %struct.client_lease*, %struct.client_lease** %294, align 8
  %296 = icmp ne %struct.client_lease* %295, null
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  br label %298

298:                                              ; preds = %297
  %299 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %300 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %299, i32 0, i32 1
  %301 = load %struct.client_lease*, %struct.client_lease** %300, align 8
  store %struct.client_lease* %301, %struct.client_lease** %5, align 8
  br label %292

302:                                              ; preds = %292
  %303 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %304 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %305 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %304, i32 0, i32 1
  store %struct.client_lease* %303, %struct.client_lease** %305, align 8
  br label %306

306:                                              ; preds = %302, %280
  br label %307

307:                                              ; preds = %306, %244
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %10, align 4
  %310 = sub nsw i32 %308, %309
  %311 = load i32, i32* %7, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %307
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %314, %315
  store i32 %316, i32* %8, align 4
  br label %317

317:                                              ; preds = %313, %307
  %318 = load i32, i32* %8, align 4
  %319 = icmp sle i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %322 = call i32 @state_selecting(%struct.interface_info* %321)
  br label %330

323:                                              ; preds = %317
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %326 = call i32 @add_timeout(i32 %324, i32 (%struct.interface_info*)* @state_selecting, %struct.interface_info* %325)
  %327 = load i32, i32* @send_discover, align 4
  %328 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %329 = call i32 @cancel_timeout(i32 %327, %struct.interface_info* %328)
  br label %330

330:                                              ; preds = %78, %119, %158, %171, %197, %323, %320
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local %struct.client_lease* @packet_to_lease(%struct.packet*) #1

declare dso_local i32 @check_arp(%struct.interface_info*, %struct.client_lease*) #1

declare dso_local i32 @state_selecting(%struct.interface_info*) #1

declare dso_local i32 @add_timeout(i32, i32 (%struct.interface_info*)*, %struct.interface_info*) #1

declare dso_local i32 @cancel_timeout(i32, %struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
