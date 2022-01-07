; ModuleID = '/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_parse_command_line.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_parse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i64 }

@freq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"perf.plugin %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@perf_events = common dso_local global %struct.perf_event* null, align 8
@EV_ID_END = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@EV_ID_CPU_CYCLES = common dso_local global i64 0, align 8
@EV_ID_REF_CPU_CYCLES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@EV_ID_INSTRUCTIONS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@EV_ID_BRANCH_INSTRUCTIONS = common dso_local global i64 0, align 8
@EV_ID_BRANCH_MISSES = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@EV_ID_CACHE_REFERENCES = common dso_local global i64 0, align 8
@EV_ID_CACHE_MISSES = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@EV_ID_BUS_CYCLES = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"stalled\00", align 1
@EV_ID_STALLED_CYCLES_FRONTEND = common dso_local global i64 0, align 8
@EV_ID_STALLED_CYCLES_BACKEND = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"migrations\00", align 1
@EV_ID_CPU_MIGRATIONS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"alighnment\00", align 1
@EV_ID_ALIGNMENT_FAULTS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"emulation\00", align 1
@EV_ID_EMULATION_FAULTS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"L1D\00", align 1
@EV_ID_L1D_READ_ACCESS = common dso_local global i64 0, align 8
@EV_ID_L1D_READ_MISS = common dso_local global i64 0, align 8
@EV_ID_L1D_WRITE_ACCESS = common dso_local global i64 0, align 8
@EV_ID_L1D_WRITE_MISS = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"L1D-prefetch\00", align 1
@EV_ID_L1D_PREFETCH_ACCESS = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"L1I\00", align 1
@EV_ID_L1I_READ_ACCESS = common dso_local global i64 0, align 8
@EV_ID_L1I_READ_MISS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@EV_ID_LL_READ_ACCESS = common dso_local global i64 0, align 8
@EV_ID_LL_READ_MISS = common dso_local global i64 0, align 8
@EV_ID_LL_WRITE_ACCESS = common dso_local global i64 0, align 8
@EV_ID_LL_WRITE_MISS = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"DTLB\00", align 1
@EV_ID_DTLB_READ_ACCESS = common dso_local global i64 0, align 8
@EV_ID_DTLB_READ_MISS = common dso_local global i64 0, align 8
@EV_ID_DTLB_WRITE_ACCESS = common dso_local global i64 0, align 8
@EV_ID_DTLB_WRITE_MISS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"ITLB\00", align 1
@EV_ID_ITLB_READ_ACCESS = common dso_local global i64 0, align 8
@EV_ID_ITLB_READ_MISS = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [4 x i8] c"PBU\00", align 1
@EV_ID_PBU_READ_ACCESS = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [1636 x i8] c"\0A netdata perf.plugin %s\0A Copyright (C) 2019 Netdata Inc.\0A Released under GNU General Public License v3 or later.\0A All rights reserved.\0A\0A This program is a data collector plugin for netdata.\0A\0A Available command line options:\0A\0A  COLLECTION_FREQUENCY    data collection frequency in seconds\0A                          minimum: %d\0A\0A  all                     enable all charts\0A\0A  cycles                  enable CPU cycles chart\0A\0A  instructions            enable Instructions chart\0A\0A  branch                  enable Branch instructions chart\0A\0A  cache                   enable Cache operations chart\0A\0A  bus                     enable Bus cycles chart\0A\0A  stalled                 enable Stalled frontend and backend cycles chart\0A\0A  migrations              enable CPU migrations chart\0A\0A  alighnment              enable Alignment faults chart\0A\0A  emulation               enable Emulation faults chart\0A\0A  L1D                     enable L1D cache operations chart\0A\0A  L1D-prefetch            enable L1D prefetch cache operations chart\0A\0A  L1I                     enable L1I cache operations chart\0A\0A  LL                      enable LL cache operations chart\0A\0A  DTLB                    enable DTLB cache operations chart\0A\0A  ITLB                    enable ITLB cache operations chart\0A\0A  PBU                     enable PBU cache operations chart\0A\0A  debug                   enable verbose output\0A                          default: disabled\0A\0A  -v\0A  -V\0A  --version               print version and exit\0A\0A  -h\0A  --help                  print this message and exit\0A\0A For more information:\0A https://github.com/netdata/netdata/tree/master/collectors/perf.plugin\0A\0A\00", align 1
@update_every = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"ignoring parameter '%s'\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"no charts enabled - nothing to do.\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"DISABLE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_command_line(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %434, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %437

