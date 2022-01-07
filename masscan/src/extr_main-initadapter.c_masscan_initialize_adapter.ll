; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-initadapter.c_masscan_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-initadapter.c_masscan_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_8__*, i32, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i64, i8*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"if: initializing adapter interface\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"FAIL: could not determine default interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"FAIL:... try \22--interface ethX\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"if: interface=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"FAIL: failed to detect IP of interface \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c" [hint] did you spell the name correctly?\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c" [hint] if it has no IP address, manually set with \22--adapter-ip 192.168.100.5\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"if:%s: adapter-ip=%u.%u.%u.%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"FAIL: failed to detect MAC address of interface: \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c" [hint] try something like \22--adapter-mac 00-11-22-33-44-55\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"if:%s: adapter-mac=%02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"if:%s:init: failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"fUD3\22\11\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"if:%s: looking for default gateway\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"if:%s: router-ip=%u.%u.%u.%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"if:%s:arp: resolving IPv4 address\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"if:%s: router-mac=%02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"FAIL: failed to detect router for interface: \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [79 x i8] c" [hint] try something like \22--router-mac 66-55-44-33-22-11\22 to specify router\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c" [hint] try something like \22--interface eth0\22 to change interface\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"if:%s: initialization done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @masscan_initialize_adapter(%struct.Masscan* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Masscan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %17 = icmp eq %struct.Masscan* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %373

19:                                               ; preds = %4
  %20 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %22 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %34 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  br label %59

41:                                               ; preds = %19
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %42, align 16
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %44 = call i32 @rawsock_get_default_interface(i8* %43, i32 256)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %373

57:                                               ; preds = %47
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %57, %32
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %63 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %59
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @rawsock_get_adapter_ip(i8* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %79 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %77, i32* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %89 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %87, i32* %96, align 4
  %97 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %98 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %74, %59
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %373

117:                                              ; preds = %106
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = lshr i32 %119, 24
  %121 = and i32 %120, 255
  %122 = load i32, i32* %12, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = load i32, i32* %12, align 4
  %126 = lshr i32 %125, 8
  %127 = and i32 %126, 255
  %128 = load i32, i32* %12, align 4
  %129 = lshr i32 %128, 0
  %130 = and i32 %129, 255
  %131 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %118, i32 %121, i32 %124, i32 %127, i32 %130)
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %134 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @memcpy(i8* %132, i8* %140, i32 6)
  %142 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %143 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %117
  %152 = load i8*, i8** %8, align 8
  %153 = call i64 @memcmp(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @rawsock_get_adapter_mac(i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @memcmp(i8* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %373

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169, %117
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 4
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 5
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* %171, i32 %175, i32 %179, i32 %183, i32 %187, i32 %191, i32 %195)
  %197 = load i8*, i8** %10, align 8
  %198 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %199 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %202 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %205 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %209 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %212 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %216 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %215, i32 0, i32 0
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %224 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @rawsock_init_adapter(i8* %197, i32 %200, i32 %203, i32 %207, i32 %210, i8* %214, i32 %222, i32 %230)
  %232 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %233 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %232, i32 0, i32 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 5
  store i32 %231, i32* %238, align 4
  %239 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %240 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %239, i32 0, i32 0
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %170
  %249 = load i8*, i8** %10, align 8
  %250 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %249)
  store i32 -1, i32* %5, align 4
  br label %373

251:                                              ; preds = %170
  %252 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %253 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load i8*, i8** %8, align 8
  %261 = load i8*, i8** %10, align 8
  %262 = call i32 @rawsock_ignore_transmits(i32 %259, i8* %260, i8* %261)
  %263 = load i8*, i8** %9, align 8
  %264 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %265 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %264, i32 0, i32 0
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @memcpy(i8* %263, i8* %271, i32 6)
  %273 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %274 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %251
  %278 = load i8*, i8** %9, align 8
  %279 = call i32 @memcpy(i8* %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  br label %335

280:                                              ; preds = %251
  %281 = load i8*, i8** %9, align 8
  %282 = call i64 @memcmp(i8* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %334

284:                                              ; preds = %280
  %285 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %286 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %285, i32 0, i32 0
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  store i32 %292, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %293 = load i8*, i8** %10, align 8
  %294 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %293)
  %295 = load i32, i32* %14, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %284
  %298 = load i8*, i8** %10, align 8
  %299 = call i32 @rawsock_get_default_gateway(i8* %298, i32* %14)
  store i32 %299, i32* %15, align 4
  br label %300

300:                                              ; preds = %297, %284
  %301 = load i32, i32* %15, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %333

303:                                              ; preds = %300
  %304 = load i8*, i8** %10, align 8
  %305 = load i32, i32* %14, align 4
  %306 = lshr i32 %305, 24
  %307 = and i32 %306, 255
  %308 = load i32, i32* %14, align 4
  %309 = lshr i32 %308, 16
  %310 = and i32 %309, 255
  %311 = load i32, i32* %14, align 4
  %312 = lshr i32 %311, 8
  %313 = and i32 %312, 255
  %314 = load i32, i32* %14, align 4
  %315 = lshr i32 %314, 0
  %316 = and i32 %315, 255
  %317 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %304, i32 %307, i32 %310, i32 %313, i32 %316)
  %318 = load i8*, i8** %10, align 8
  %319 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* %318)
  %320 = load %struct.Masscan*, %struct.Masscan** %6, align 8
  %321 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %320, i32 0, i32 0
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %12, align 4
  %329 = load i8*, i8** %8, align 8
  %330 = load i32, i32* %14, align 4
  %331 = load i8*, i8** %9, align 8
  %332 = call i32 @arp_resolve_sync(i32 %327, i32 %328, i8* %329, i32 %330, i8* %331)
  br label %333

333:                                              ; preds = %303, %300
  br label %334

334:                                              ; preds = %333, %280
  br label %335

335:                                              ; preds = %334, %277
  %336 = load i8*, i8** %10, align 8
  %337 = load i8*, i8** %9, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 0
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = load i8*, i8** %9, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = load i8*, i8** %9, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = load i8*, i8** %9, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 3
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = load i8*, i8** %9, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 4
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = load i8*, i8** %9, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 5
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8* %336, i32 %340, i32 %344, i32 %348, i32 %352, i32 %356, i32 %360)
  %362 = load i8*, i8** %9, align 8
  %363 = call i64 @memcmp(i8* %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %335
  %366 = load i8*, i8** %10, align 8
  %367 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i8* %366)
  %368 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.19, i64 0, i64 0))
  %369 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %373

370:                                              ; preds = %335
  %371 = load i8*, i8** %10, align 8
  %372 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %371)
  store i32 0, i32* %5, align 4
  br label %373

373:                                              ; preds = %370, %365, %248, %163, %109, %52, %18
  %374 = load i32, i32* %5, align 4
  ret i32 %374
}

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i32 @rawsock_get_default_interface(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @rawsock_get_adapter_ip(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @rawsock_get_adapter_mac(i8*, i8*) #1

declare dso_local i32 @rawsock_init_adapter(i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rawsock_ignore_transmits(i32, i8*, i8*) #1

declare dso_local i32 @rawsock_get_default_gateway(i8*, i32*) #1

declare dso_local i32 @arp_resolve_sync(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
