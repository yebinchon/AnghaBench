; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_load_buffers.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_load_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@apw_state = common dso_local global %struct.TYPE_5__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"skipping prewarm because block dump file is being written by PID %lu\00", align 1
@AUTOPREWARM_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<<%d>>\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"could not read from file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%u,%u,%u,%u,%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"autoprewarm block dump file is corrupted at line %d\00", align 1
@apw_compare_blockinfo = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@DSM_HANDLE_INVALID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [69 x i8] c"autoprewarm successfully prewarmed %d of %d previously-loaded blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apw_load_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apw_load_buffers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* @LW_EXCLUSIVE, align 4
  %12 = call i32 @LWLockAcquire(i32* %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @InvalidPid, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i64, i64* @MyProcPid, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %32

22:                                               ; preds = %0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = call i32 @LWLockRelease(i32* %24)
  %26 = load i32, i32* @LOG, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i32 @ereport(i32 %26, i32 %30)
  br label %245

32:                                               ; preds = %18
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = call i32 @LWLockRelease(i32* %34)
  %36 = load i32, i32* @AUTOPREWARM_FILE, align 4
  %37 = call i32* @AllocateFile(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %1, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @ENOENT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* @LW_EXCLUSIVE, align 4
  %48 = call i32 @LWLockAcquire(i32* %46, i32 %47)
  %49 = load i64, i64* @InvalidPid, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = call i32 @LWLockRelease(i32* %53)
  br label %245

55:                                               ; preds = %40
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 (...) @errcode_for_file_access()
  %58 = load i32, i32* @AUTOPREWARM_FILE, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = call i32 @ereport(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %32
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 (i32*, i8*, ...) @fscanf(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %2)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (...) @errcode_for_file_access()
  %69 = load i32, i32* @AUTOPREWARM_FILE, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = call i32 @ereport(i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 24, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32* @dsm_create(i32 %77, i32 0)
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @dsm_segment_address(i32* %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %124, %73
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %2, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load i32*, i32** %1, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i32 (i32*, i8*, ...) @fscanf(i32* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64* %92, i32* %97, i32* %102, i32* %6, i32* %107)
  %109 = icmp ne i32 %108, 5
  br i1 %109, label %110, label %117

110:                                              ; preds = %86
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %114)
  %116 = call i32 @ereport(i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %110, %86
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %118, i32* %123, align 8
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %82

127:                                              ; preds = %82
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @FreeFile(i32* %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @apw_compare_blockinfo, align 4
  %133 = call i32 @pg_qsort(%struct.TYPE_4__* %130, i32 %131, i32 24, i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @dsm_segment_handle(i32* %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i32 0, i32* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %214, %127
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %2, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %221

150:                                              ; preds = %144
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %7, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %8, align 8
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %187, %150
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %2, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %162
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %167, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %166
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* @InvalidOid, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %190

180:                                              ; preds = %175
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %8, align 8
  br label %187

187:                                              ; preds = %180, %166
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %162

190:                                              ; preds = %179, %162
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* @InvalidOid, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %221

195:                                              ; preds = %190
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* %8, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 6
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @Assert(i32 %209)
  %211 = call i32 (...) @have_free_buffer()
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %195
  br label %221

214:                                              ; preds = %195
  %215 = call i32 (...) @apw_start_database_worker()
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  br label %144

221:                                              ; preds = %213, %194, %144
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @dsm_detach(i32* %222)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  %226 = load i32, i32* @LW_EXCLUSIVE, align 4
  %227 = call i32 @LWLockAcquire(i32* %225, i32 %226)
  %228 = load i32, i32* @DSM_HANDLE_INVALID, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  %231 = load i64, i64* @InvalidPid, align 8
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = call i32 @LWLockRelease(i32* %235)
  %237 = load i32, i32* @LOG, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @apw_state, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %2, align 4
  %243 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i64 %241, i32 %242)
  %244 = call i32 @ereport(i32 %237, i32 %243)
  br label %245

245:                                              ; preds = %221, %44, %22
  ret void
}

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, ...) #1

declare dso_local i32* @AllocateFile(i32, i8*) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32* @dsm_create(i32, i32) #1

declare dso_local i64 @dsm_segment_address(i32*) #1

declare dso_local i32 @FreeFile(i32*) #1

declare dso_local i32 @pg_qsort(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @dsm_segment_handle(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @have_free_buffer(...) #1

declare dso_local i32 @apw_start_database_worker(...) #1

declare dso_local i32 @dsm_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