13:                                               ; preds = %9
  %14 = load i8**, i8*** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %13
  %23 = load i32, i32* @freq, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = load i8**, i8*** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @str2i(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 86400
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* @freq, align 4
  br label %434

39:                                               ; preds = %34, %25
  br label %427

40:                                               ; preds = %22, %13
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %40
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %48
  %57 = load i8**, i8*** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load i8**, i8*** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72, %64, %56, %48, %40
  %81 = load i8*, i8** @VERSION, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  %83 = call i32 @exit(i32 0) #3
  unreachable

84:                                               ; preds = %72
  %85 = load i8**, i8*** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  store %struct.perf_event* null, %struct.perf_event** %8, align 8
  %93 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i64 0
  store %struct.perf_event* %94, %struct.perf_event** %8, align 8
  br label %95

95:                                               ; preds = %104, %92
  %96 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @EV_ID_END, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %103 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %106 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %105, i32 1
  store %struct.perf_event* %106, %struct.perf_event** %8, align 8
  br label %95

107:                                              ; preds = %95
  store i32 1, i32* %6, align 4
  br label %434

108:                                              ; preds = %84
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %118 = load i64, i64* @EV_ID_CPU_CYCLES, align 8
  %119 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %117, i64 %118
  %120 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %122 = load i64, i64* @EV_ID_REF_CPU_CYCLES, align 8
  %123 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %121, i64 %122
  %124 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  store i32 1, i32* %6, align 4
  br label %434

125:                                              ; preds = %108
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %135 = load i64, i64* @EV_ID_INSTRUCTIONS, align 8
  %136 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %134, i64 %135
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  store i32 1, i32* %6, align 4
  br label %434

138:                                              ; preds = %125
  %139 = load i8**, i8*** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %138
  %147 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %148 = load i64, i64* @EV_ID_BRANCH_INSTRUCTIONS, align 8
  %149 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %147, i64 %148
  %150 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %152 = load i64, i64* @EV_ID_BRANCH_MISSES, align 8
  %153 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %151, i64 %152
  %154 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  store i32 1, i32* %6, align 4
  br label %434

155:                                              ; preds = %138
  %156 = load i8**, i8*** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %165 = load i64, i64* @EV_ID_CACHE_REFERENCES, align 8
  %166 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i64 %165
  %167 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %169 = load i64, i64* @EV_ID_CACHE_MISSES, align 8
  %170 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %168, i64 %169
  %171 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  store i32 1, i32* %6, align 4
  br label %434

172:                                              ; preds = %155
  %173 = load i8**, i8*** %4, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %182 = load i64, i64* @EV_ID_BUS_CYCLES, align 8
  %183 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %181, i64 %182
  %184 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  store i32 1, i32* %6, align 4
  br label %434

185:                                              ; preds = %172
  %186 = load i8**, i8*** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %195 = load i64, i64* @EV_ID_STALLED_CYCLES_FRONTEND, align 8
  %196 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %194, i64 %195
  %197 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %199 = load i64, i64* @EV_ID_STALLED_CYCLES_BACKEND, align 8
  %200 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %198, i64 %199
  %201 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  store i32 1, i32* %6, align 4
  br label %434

202:                                              ; preds = %185
  %203 = load i8**, i8*** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %202
  %211 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %212 = load i64, i64* @EV_ID_CPU_MIGRATIONS, align 8
  %213 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %211, i64 %212
  %214 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  store i32 1, i32* %6, align 4
  br label %434

215:                                              ; preds = %202
  %216 = load i8**, i8*** %4, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %225 = load i64, i64* @EV_ID_ALIGNMENT_FAULTS, align 8
  %226 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %224, i64 %225
  %227 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %226, i32 0, i32 1
  store i64 0, i64* %227, align 8
  store i32 1, i32* %6, align 4
  br label %434

228:                                              ; preds = %215
  %229 = load i8**, i8*** %4, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %233)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %228
  %237 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %238 = load i64, i64* @EV_ID_EMULATION_FAULTS, align 8
  %239 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %237, i64 %238
  %240 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  store i32 1, i32* %6, align 4
  br label %434

