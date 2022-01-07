; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_recvlogical.c_StreamLogicalLog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_recvlogical.c_StreamLogicalLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i32 }
%struct.timeval = type { i32, i32 }

@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@output_written_lsn = common dso_local global i64 0, align 8
@output_fsync_lsn = common dso_local global i64 0, align 8
@conn = common dso_local global i32* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"starting log streaming at %X/%X (slot %s)\00", align 1
@startpos = common dso_local global i32 0, align 4
@replication_slot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"START_REPLICATION SLOT \22%s\22 LOGICAL %X/%X\00", align 1
@noptions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@options = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@PGRES_COPY_BOTH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"streaming initiated\00", align 1
@time_to_abort = common dso_local global i32 0, align 4
@outfd = common dso_local global i32 0, align 4
@output_last_fsync = common dso_local global i64 0, align 8
@fsync_interval = common dso_local global i32 0, align 4
@standby_message_timeout = common dso_local global i32 0, align 4
@output_reopen = common dso_local global i32 0, align 4
@outfile = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"could not open log file \22%s\22: %m\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@output_isfile = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"invalid socket: %s\00", align 1
@output_needs_fsync = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"select() failed: %m\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"could not receive data from WAL stream: %s\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"could not read COPY data: %s\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"streaming header too small: %d\00", align 1
@endpos = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"unrecognized streaming header: \22%c\22\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"could not write %u bytes to log file \22%s\22: %m\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [49 x i8] c"unexpected termination of replication stream: %s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @StreamLogicalLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StreamLogicalLog() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.timeval, align 4
  %17 = alloca %struct.timeval*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i8* null, i8** %2, align 8
  store i64 -1, i64* %3, align 8
  %27 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %27, i64* @output_written_lsn, align 8
  %28 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %28, i64* @output_fsync_lsn, align 8
  %29 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %5, align 8
  %30 = load i32*, i32** @conn, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %0
  %33 = call i32* (...) @GetConnection()
  store i32* %33, i32** @conn, align 8
  br label %34

34:                                               ; preds = %32, %0
  %35 = load i32*, i32** @conn, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %584

38:                                               ; preds = %34
  %39 = load i64, i64* @verbose, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @startpos, align 4
  %43 = ashr i32 %42, 32
  %44 = load i32, i32* @startpos, align 4
  %45 = load i32, i32* @replication_slot, align 4
  %46 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load i32, i32* @replication_slot, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* @startpos, align 4
  %53 = ashr i32 %52, 32
  %54 = load i32, i32* @startpos, align 4
  %55 = call i32 (%struct.TYPE_8__*, i8*, i32*, ...) @appendPQExpBuffer(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %51, i32 %53, i32 %54)
  %56 = load i32, i32* @noptions, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %47
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @noptions, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32**, i32*** @options, align 8
  %75 = load i32, i32* %4, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 (%struct.TYPE_8__*, i8*, i32*, ...) @appendPQExpBuffer(%struct.TYPE_8__* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %79)
  %81 = load i32**, i32*** @options, align 8
  %82 = load i32, i32* %4, align 4
  %83 = mul nsw i32 %82, 2
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %72
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i32**, i32*** @options, align 8
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %91, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 (%struct.TYPE_8__*, i8*, i32*, ...) @appendPQExpBuffer(%struct.TYPE_8__* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %97)
  br label %99

99:                                               ; preds = %89, %72
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load i32, i32* @noptions, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = call i32 @appendPQExpBufferChar(%struct.TYPE_8__* %107, i8 signext 41)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** @conn, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @PQexec(i32* %110, i32 %113)
  store i32* %114, i32** %1, align 8
  %115 = load i32*, i32** %1, align 8
  %116 = call i64 @PQresultStatus(i32* %115)
  %117 = load i64, i64* @PGRES_COPY_BOTH, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @PQresultErrorMessage(i32* %123)
  %125 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %122, i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @PQclear(i32* %126)
  br label %573

