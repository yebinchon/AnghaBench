; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i32, double, i32, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@usec_start = common dso_local global i32 0, align 4
@global_now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"--nobacktrace\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--readscan\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"/etc/masscan/masscan.conf\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"libpcap: failed to load\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"FAIL: no ranges left to scan\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"   ...all ranges overlapped something in an excludefile range\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"FAIL: Attempted to add additional 'exclude' ranges after scan start.\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"   ...This messes things up the scan randomization, so you have to restart scan\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"=== benchmarking (%u-bits) ===\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"regression test: failed :( \0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"regression test: success!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x %struct.Masscan], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i32 (...) @pixie_gettime()
  store i32 %14, i32* @usec_start, align 4
  %15 = call i32 @time(i32 0)
  store i32 %15, i32* @global_now, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @pixie_backtrace_init(i8* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %43 = call i32 @memset(%struct.Masscan* %42, i32 0, i32 112)
  %44 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %45 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %44, i32 0, i32 0
  store i32 4, i32* %45, align 16
  %46 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %47 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 16
  %49 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %50 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = call i32 (...) @get_entropy()
  %53 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %54 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %53, i32 0, i32 18
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %56 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %55, i32 0, i32 1
  store i32 10, i32* %56, align 4
  %57 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %57, i32 0, i32 2
  store double 1.000000e+02, double* %58, align 8
  %59 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %59, i32 0, i32 3
  store i32 1, i32* %60, align 16
  %61 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %61, i32 0, i32 17
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %65 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %64, i32 0, i32 17
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %68 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %67, i32 0, i32 4
  store i32 60, i32* %68, align 4
  %69 = call i32 (...) @payloads_udp_create()
  %70 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %71 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %70, i32 0, i32 16
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = call i32 (...) @payloads_oproto_create()
  %74 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 16
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %78 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcpy_s(i32 %81, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %84 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %83, i32 0, i32 5
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = call i64 @masscan_conf_contains(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %85, i8** %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %41
  %90 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %91 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %90, i32 0, i32 6
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %41
  %93 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %94 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = call i64 @access(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %102 = call i32 @masscan_read_config_file(%struct.Masscan* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %92
  %105 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %106 = load i32, i32* %4, align 4
  %107 = load i8**, i8*** %5, align 8
  %108 = call i32 @masscan_command_line(%struct.Masscan* %105, i32 %106, i8** %107)
  %109 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %110 = call i32 @masscan_load_database_files(%struct.Masscan* %109)
  %111 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %112 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %111, i32 0, i32 14
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %117 = call i32 @scripting_init(%struct.Masscan* %116)
  br label %118

118:                                              ; preds = %115, %104
  %119 = call i64 (...) @pcap_init()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @LOG(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %118
  %124 = call i32 (...) @rawsock_init()
  %125 = call i32 (...) @snmp_init()
  %126 = call i32 (...) @x509_init()
  %127 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %128 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %127, i32 0, i32 11
  %129 = call i32 @rangelist_count(i32* %128)
  %130 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %131 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %130, i32 0, i32 10
  %132 = call i32 @rangelist_count(i32* %131)
  %133 = mul nsw i32 %129, %132
  store i32 %133, i32* %9, align 4
  %134 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %135 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %134, i32 0, i32 11
  %136 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %137 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %136, i32 0, i32 13
  %138 = call i32 @rangelist_exclude(i32* %135, i32* %137)
  %139 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %140 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %139, i32 0, i32 10
  %141 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %142 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %141, i32 0, i32 12
  %143 = call i32 @rangelist_exclude(i32* %140, i32* %142)
  %144 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %145 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %144, i32 0, i32 11
  %146 = call i32 @rangelist_count(i32* %145)
  %147 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %148 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %147, i32 0, i32 10
  %149 = call i32 @rangelist_count(i32* %148)
  %150 = mul nsw i32 %146, %149
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %123
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %158 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %159 = call i32 @exit(i32 1) #3
  unreachable

160:                                              ; preds = %153, %123
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %166 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 16
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %172 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  %173 = call i32 @exit(i32 1) #3
  unreachable

174:                                              ; preds = %164, %160
  %175 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %176 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 16
  switch i32 %177, label %348 [
    i32 134, label %178
    i32 129, label %180
    i32 133, label %183
    i32 132, label %186
    i32 135, label %188
    i32 131, label %209
    i32 130, label %212
    i32 136, label %261
    i32 128, label %273
  ]

178:                                              ; preds = %174
  %179 = call i32 (...) @masscan_usage()
  br label %348

180:                                              ; preds = %174
  %181 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %182 = call i32 @main_scan(%struct.Masscan* %181)
  store i32 %182, i32* %3, align 4
  br label %349

183:                                              ; preds = %174
  %184 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %185 = call i32 @main_listscan(%struct.Masscan* %184)
  store i32 0, i32* %3, align 4
  br label %349

186:                                              ; preds = %174
  %187 = call i32 (...) @rawsock_list_adapters()
  br label %348

188:                                              ; preds = %174
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %205, %188
  %190 = load i32, i32* %7, align 4
  %191 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %192 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 16
  %194 = icmp ult i32 %190, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %189
  %196 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %197 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %196, i32 0, i32 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @rawsock_selftest_if(i32 %203)
  br label %205

205:                                              ; preds = %195
  %206 = load i32, i32* %7, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %189

208:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %349

209:                                              ; preds = %174
  %210 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %211 = call i32 @main_readrange(%struct.Masscan* %210)
  store i32 0, i32* %3, align 4
  br label %349

212:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  br label %213

213:                                              ; preds = %229, %212
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %213
  %218 = load i8**, i8*** %5, align 8
  %219 = load i32, i32* %11, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @memcmp(i8* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load i32, i32* %11, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %232

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %11, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %11, align 4
  br label %213

232:                                              ; preds = %225, %213
  %233 = load i32, i32* %11, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %252, %232
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %235
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %12, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 45
  br label %249

249:                                              ; preds = %239, %235
  %250 = phi i1 [ false, %235 ], [ %248, %239 ]
  br i1 %250, label %251, label %255

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %12, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %235

255:                                              ; preds = %249
  %256 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load i8**, i8*** %5, align 8
  %260 = call i32 @read_binary_scanfile(%struct.Masscan* %256, i32 %257, i32 %258, i8** %259)
  br label %348

261:                                              ; preds = %174
  %262 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 64)
  %263 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %264 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 16
  %266 = call i32 @blackrock_benchmark(i32 %265)
  %267 = getelementptr inbounds [1 x %struct.Masscan], [1 x %struct.Masscan]* %6, i64 0, i64 0
  %268 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 16
  %270 = call i32 @blackrock2_benchmark(i32 %269)
  %271 = call i32 (...) @smack_benchmark()
  %272 = call i32 @exit(i32 1) #3
  unreachable

273:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  %274 = call i32 (...) @proto_coap_selftest()
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %13, align 4
  %277 = call i32 (...) @smack_selftest()
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %13, align 4
  %280 = call i32 (...) @sctp_selftest()
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %13, align 4
  %283 = call i32 (...) @base64_selftest()
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %13, align 4
  %286 = call i32 (...) @banner1_selftest()
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %13, align 4
  %289 = call i32 (...) @output_selftest()
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %13, align 4
  %292 = call i32 (...) @siphash24_selftest()
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %13, align 4
  %295 = call i32 (...) @ntp_selftest()
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %13, align 4
  %298 = call i32 (...) @snmp_selftest()
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %13, align 4
  %301 = call i32 (...) @payloads_udp_selftest()
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %13, align 4
  %304 = call i32 (...) @blackrock_selftest()
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %13, align 4
  %307 = call i32 (...) @rawsock_selftest()
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %13, align 4
  %310 = call i32 (...) @lcg_selftest()
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %13, align 4
  %313 = call i32 (...) @template_selftest()
  %314 = load i32, i32* %13, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %13, align 4
  %316 = call i32 (...) @ranges_selftest()
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %13, align 4
  %319 = call i32 (...) @rangefile_selftest()
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %13, align 4
  %322 = call i32 (...) @pixie_time_selftest()
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %13, align 4
  %325 = call i32 (...) @rte_ring_selftest()
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %13, align 4
  %328 = call i32 (...) @mainconf_selftest()
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %13, align 4
  %331 = call i32 (...) @zeroaccess_selftest()
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %13, align 4
  %334 = call i32 (...) @nmapserviceprobes_selftest()
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %13, align 4
  %337 = call i32 (...) @rstfilter_selftest()
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %13, align 4
  %340 = load i32, i32* %13, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %273
  %343 = load i32, i32* @stderr, align 4
  %344 = call i32 @fprintf(i32 %343, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %349

345:                                              ; preds = %273
  %346 = load i32, i32* @stderr, align 4
  %347 = call i32 @fprintf(i32 %346, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %349

348:                                              ; preds = %174, %255, %186, %178
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %348, %345, %342, %209, %208, %183, %180
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i32 @pixie_gettime(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pixie_backtrace_init(i8*) #1

declare dso_local i32 @memset(%struct.Masscan*, i32, i32) #1

declare dso_local i32 @get_entropy(...) #1

declare dso_local i32 @payloads_udp_create(...) #1

declare dso_local i32 @payloads_oproto_create(...) #1

declare dso_local i32 @strcpy_s(i32, i32, i8*) #1

declare dso_local i64 @masscan_conf_contains(i8*, i32, i8**) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @masscan_read_config_file(%struct.Masscan*, i8*) #1

declare dso_local i32 @masscan_command_line(%struct.Masscan*, i32, i8**) #1

declare dso_local i32 @masscan_load_database_files(%struct.Masscan*) #1

declare dso_local i32 @scripting_init(%struct.Masscan*) #1

declare dso_local i64 @pcap_init(...) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @rawsock_init(...) #1

declare dso_local i32 @snmp_init(...) #1

declare dso_local i32 @x509_init(...) #1

declare dso_local i32 @rangelist_count(i32*) #1

declare dso_local i32 @rangelist_exclude(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @masscan_usage(...) #1

declare dso_local i32 @main_scan(%struct.Masscan*) #1

declare dso_local i32 @main_listscan(%struct.Masscan*) #1

declare dso_local i32 @rawsock_list_adapters(...) #1

declare dso_local i32 @rawsock_selftest_if(i32) #1

declare dso_local i32 @main_readrange(%struct.Masscan*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read_binary_scanfile(%struct.Masscan*, i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @blackrock_benchmark(i32) #1

declare dso_local i32 @blackrock2_benchmark(i32) #1

declare dso_local i32 @smack_benchmark(...) #1

declare dso_local i32 @proto_coap_selftest(...) #1

declare dso_local i32 @smack_selftest(...) #1

declare dso_local i32 @sctp_selftest(...) #1

declare dso_local i32 @base64_selftest(...) #1

declare dso_local i32 @banner1_selftest(...) #1

declare dso_local i32 @output_selftest(...) #1

declare dso_local i32 @siphash24_selftest(...) #1

declare dso_local i32 @ntp_selftest(...) #1

declare dso_local i32 @snmp_selftest(...) #1

declare dso_local i32 @payloads_udp_selftest(...) #1

declare dso_local i32 @blackrock_selftest(...) #1

declare dso_local i32 @rawsock_selftest(...) #1

declare dso_local i32 @lcg_selftest(...) #1

declare dso_local i32 @template_selftest(...) #1

declare dso_local i32 @ranges_selftest(...) #1

declare dso_local i32 @rangefile_selftest(...) #1

declare dso_local i32 @pixie_time_selftest(...) #1

declare dso_local i32 @rte_ring_selftest(...) #1

declare dso_local i32 @mainconf_selftest(...) #1

declare dso_local i32 @zeroaccess_selftest(...) #1

declare dso_local i32 @nmapserviceprobes_selftest(...) #1

declare dso_local i32 @rstfilter_selftest(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
