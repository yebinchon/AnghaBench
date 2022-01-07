; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/extr_common.c_handle_qSupported.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/extr_common.c_handle_qSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PacketSize=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"qXfer:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"btrace:read\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"btrace-conf:read\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"spu:read\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"spu:write\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"libraries:read\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"libraries-svr4:read\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"memory-map:read\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"auxv:read\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"exec-file:read\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"features:read\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"sdata:read\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"siginfo:read\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"siginfo:write\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"threads:read\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"traceframe-info:read\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"uib:read\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fdpic:read\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"osdata:read\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Qbtrace\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c":off\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c":bts\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c":pt\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"-conf:bts:size\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c":-conf:pt:size\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"-conf:pt:size\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"QNonStop\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"QCatchSyscalls\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"QPassSignals\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"QStartNoAckMode\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"QAgent\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"QAllow\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"QDisableRandomization\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"QTBuffer:size\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"QThreadEvents\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"QThreadSuffixSupported\00", align 1
@GDB_REMOTE_TYPE_LLDB = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [24 x i8] c"QListThreadsInStopReply\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"multiprocess\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"qEcho\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_qSupported(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %668

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i8* @strtok(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %663, %359, %51, %13
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %665

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @r_str_startswith(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = call i32 @strtoul(i8* %28, i32* null, i32 16)
  %30 = call i32 @R_MIN(i32 %29, i32 2048)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 34
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 34
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @R_MAX(i32 %37, i32 64)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 34
  store i32 %38, i32* %41, align 8
  br label %663

42:                                               ; preds = %21
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @r_str_startswith(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %343

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %4, align 8
  br label %18

53:                                               ; preds = %46
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @r_str_startswith(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 43
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %342

70:                                               ; preds = %53
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @r_str_startswith(i8* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 43
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %341

85:                                               ; preds = %70
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @r_str_startswith(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 43
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  br label %340

100:                                              ; preds = %85
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @r_str_startswith(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 43
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  br label %339

115:                                              ; preds = %100
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @r_str_startswith(i8* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 43
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  br label %338

130:                                              ; preds = %115
  %131 = load i8*, i8** %5, align 8
  %132 = call i64 @r_str_startswith(i8* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 43
  %141 = zext i1 %140 to i32
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  store i32 %141, i32* %144, align 4
  br label %337

145:                                              ; preds = %130
  %146 = load i8*, i8** %5, align 8
  %147 = call i64 @r_str_startswith(i8* %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 43
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 6
  store i32 %156, i32* %159, align 8
  br label %336

160:                                              ; preds = %145
  %161 = load i8*, i8** %5, align 8
  %162 = call i64 @r_str_startswith(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i8*, i8** %5, align 8
  %166 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 43
  %171 = zext i1 %170 to i32
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 7
  store i32 %171, i32* %174, align 4
  br label %335

175:                                              ; preds = %160
  %176 = load i8*, i8** %5, align 8
  %177 = call i64 @r_str_startswith(i8* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = load i8*, i8** %5, align 8
  %181 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 43
  %186 = zext i1 %185 to i32
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 8
  store i32 %186, i32* %189, align 8
  br label %334

190:                                              ; preds = %175
  %191 = load i8*, i8** %5, align 8
  %192 = call i64 @r_str_startswith(i8* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i8*, i8** %5, align 8
  %196 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 43
  %201 = zext i1 %200 to i32
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 9
  store i32 %201, i32* %204, align 4
  br label %333

205:                                              ; preds = %190
  %206 = load i8*, i8** %5, align 8
  %207 = call i64 @r_str_startswith(i8* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load i8*, i8** %5, align 8
  %211 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 43
  %216 = zext i1 %215 to i32
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 10
  store i32 %216, i32* %219, align 8
  br label %332

220:                                              ; preds = %205
  %221 = load i8*, i8** %5, align 8
  %222 = call i64 @r_str_startswith(i8* %221, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = load i8*, i8** %5, align 8
  %226 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 43
  %231 = zext i1 %230 to i32
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 11
  store i32 %231, i32* %234, align 4
  br label %331

235:                                              ; preds = %220
  %236 = load i8*, i8** %5, align 8
  %237 = call i64 @r_str_startswith(i8* %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  %240 = load i8*, i8** %5, align 8
  %241 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 43
  %246 = zext i1 %245 to i32
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 12
  store i32 %246, i32* %249, align 8
  br label %330

250:                                              ; preds = %235
  %251 = load i8*, i8** %5, align 8
  %252 = call i64 @r_str_startswith(i8* %251, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %250
  %255 = load i8*, i8** %5, align 8
  %256 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 43
  %261 = zext i1 %260 to i32
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 13
  store i32 %261, i32* %264, align 4
  br label %329

265:                                              ; preds = %250
  %266 = load i8*, i8** %5, align 8
  %267 = call i64 @r_str_startswith(i8* %266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %265
  %270 = load i8*, i8** %5, align 8
  %271 = call i64 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 43
  %276 = zext i1 %275 to i32
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 14
  store i32 %276, i32* %279, align 8
  br label %328

280:                                              ; preds = %265
  %281 = load i8*, i8** %5, align 8
  %282 = call i64 @r_str_startswith(i8* %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = load i8*, i8** %5, align 8
  %286 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 43
  %291 = zext i1 %290 to i32
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 15
  store i32 %291, i32* %294, align 4
  br label %327

295:                                              ; preds = %280
  %296 = load i8*, i8** %5, align 8
  %297 = call i64 @r_str_startswith(i8* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %295
  %300 = load i8*, i8** %5, align 8
  %301 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 43
  %306 = zext i1 %305 to i32
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 16
  store i32 %306, i32* %309, align 8
  br label %326

310:                                              ; preds = %295
  %311 = load i8*, i8** %5, align 8
  %312 = call i64 @r_str_startswith(i8* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %310
  %315 = load i8*, i8** %5, align 8
  %316 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 43
  %321 = zext i1 %320 to i32
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 17
  store i32 %321, i32* %324, align 4
  br label %325

325:                                              ; preds = %314, %310
  br label %326

326:                                              ; preds = %325, %299
  br label %327

327:                                              ; preds = %326, %284
  br label %328

328:                                              ; preds = %327, %269
  br label %329

329:                                              ; preds = %328, %254
  br label %330

330:                                              ; preds = %329, %239
  br label %331

331:                                              ; preds = %330, %224
  br label %332

332:                                              ; preds = %331, %209
  br label %333

333:                                              ; preds = %332, %194
  br label %334

334:                                              ; preds = %333, %179
  br label %335

335:                                              ; preds = %334, %164
  br label %336

336:                                              ; preds = %335, %149
  br label %337

337:                                              ; preds = %336, %134
  br label %338

338:                                              ; preds = %337, %119
  br label %339

339:                                              ; preds = %338, %104
  br label %340

340:                                              ; preds = %339, %89
  br label %341

341:                                              ; preds = %340, %74
  br label %342

342:                                              ; preds = %341, %59
  br label %662

343:                                              ; preds = %42
  %344 = load i8*, i8** %4, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 81
  br i1 %348, label %349, label %625

349:                                              ; preds = %343
  %350 = load i8*, i8** %4, align 8
  %351 = call i64 @r_str_startswith(i8* %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %440

353:                                              ; preds = %349
  %354 = load i8*, i8** %4, align 8
  %355 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %353
  %360 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %360, i8** %4, align 8
  br label %18

361:                                              ; preds = %353
  %362 = load i8*, i8** %4, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 7
  store i8* %363, i8** %6, align 8
  %364 = load i8*, i8** %6, align 8
  %365 = call i64 @r_str_startswith(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %377

367:                                              ; preds = %361
  %368 = load i8*, i8** %6, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 4
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 43
  %373 = zext i1 %372 to i32
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 18
  store i32 %373, i32* %376, align 8
  br label %439

377:                                              ; preds = %361
  %378 = load i8*, i8** %6, align 8
  %379 = call i64 @r_str_startswith(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %377
  %382 = load i8*, i8** %6, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 4
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 43
  %387 = zext i1 %386 to i32
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 19
  store i32 %387, i32* %390, align 4
  br label %438

391:                                              ; preds = %377
  %392 = load i8*, i8** %6, align 8
  %393 = call i64 @r_str_startswith(i8* %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %405

395:                                              ; preds = %391
  %396 = load i8*, i8** %6, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 3
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 43
  %401 = zext i1 %400 to i32
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 20
  store i32 %401, i32* %404, align 8
  br label %437

405:                                              ; preds = %391
  %406 = load i8*, i8** %6, align 8
  %407 = call i64 @r_str_startswith(i8* %406, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %420

409:                                              ; preds = %405
  %410 = load i8*, i8** %6, align 8
  %411 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %412 = getelementptr inbounds i8, i8* %410, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %414, 43
  %416 = zext i1 %415 to i32
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 21
  store i32 %416, i32* %419, align 4
  br label %436

420:                                              ; preds = %405
  %421 = load i8*, i8** %6, align 8
  %422 = call i64 @r_str_startswith(i8* %421, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %435

424:                                              ; preds = %420
  %425 = load i8*, i8** %6, align 8
  %426 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = icmp eq i32 %429, 43
  %431 = zext i1 %430 to i32
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 22
  store i32 %431, i32* %434, align 8
  br label %435

435:                                              ; preds = %424, %420
  br label %436

436:                                              ; preds = %435, %409
  br label %437

437:                                              ; preds = %436, %395
  br label %438

438:                                              ; preds = %437, %381
  br label %439

439:                                              ; preds = %438, %367
  br label %624

440:                                              ; preds = %349
  %441 = load i8*, i8** %4, align 8
  %442 = call i64 @r_str_startswith(i8* %441, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %455

444:                                              ; preds = %440
  %445 = load i8*, i8** %4, align 8
  %446 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %447 = getelementptr inbounds i8, i8* %445, i64 %446
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp eq i32 %449, 43
  %451 = zext i1 %450 to i32
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 23
  store i32 %451, i32* %454, align 4
  br label %623

455:                                              ; preds = %440
  %456 = load i8*, i8** %4, align 8
  %457 = call i64 @r_str_startswith(i8* %456, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %455
  %460 = load i8*, i8** %4, align 8
  %461 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %462 = getelementptr inbounds i8, i8* %460, i64 %461
  %463 = load i8, i8* %462, align 1
  %464 = sext i8 %463 to i32
  %465 = icmp eq i32 %464, 43
  %466 = zext i1 %465 to i32
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 24
  store i32 %466, i32* %469, align 8
  br label %622

470:                                              ; preds = %455
  %471 = load i8*, i8** %4, align 8
  %472 = call i64 @r_str_startswith(i8* %471, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %485

474:                                              ; preds = %470
  %475 = load i8*, i8** %4, align 8
  %476 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %477 = getelementptr inbounds i8, i8* %475, i64 %476
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %479, 43
  %481 = zext i1 %480 to i32
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 25
  store i32 %481, i32* %484, align 4
  br label %621

485:                                              ; preds = %470
  %486 = load i8*, i8** %4, align 8
  %487 = call i64 @r_str_startswith(i8* %486, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %485
  %490 = load i8*, i8** %4, align 8
  %491 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %492 = getelementptr inbounds i8, i8* %490, i64 %491
  %493 = load i8, i8* %492, align 1
  %494 = sext i8 %493 to i32
  %495 = icmp eq i32 %494, 43
  %496 = zext i1 %495 to i32
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 26
  store i32 %496, i32* %499, align 8
  br label %620

500:                                              ; preds = %485
  %501 = load i8*, i8** %4, align 8
  %502 = call i64 @r_str_startswith(i8* %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %515

504:                                              ; preds = %500
  %505 = load i8*, i8** %4, align 8
  %506 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %507 = getelementptr inbounds i8, i8* %505, i64 %506
  %508 = load i8, i8* %507, align 1
  %509 = sext i8 %508 to i32
  %510 = icmp eq i32 %509, 43
  %511 = zext i1 %510 to i32
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 27
  store i32 %511, i32* %514, align 4
  br label %619

515:                                              ; preds = %500
  %516 = load i8*, i8** %4, align 8
  %517 = call i64 @r_str_startswith(i8* %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %530

519:                                              ; preds = %515
  %520 = load i8*, i8** %4, align 8
  %521 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %522 = getelementptr inbounds i8, i8* %520, i64 %521
  %523 = load i8, i8* %522, align 1
  %524 = sext i8 %523 to i32
  %525 = icmp eq i32 %524, 43
  %526 = zext i1 %525 to i32
  %527 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %528, i32 0, i32 28
  store i32 %526, i32* %529, align 8
  br label %618

530:                                              ; preds = %515
  %531 = load i8*, i8** %4, align 8
  %532 = call i64 @r_str_startswith(i8* %531, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %545

534:                                              ; preds = %530
  %535 = load i8*, i8** %4, align 8
  %536 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %537 = getelementptr inbounds i8, i8* %535, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = sext i8 %538 to i32
  %540 = icmp eq i32 %539, 43
  %541 = zext i1 %540 to i32
  %542 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 29
  store i32 %541, i32* %544, align 4
  br label %617

545:                                              ; preds = %530
  %546 = load i8*, i8** %4, align 8
  %547 = call i64 @r_str_startswith(i8* %546, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %560

549:                                              ; preds = %545
  %550 = load i8*, i8** %4, align 8
  %551 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  %552 = getelementptr inbounds i8, i8* %550, i64 %551
  %553 = load i8, i8* %552, align 1
  %554 = sext i8 %553 to i32
  %555 = icmp eq i32 %554, 43
  %556 = zext i1 %555 to i32
  %557 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 30
  store i32 %556, i32* %559, align 8
  br label %616

560:                                              ; preds = %545
  %561 = load i8*, i8** %4, align 8
  %562 = call i64 @r_str_startswith(i8* %561, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %575

564:                                              ; preds = %560
  %565 = load i8*, i8** %4, align 8
  %566 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %567 = getelementptr inbounds i8, i8* %565, i64 %566
  %568 = load i8, i8* %567, align 1
  %569 = sext i8 %568 to i32
  %570 = icmp eq i32 %569, 43
  %571 = zext i1 %570 to i32
  %572 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i32 0, i32 31
  store i32 %571, i32* %574, align 4
  br label %615

575:                                              ; preds = %560
  %576 = load i8*, i8** %4, align 8
  %577 = call i64 @r_str_startswith(i8* %576, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0))
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %594

579:                                              ; preds = %575
  %580 = load i8*, i8** @GDB_REMOTE_TYPE_LLDB, align 8
  %581 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %581, i32 0, i32 1
  store i8* %580, i8** %582, align 8
  %583 = load i8*, i8** %4, align 8
  %584 = call i64 @strlen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0))
  %585 = getelementptr inbounds i8, i8* %583, i64 %584
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i32
  %588 = icmp eq i32 %587, 43
  %589 = zext i1 %588 to i32
  %590 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %592, i32 0, i32 0
  store i32 %589, i32* %593, align 4
  br label %614

594:                                              ; preds = %575
  %595 = load i8*, i8** %4, align 8
  %596 = call i64 @r_str_startswith(i8* %595, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %613

598:                                              ; preds = %594
  %599 = load i8*, i8** @GDB_REMOTE_TYPE_LLDB, align 8
  %600 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %600, i32 0, i32 1
  store i8* %599, i8** %601, align 8
  %602 = load i8*, i8** %4, align 8
  %603 = call i64 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %604 = getelementptr inbounds i8, i8* %602, i64 %603
  %605 = load i8, i8* %604, align 1
  %606 = sext i8 %605 to i32
  %607 = icmp eq i32 %606, 43
  %608 = zext i1 %607 to i32
  %609 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %611, i32 0, i32 1
  store i32 %608, i32* %612, align 4
  br label %613

613:                                              ; preds = %598, %594
  br label %614

614:                                              ; preds = %613, %579
  br label %615

615:                                              ; preds = %614, %564
  br label %616

616:                                              ; preds = %615, %549
  br label %617

617:                                              ; preds = %616, %534
  br label %618

618:                                              ; preds = %617, %519
  br label %619

619:                                              ; preds = %618, %504
  br label %620

620:                                              ; preds = %619, %489
  br label %621

621:                                              ; preds = %620, %474
  br label %622

622:                                              ; preds = %621, %459
  br label %623

623:                                              ; preds = %622, %444
  br label %624

624:                                              ; preds = %623, %439
  br label %661

625:                                              ; preds = %343
  %626 = load i8*, i8** %4, align 8
  %627 = call i64 @r_str_startswith(i8* %626, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %640

629:                                              ; preds = %625
  %630 = load i8*, i8** %4, align 8
  %631 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %632 = getelementptr inbounds i8, i8* %630, i64 %631
  %633 = load i8, i8* %632, align 1
  %634 = sext i8 %633 to i32
  %635 = icmp eq i32 %634, 43
  %636 = zext i1 %635 to i32
  %637 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %638, i32 0, i32 32
  store i32 %636, i32* %639, align 8
  br label %660

640:                                              ; preds = %625
  %641 = load i8*, i8** %4, align 8
  %642 = call i64 @r_str_startswith(i8* %641, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %659

644:                                              ; preds = %640
  %645 = load i8*, i8** @GDB_REMOTE_TYPE_LLDB, align 8
  %646 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 1
  store i8* %645, i8** %647, align 8
  %648 = load i8*, i8** %4, align 8
  %649 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %650 = getelementptr inbounds i8, i8* %648, i64 %649
  %651 = load i8, i8* %650, align 1
  %652 = sext i8 %651 to i32
  %653 = icmp eq i32 %652, 43
  %654 = zext i1 %653 to i32
  %655 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %656 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %655, i32 0, i32 0
  %657 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %657, i32 0, i32 2
  store i32 %654, i32* %658, align 4
  br label %659

659:                                              ; preds = %644, %640
  br label %660

660:                                              ; preds = %659, %629
  br label %661

661:                                              ; preds = %660, %624
  br label %662

662:                                              ; preds = %661, %342
  br label %663

663:                                              ; preds = %662, %25
  %664 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %664, i8** %4, align 8
  br label %18

665:                                              ; preds = %18
  %666 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %667 = call i32 @send_ack(%struct.TYPE_8__* %666)
  store i32 %667, i32* %2, align 4
  br label %668

668:                                              ; preds = %665, %12
  %669 = load i32, i32* %2, align 4
  ret i32 %669
}

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32 @send_ack(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