128:                                              ; preds = %109
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @PQclear(i32* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = call i32 @resetPQExpBuffer(%struct.TYPE_8__* %131)
  %133 = load i64, i64* @verbose, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %128
  br label %138

138:                                              ; preds = %533, %425, %351, %336, %137
  %139 = load i32, i32* @time_to_abort, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br i1 %141, label %142, label %534

142:                                              ; preds = %138
  %143 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %143, i64* %11, align 8
  %144 = load i8*, i8** %2, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8*, i8** %2, align 8
  %148 = call i32 @PQfreemem(i8* %147)
  store i8* null, i8** %2, align 8
  br label %149

149:                                              ; preds = %146, %142
  %150 = call i64 (...) @feGetCurrentTimestamp()
  store i64 %150, i64* %9, align 8
  %151 = load i32, i32* @outfd, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i64, i64* @output_last_fsync, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i32, i32* @fsync_interval, align 4
  %157 = call i64 @feTimestampDifferenceExceeds(i64 %154, i64 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @OutputFsync(i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %573

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %153, %149
  %166 = load i32, i32* @standby_message_timeout, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i64, i64* %3, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load i32, i32* @standby_message_timeout, align 4
  %172 = call i64 @feTimestampDifferenceExceeds(i64 %169, i64 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  %175 = load i32*, i32** @conn, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @sendFeedback(i32* %175, i64 %176, i32 1, i32 0)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br label %573

180:                                              ; preds = %174
  %181 = load i64, i64* %9, align 8
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %180, %168, %165
  %183 = load i32, i32* @outfd, align 4
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %201

185:                                              ; preds = %182
  %186 = load i32, i32* @output_reopen, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = load i32, i32* @outfile, align 4
  %190 = call i64 @strcmp(i32 %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = call i64 (...) @feGetCurrentTimestamp()
  store i64 %193, i64* %9, align 8
  %194 = load i64, i64* %9, align 8
  %195 = call i32 @OutputFsync(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %573

198:                                              ; preds = %192
  %199 = load i32, i32* @outfd, align 4
  %200 = call i64 @close(i32 %199)
  store i32 -1, i32* @outfd, align 4
  br label %201

201:                                              ; preds = %198, %188, %185, %182
  store i32 0, i32* @output_reopen, align 4
  %202 = load i32, i32* @outfd, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %250

204:                                              ; preds = %201
  %205 = load i32, i32* @outfile, align 4
  %206 = call i64 @strcmp(i32 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* @stdout, align 4
  %210 = call i32 @fileno(i32 %209)
  store i32 %210, i32* @outfd, align 4
  br label %224

211:                                              ; preds = %204
  %212 = load i32, i32* @outfile, align 4
  %213 = load i32, i32* @O_CREAT, align 4
  %214 = load i32, i32* @O_APPEND, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @O_WRONLY, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @PG_BINARY, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @S_IRUSR, align 4
  %221 = load i32, i32* @S_IWUSR, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @open(i32 %212, i32 %219, i32 %222)
  store i32 %223, i32* @outfd, align 4
  br label %224

224:                                              ; preds = %211, %208
  %225 = load i32, i32* @outfd, align 4
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* @outfile, align 4
  %229 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %228)
  br label %573

230:                                              ; preds = %224
  %231 = load i32, i32* @outfd, align 4
  %232 = call i64 @fstat(i32 %231, %struct.stat* %12)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* @outfile, align 4
  %236 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %230
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @S_ISREG(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i32, i32* @outfd, align 4
  %244 = call i32 @isatty(i32 %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  br label %247

247:                                              ; preds = %242, %237
  %248 = phi i1 [ false, %237 ], [ %246, %242 ]
  %249 = zext i1 %248 to i32
  store i32 %249, i32* @output_isfile, align 4
  br label %250

250:                                              ; preds = %247, %201
  %251 = load i32*, i32** @conn, align 8
  %252 = call i32 @PQgetCopyData(i32* %251, i8** %2, i32 1)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %352

255:                                              ; preds = %250
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store %struct.timeval* null, %struct.timeval** %17, align 8
  %256 = load i32*, i32** @conn, align 8
  %257 = call i64 @PQsocket(i32* %256)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32*, i32** @conn, align 8
  %261 = call i32 @PQerrorMessage(i32* %260)
  %262 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %261)
  br label %573

263:                                              ; preds = %255
  %264 = call i32 @FD_ZERO(i32* %13)
  %265 = load i32*, i32** @conn, align 8
  %266 = call i64 @PQsocket(i32* %265)
  %267 = call i32 @FD_SET(i64 %266, i32* %13)
  %268 = load i32, i32* @standby_message_timeout, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %263
  %271 = load i64, i64* %3, align 8
  %272 = load i32, i32* @standby_message_timeout, align 4
  %273 = sub nsw i32 %272, 1
  %274 = mul nsw i32 %273, 1000
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %271, %275
  store i64 %276, i64* %14, align 8
  br label %277

277:                                              ; preds = %270, %263
  %278 = load i32, i32* @fsync_interval, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load i32, i32* @output_needs_fsync, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %280
  %284 = load i64, i64* @output_last_fsync, align 8
  %285 = load i32, i32* @fsync_interval, align 4
  %286 = sub nsw i32 %285, 1
  %287 = mul nsw i32 %286, 1000
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %284, %288
  store i64 %289, i64* %15, align 8
  br label %290

290:                                              ; preds = %283, %280, %277
  %291 = load i64, i64* %14, align 8
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i64, i64* %15, align 8
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %321

296:                                              ; preds = %293, %290
  %297 = load i64, i64* %14, align 8
  store i64 %297, i64* %18, align 8
  %298 = load i64, i64* %15, align 8
  %299 = icmp sgt i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = load i64, i64* %15, align 8
  %302 = load i64, i64* %18, align 8
  %303 = icmp slt i64 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i64, i64* %15, align 8
  store i64 %305, i64* %18, align 8
  br label %306

306:                                              ; preds = %304, %300, %296
  %307 = load i64, i64* %9, align 8
  %308 = load i64, i64* %18, align 8
  %309 = call i32 @feTimestampDifference(i64 %307, i64 %308, i64* %19, i32* %20)
  %310 = load i64, i64* %19, align 8
  %311 = icmp sle i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 1, i32* %313, align 4
  br label %318

314:                                              ; preds = %306
  %315 = load i64, i64* %19, align 8
  %316 = trunc i64 %315 to i32
  %317 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 %316, i32* %317, align 4
  br label %318

318:                                              ; preds = %314, %312
  %319 = load i32, i32* %20, align 4
  %320 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 %319, i32* %320, align 4
  store %struct.timeval* %16, %struct.timeval** %17, align 8
  br label %321

321:                                              ; preds = %318, %293
  %322 = load i32*, i32** @conn, align 8
  %323 = call i64 @PQsocket(i32* %322)
  %324 = add nsw i64 %323, 1
  %325 = load %struct.timeval*, %struct.timeval** %17, align 8
  %326 = call i32 @select(i64 %324, i32* %13, i32* null, i32* null, %struct.timeval* %325)
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %336, label %329

329:                                              ; preds = %321
  %330 = load i32, i32* %6, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i64, i64* @errno, align 8
  %334 = load i64, i64* @EINTR, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332, %321
  br label %138

337:                                              ; preds = %332, %329
  %338 = load i32, i32* %6, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %573

342:                                              ; preds = %337
  br label %343

343:                                              ; preds = %342
  %344 = load i32*, i32** @conn, align 8
  %345 = call i64 @PQconsumeInput(i32* %344)
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load i32*, i32** @conn, align 8
  %349 = call i32 @PQerrorMessage(i32* %348)
  %350 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %349)
  br label %573

351:                                              ; preds = %343
  br label %138

352:                                              ; preds = %250
  %353 = load i32, i32* %6, align 4
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  br label %534

356:                                              ; preds = %352
  %357 = load i32, i32* %6, align 4
  %358 = icmp eq i32 %357, -2
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load i32*, i32** @conn, align 8
  %361 = call i32 @PQerrorMessage(i32* %360)
  %362 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %361)
  br label %573

363:                                              ; preds = %356
  %364 = load i8*, i8** %2, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 107
  br i1 %368, label %369, label %426

369:                                              ; preds = %363
  store i32 0, i32* %24, align 4
  store i32 1, i32* %21, align 4
  %370 = load i8*, i8** %2, align 8
  %371 = load i32, i32* %21, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  %374 = call i64 @fe_recvint64(i8* %373)
  store i64 %374, i64* %23, align 8
  %375 = load i64, i64* %23, align 8
  %376 = load i64, i64* @output_written_lsn, align 8
  %377 = call i64 @Max(i64 %375, i64 %376)
  store i64 %377, i64* @output_written_lsn, align 8
  %378 = load i32, i32* %21, align 4
  %379 = add nsw i32 %378, 8
  store i32 %379, i32* %21, align 4
  %380 = load i32, i32* %21, align 4
  %381 = add nsw i32 %380, 8
  store i32 %381, i32* %21, align 4
  %382 = load i32, i32* %6, align 4
  %383 = load i32, i32* %21, align 4
  %384 = add nsw i32 %383, 1
  %385 = icmp slt i32 %382, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %369
  %387 = load i32, i32* %6, align 4
  %388 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %387)
  br label %573

389:                                              ; preds = %369
  %390 = load i8*, i8** %2, align 8
  %391 = load i32, i32* %21, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  store i32 %395, i32* %22, align 4
  %396 = load i64, i64* @endpos, align 8
  %397 = load i64, i64* @InvalidXLogRecPtr, align 8
  %398 = icmp ne i64 %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %389
  %400 = load i64, i64* %23, align 8
  %401 = load i64, i64* @endpos, align 8
  %402 = icmp sge i64 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %399
  store i32 1, i32* %24, align 4
  br label %404

404:                                              ; preds = %403, %399, %389
  %405 = load i32, i32* %22, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %404
  %408 = load i32, i32* %24, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %407, %404
  %411 = load i32*, i32** @conn, align 8
  %412 = call i32 @flushAndSendFeedback(i32* %411, i64* %9)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %415, label %414

414:                                              ; preds = %410
  br label %573

415:                                              ; preds = %410
  %416 = load i64, i64* %9, align 8
  store i64 %416, i64* %3, align 8
  br label %417

417:                                              ; preds = %415, %407
  %418 = load i32, i32* %24, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %417
  %421 = load i32*, i32** @conn, align 8
  %422 = load i64, i64* @endpos, align 8
  %423 = load i64, i64* @InvalidXLogRecPtr, align 8
  %424 = call i32 @prepareToTerminate(i32* %421, i64 %422, i32 1, i64 %423)
  store i32 1, i32* @time_to_abort, align 4
  br label %534

425:                                              ; preds = %417
  br label %138

426:                                              ; preds = %363
  %427 = load i8*, i8** %2, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 0
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp ne i32 %430, 119
  br i1 %431, label %432, label %438

432:                                              ; preds = %426
  %433 = load i8*, i8** %2, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 0
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %436)
  br label %573

438:                                              ; preds = %426
  br label %439

439:                                              ; preds = %438
  store i32 1, i32* %10, align 4
  %440 = load i32, i32* %10, align 4
  %441 = add nsw i32 %440, 8
  store i32 %441, i32* %10, align 4
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 8
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %10, align 4
  %445 = add nsw i32 %444, 8
  store i32 %445, i32* %10, align 4
  %446 = load i32, i32* %6, align 4
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 1
  %449 = icmp slt i32 %446, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %439
  %451 = load i32, i32* %6, align 4
  %452 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %451)
  br label %573

453:                                              ; preds = %439
  %454 = load i8*, i8** %2, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 1
  %456 = call i64 @fe_recvint64(i8* %455)
  store i64 %456, i64* %11, align 8
  %457 = load i64, i64* @endpos, align 8
  %458 = load i64, i64* @InvalidXLogRecPtr, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %474

460:                                              ; preds = %453
  %461 = load i64, i64* %11, align 8
  %462 = load i64, i64* @endpos, align 8
  %463 = icmp sgt i64 %461, %462
  br i1 %463, label %464, label %474

464:                                              ; preds = %460
  %465 = load i32*, i32** @conn, align 8
  %466 = call i32 @flushAndSendFeedback(i32* %465, i64* %9)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %464
  br label %573

469:                                              ; preds = %464
  %470 = load i32*, i32** @conn, align 8
  %471 = load i64, i64* @endpos, align 8
  %472 = load i64, i64* %11, align 8
  %473 = call i32 @prepareToTerminate(i32* %470, i64 %471, i32 0, i64 %472)
  store i32 1, i32* @time_to_abort, align 4
  br label %534

474:                                              ; preds = %460, %453
  %475 = load i64, i64* %11, align 8
  %476 = load i64, i64* @output_written_lsn, align 8
  %477 = call i64 @Max(i64 %475, i64 %476)
  store i64 %477, i64* @output_written_lsn, align 8
  %478 = load i32, i32* %6, align 4
  %479 = load i32, i32* %10, align 4
  %480 = sub nsw i32 %478, %479
  store i32 %480, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* @output_needs_fsync, align 4
  br label %481

481:                                              ; preds = %501, %474
  %482 = load i32, i32* %7, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %508

484:                                              ; preds = %481
  %485 = load i32, i32* @outfd, align 4
  %486 = load i8*, i8** %2, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, i8* %486, i64 %488
  %490 = load i32, i32* %8, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, i8* %489, i64 %491
  %493 = load i32, i32* %7, align 4
  %494 = call i32 @write(i32 %485, i8* %492, i32 %493)
  store i32 %494, i32* %25, align 4
  %495 = load i32, i32* %25, align 4
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %484
  %498 = load i32, i32* %7, align 4
  %499 = load i32, i32* @outfile, align 4
  %500 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %498, i32 %499)
  br label %573

501:                                              ; preds = %484
  %502 = load i32, i32* %25, align 4
  %503 = load i32, i32* %8, align 4
  %504 = add nsw i32 %503, %502
  store i32 %504, i32* %8, align 4
  %505 = load i32, i32* %25, align 4
  %506 = load i32, i32* %7, align 4
  %507 = sub nsw i32 %506, %505
  store i32 %507, i32* %7, align 4
  br label %481

508:                                              ; preds = %481
  %509 = load i32, i32* @outfd, align 4
  %510 = call i32 @write(i32 %509, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %511 = icmp ne i32 %510, 1
  br i1 %511, label %512, label %515

512:                                              ; preds = %508
  %513 = load i32, i32* @outfile, align 4
  %514 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 1, i32 %513)
  br label %573

515:                                              ; preds = %508
  %516 = load i64, i64* @endpos, align 8
  %517 = load i64, i64* @InvalidXLogRecPtr, align 8
  %518 = icmp ne i64 %516, %517
  br i1 %518, label %519, label %533

519:                                              ; preds = %515
  %520 = load i64, i64* %11, align 8
  %521 = load i64, i64* @endpos, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %533

523:                                              ; preds = %519
  %524 = load i32*, i32** @conn, align 8
  %525 = call i32 @flushAndSendFeedback(i32* %524, i64* %9)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %528, label %527

527:                                              ; preds = %523
  br label %573

528:                                              ; preds = %523
  %529 = load i32*, i32** @conn, align 8
  %530 = load i64, i64* @endpos, align 8
  %531 = load i64, i64* %11, align 8
  %532 = call i32 @prepareToTerminate(i32* %529, i64 %530, i32 0, i64 %531)
  store i32 1, i32* @time_to_abort, align 4
  br label %534

533:                                              ; preds = %519, %515
  br label %138

534:                                              ; preds = %528, %469, %420, %355, %138
  %535 = load i32*, i32** @conn, align 8
  %536 = call i32* @PQgetResult(i32* %535)
  store i32* %536, i32** %1, align 8
  %537 = load i32*, i32** %1, align 8
  %538 = call i64 @PQresultStatus(i32* %537)
  %539 = load i64, i64* @PGRES_COPY_OUT, align 8
  %540 = icmp eq i64 %538, %539
  br i1 %540, label %541, label %542

541:                                              ; preds = %534
  br label %573

542:                                              ; preds = %534
  %543 = load i32*, i32** %1, align 8
  %544 = call i64 @PQresultStatus(i32* %543)
  %545 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %546 = icmp ne i64 %544, %545
  br i1 %546, label %547, label %551

547:                                              ; preds = %542
  %548 = load i32*, i32** %1, align 8
  %549 = call i32 @PQresultErrorMessage(i32* %548)
  %550 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 %549)
  br label %573