241:                                              ; preds = %228
  %242 = load i8**, i8*** %4, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %241
  %250 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %251 = load i64, i64* @EV_ID_L1D_READ_ACCESS, align 8
  %252 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %250, i64 %251
  %253 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %252, i32 0, i32 1
  store i64 0, i64* %253, align 8
  %254 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %255 = load i64, i64* @EV_ID_L1D_READ_MISS, align 8
  %256 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %254, i64 %255
  %257 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %256, i32 0, i32 1
  store i64 0, i64* %257, align 8
  %258 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %259 = load i64, i64* @EV_ID_L1D_WRITE_ACCESS, align 8
  %260 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %258, i64 %259
  %261 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %260, i32 0, i32 1
  store i64 0, i64* %261, align 8
  %262 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %263 = load i64, i64* @EV_ID_L1D_WRITE_MISS, align 8
  %264 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %262, i64 %263
  %265 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %264, i32 0, i32 1
  store i64 0, i64* %265, align 8
  store i32 1, i32* %6, align 4
  br label %434

266:                                              ; preds = %241
  %267 = load i8**, i8*** %4, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %271)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %266
  %275 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %276 = load i64, i64* @EV_ID_L1D_PREFETCH_ACCESS, align 8
  %277 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %275, i64 %276
  %278 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %277, i32 0, i32 1
  store i64 0, i64* %278, align 8
  store i32 1, i32* %6, align 4
  br label %434

279:                                              ; preds = %266
  %280 = load i8**, i8*** %4, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %284)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %279
  %288 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %289 = load i64, i64* @EV_ID_L1I_READ_ACCESS, align 8
  %290 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %288, i64 %289
  %291 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %293 = load i64, i64* @EV_ID_L1I_READ_MISS, align 8
  %294 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %292, i64 %293
  %295 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %294, i32 0, i32 1
  store i64 0, i64* %295, align 8
  store i32 1, i32* %6, align 4
  br label %434

296:                                              ; preds = %279
  %297 = load i8**, i8*** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %301)
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %296
  %305 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %306 = load i64, i64* @EV_ID_LL_READ_ACCESS, align 8
  %307 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %305, i64 %306
  %308 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %307, i32 0, i32 1
  store i64 0, i64* %308, align 8
  %309 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %310 = load i64, i64* @EV_ID_LL_READ_MISS, align 8
  %311 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %309, i64 %310
  %312 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %311, i32 0, i32 1
  store i64 0, i64* %312, align 8
  %313 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %314 = load i64, i64* @EV_ID_LL_WRITE_ACCESS, align 8
  %315 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %313, i64 %314
  %316 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %315, i32 0, i32 1
  store i64 0, i64* %316, align 8
  %317 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %318 = load i64, i64* @EV_ID_LL_WRITE_MISS, align 8
  %319 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %317, i64 %318
  %320 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %319, i32 0, i32 1
  store i64 0, i64* %320, align 8
  store i32 1, i32* %6, align 4
  br label %434

