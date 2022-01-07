; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_setup_adapter.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_setup_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.client_lease = type { %struct.TYPE_11__*, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.iaddr = type { i64 }

@__const.setup_adapter.Buffer = private unnamed_addr constant [200 x i8] c"SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DHO_SUBNET_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"DhcpIPAddress\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"DhcpSubnetMask\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"EnableDHCP\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AddIPAddress: %lx\0A\00", align 1
@DHO_ROUTERS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"CreateIpForwardEntry: %lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"DhcpDefaultGateway\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_adapter(%struct.TYPE_12__* %0, %struct.client_lease* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca %struct.iaddr, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.client_lease* %1, %struct.client_lease** %4, align 8
  %12 = bitcast [200 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([200 x i8], [200 x i8]* @__const.setup_adapter.Buffer, i32 0, i32 0), i64 200, i1 false)
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcat(i8* %13, i8* %17)
  %19 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %21 = load i32, i32* @KEY_WRITE, align 4
  %22 = call i64 @RegOpenKeyExA(i32 %19, i8* %20, i32 0, i32 %21, i32** %7)
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DeleteIPAddress(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %40 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %169

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %51 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %58 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i64 %49, i32* %56, i32 %63)
  %65 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %66 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = call i32 @AddIPAddress(i64 %70, i64 %74, i32 %78, i32* %80, i32* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %161

86:                                               ; preds = %47
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @REG_SZ, align 4
  %89 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %90 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @piaddr(i64 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %96 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @piaddr(i64 %98)
  %100 = call i32 @strlen(i8* %99)
  %101 = add nsw i32 %100, 1
  %102 = call i32 @RegSetValueExA(i32* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %88, i32 %94, i32 %101)
  %103 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %103, align 16
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %145, %86
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %107 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %105, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %104
  %115 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 %117
  %119 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %120 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @sprintf(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %134 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %132, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %114
  %142 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %143 = call i32 @strcat(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %114
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %104

148:                                              ; preds = %104
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @REG_SZ, align 4
  %151 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %152 = ptrtoint i8* %151 to i32
  %153 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %154 = call i32 @strlen(i8* %153)
  %155 = add nsw i32 %154, 1
  %156 = call i32 @RegSetValueExA(i32* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %150, i32 %152, i32 %155)
  store i32 1, i32* %9, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* @REG_DWORD, align 4
  %159 = ptrtoint i32* %9 to i32
  %160 = call i32 @RegSetValueExA(i32* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %158, i32 %159, i32 4)
  br label %161

161:                                              ; preds = %148, %47
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @NT_SUCCESS(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %161
  br label %169

169:                                              ; preds = %168, %38
  %170 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %171 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %170, i32 0, i32 0
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load i64, i64* @DHO_ROUTERS, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %285

178:                                              ; preds = %169
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %178
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = call i32 @DeleteIpForwardEntry(%struct.TYPE_14__* %202)
  br label %204

204:                                              ; preds = %200, %178
  %205 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %206 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %205, i32 0, i32 0
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = load i64, i64* @DHO_ROUTERS, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = bitcast i32* %211 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  store i64 %213, i64* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = call i32 @CreateIpForwardEntry(%struct.TYPE_14__* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @NT_SUCCESS(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %204
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %223, %204
  %227 = load i32*, i32** %7, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %284

229:                                              ; preds = %226
  %230 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %230, align 16
  store i32 0, i32* %8, align 4
  br label %231

231:                                              ; preds = %272, %229
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %234 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = load i64, i64* @DHO_ROUTERS, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %232, %239
  br i1 %240, label %241, label %275

241:                                              ; preds = %231
  %242 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %243 = call i32 @strlen(i8* %242)
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 %244
  %246 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %247 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %246, i32 0, i32 0
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load i64, i64* @DHO_ROUTERS, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @sprintf(i8* %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  %260 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %261 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %260, i32 0, i32 0
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = load i64, i64* @DHO_ROUTERS, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %259, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %241
  %269 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %270 = call i32 @strcat(i8* %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %241
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %231

275:                                              ; preds = %231
  %276 = load i32*, i32** %7, align 8
  %277 = load i32, i32* @REG_SZ, align 4
  %278 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %279 = ptrtoint i8* %278 to i32
  %280 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %281 = call i32 @strlen(i8* %280)
  %282 = add nsw i32 %281, 1
  %283 = call i32 @RegSetValueExA(i32* %276, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %277, i32 %279, i32 %282)
  br label %284

284:                                              ; preds = %275, %226
  br label %285

285:                                              ; preds = %284, %169
  %286 = load i32*, i32** %7, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32*, i32** %7, align 8
  %290 = call i32 @RegCloseKey(i32* %289)
  br label %291

291:                                              ; preds = %288, %285
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32**) #2

declare dso_local i32 @DeleteIPAddress(i32) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

declare dso_local i32 @AddIPAddress(i64, i64, i32, i32*, i32*) #2

declare dso_local i32 @RegSetValueExA(i32*, i8*, i32, i32, i32, i32) #2

declare dso_local i8* @piaddr(i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @warning(i8*, i32) #2

declare dso_local i32 @DeleteIpForwardEntry(%struct.TYPE_14__*) #2

declare dso_local i32 @CreateIpForwardEntry(%struct.TYPE_14__*) #2

declare dso_local i32 @RegCloseKey(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