551:                                              ; preds = %542
  br label %552

552:                                              ; preds = %551
  %553 = load i32*, i32** %1, align 8
  %554 = call i32 @PQclear(i32* %553)
  %555 = load i32, i32* @outfd, align 4
  %556 = icmp ne i32 %555, -1
  br i1 %556, label %557, label %572

557:                                              ; preds = %552
  %558 = load i32, i32* @outfile, align 4
  %559 = call i64 @strcmp(i32 %558, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %572

561:                                              ; preds = %557
  %562 = call i64 (...) @feGetCurrentTimestamp()
  store i64 %562, i64* %26, align 8
  %563 = load i64, i64* %26, align 8
  %564 = call i32 @OutputFsync(i64 %563)
  %565 = load i32, i32* @outfd, align 4
  %566 = call i64 @close(i32 %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %561
  %569 = load i32, i32* @outfile, align 4
  %570 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %569)
  br label %571

571:                                              ; preds = %568, %561
  br label %572

572:                                              ; preds = %571, %557, %552
  store i32 -1, i32* @outfd, align 4
  br label %573

573:                                              ; preds = %572, %547, %541, %527, %512, %497, %468, %450, %432, %414, %386, %359, %347, %340, %259, %227, %197, %179, %163, %119
  %574 = load i8*, i8** %2, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %576, label %579

576:                                              ; preds = %573
  %577 = load i8*, i8** %2, align 8
  %578 = call i32 @PQfreemem(i8* %577)
  store i8* null, i8** %2, align 8
  br label %579

579:                                              ; preds = %576, %573
  %580 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %581 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %580)
  %582 = load i32*, i32** @conn, align 8
  %583 = call i32 @PQfinish(i32* %582)
  store i32* null, i32** @conn, align 8
  br label %584

584:                                              ; preds = %579, %37
  ret void
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32* @GetConnection(...) #1

declare dso_local i32 @pg_log_info(i8*, ...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i32*, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32* @PQexec(i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i64 @feGetCurrentTimestamp(...) #1

declare dso_local i64 @feTimestampDifferenceExceeds(i64, i64, i32) #1

declare dso_local i32 @OutputFsync(i64) #1

declare dso_local i32 @sendFeedback(i32*, i64, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #1

declare dso_local i64 @PQsocket(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @feTimestampDifference(i64, i64, i64*, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @PQconsumeInput(i32*) #1

declare dso_local i64 @fe_recvint64(i8*) #1

declare dso_local i64 @Max(i64, i64) #1

declare dso_local i32 @flushAndSendFeedback(i32*, i64*) #1

declare dso_local i32 @prepareToTerminate(i32*, i64, i32, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