321:                                              ; preds = %296
  %322 = load i8**, i8*** %4, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8*, i8** %322, i64 %324
  %326 = load i8*, i8** %325, align 8
  %327 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %326)
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %321
  %330 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %331 = load i64, i64* @EV_ID_DTLB_READ_ACCESS, align 8
  %332 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %330, i64 %331
  %333 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %332, i32 0, i32 1
  store i64 0, i64* %333, align 8
  %334 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %335 = load i64, i64* @EV_ID_DTLB_READ_MISS, align 8
  %336 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %334, i64 %335
  %337 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %336, i32 0, i32 1
  store i64 0, i64* %337, align 8
  %338 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %339 = load i64, i64* @EV_ID_DTLB_WRITE_ACCESS, align 8
  %340 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %338, i64 %339
  %341 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %340, i32 0, i32 1
  store i64 0, i64* %341, align 8
  %342 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %343 = load i64, i64* @EV_ID_DTLB_WRITE_MISS, align 8
  %344 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %342, i64 %343
  %345 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %344, i32 0, i32 1
  store i64 0, i64* %345, align 8
  store i32 1, i32* %6, align 4
  br label %434

346:                                              ; preds = %321
  %347 = load i8**, i8*** %4, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %351)
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %346
  %355 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %356 = load i64, i64* @EV_ID_ITLB_READ_ACCESS, align 8
  %357 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %355, i64 %356
  %358 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %357, i32 0, i32 1
  store i64 0, i64* %358, align 8
  %359 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %360 = load i64, i64* @EV_ID_ITLB_READ_MISS, align 8
  %361 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %359, i64 %360
  %362 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %361, i32 0, i32 1
  store i64 0, i64* %362, align 8
  store i32 1, i32* %6, align 4
  br label %434

363:                                              ; preds = %346
  %364 = load i8**, i8*** %4, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %368)
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %363
  %372 = load %struct.perf_event*, %struct.perf_event** @perf_events, align 8
  %373 = load i64, i64* @EV_ID_PBU_READ_ACCESS, align 8
  %374 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %372, i64 %373
  %375 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %374, i32 0, i32 1
  store i64 0, i64* %375, align 8
  store i32 1, i32* %6, align 4
  br label %434

376:                                              ; preds = %363
  %377 = load i8**, i8*** %4, align 8
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %377, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %381)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %376
  store i32 1, i32* @debug, align 4
  br label %434

385:                                              ; preds = %376
  %386 = load i8**, i8*** %4, align 8
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8*, i8** %386, i64 %388
  %390 = load i8*, i8** %389, align 8
  %391 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %390)
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %401, label %393

393:                                              ; preds = %385
  %394 = load i8**, i8*** %4, align 8
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %398)
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %393, %385
  %402 = load i32, i32* @stderr, align 4
  %403 = load i8*, i8** @VERSION, align 8
  %404 = load i32, i32* @update_every, align 4
  %405 = call i32 @fprintf(i32 %402, i8* getelementptr inbounds ([1636 x i8], [1636 x i8]* @.str.26, i64 0, i64 0), i8* %403, i32 %404)
  %406 = call i32 @exit(i32 1) #3
  unreachable

407:                                              ; preds = %393
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  br label %425

425:                                              ; preds = %424
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426, %39
  %428 = load i8**, i8*** %4, align 8
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8*, i8** %428, i64 %430
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %432)
  br label %434

434:                                              ; preds = %427, %384, %371, %354, %329, %304, %287, %274, %249, %236, %223, %210, %193, %180, %163, %146, %133, %116, %107, %37
  %435 = load i32, i32* %5, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %5, align 4
  br label %9

437:                                              ; preds = %9
  %438 = load i32, i32* %6, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %444, label %440

440:                                              ; preds = %437
  %441 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  %442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %443 = call i32 @exit(i32 1) #3
  unreachable

444:                                              ; preds = %437
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @str2i(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
