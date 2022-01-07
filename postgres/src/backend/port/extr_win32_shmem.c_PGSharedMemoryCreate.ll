; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@PAGE_READWRITE = common dso_local global i32 0, align 4
@PROTECTIVE_REGION_SIZE = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@ShmemProtectiveRegion = common dso_local global i32* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not reserve memory region: error code %lu\00", align 1
@UsedShmemSegAddr = common dso_local global i32* null, align 8
@huge_pages = common dso_local global i64 0, align 8
@HUGE_PAGES_ON = common dso_local global i64 0, align 8
@HUGE_PAGES_TRY = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"the processor does not support large pages\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"disabling huge pages\00", align 1
@SEC_COMMIT = common dso_local global i32 0, align 4
@SEC_LARGE_PAGES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@ERROR_NO_SYSTEM_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"CreateFileMapping(%zu) with SEC_LARGE_PAGES failed, huge pages disabled\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"could not create shared memory segment: error code %lu\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Failed system call was CreateFileMapping(size=%zu, name=%s).\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"pre-existing shared memory block is still in use\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Check if there are any old server processes still running, and terminate them.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed system call was DuplicateHandle.\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"could not close handle to shared memory: error code %lu\00", align 1
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed system call was MapViewOfFileEx.\00", align 1
@PGShmemMagic = common dso_local global i32 0, align 4
@UsedShmemSegSize = common dso_local global i32 0, align 4
@UsedShmemSegID = common dso_local global i32* null, align 8
@pgwin32_SharedMemoryDelete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @PGSharedMemoryCreate(i32 %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @PROTECTIVE_REGION_SIZE, align 4
  %19 = load i32, i32* @MEM_RESERVE, align 4
  %20 = load i32, i32* @PAGE_NOACCESS, align 4
  %21 = call i32* @VirtualAlloc(i32* null, i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** @ShmemProtectiveRegion, align 8
  %22 = load i32*, i32** @ShmemProtectiveRegion, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @FATAL, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @MAXALIGN(i32 24)
  %31 = icmp sgt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = call i8* (...) @GetSharedMemName()
  store i8* %34, i8** %9, align 8
  store i32* null, i32** @UsedShmemSegAddr, align 8
  %35 = load i64, i64* @huge_pages, align 8
  %36 = load i64, i64* @HUGE_PAGES_ON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* @huge_pages, align 8
  %40 = load i64, i64* @HUGE_PAGES_TRY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %38, %28
  %43 = call i32 (...) @GetLargePageMinimum()
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i64, i64* @huge_pages, align 8
  %48 = load i64, i64* @HUGE_PAGES_ON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @FATAL, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @DEBUG1, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  %60 = load i32, i32* @DEBUG1, align 4
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %60, i32 %61)
  br label %99

63:                                               ; preds = %42
  %64 = load i64, i64* @huge_pages, align 8
  %65 = load i64, i64* @HUGE_PAGES_ON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @FATAL, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @DEBUG1, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @EnableLockPagesPrivilege(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @DEBUG1, align 4
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %76, i32 %77)
  br label %98

79:                                               ; preds = %71
  %80 = load i32, i32* @PAGE_READWRITE, align 4
  %81 = load i32, i32* @SEC_COMMIT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SEC_LARGE_PAGES, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %13, align 4
  %87 = srem i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %13, align 4
  %93 = srem i32 %91, %92
  %94 = sub nsw i32 %90, %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %89, %79
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %98, %54
  br label %100

100:                                              ; preds = %99, %38
  br label %101

101:                                              ; preds = %129, %100
  store i32 0, i32* %11, align 4
  %102 = load i32, i32* %3, align 4
  store i32 %102, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %153, %101
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %156

106:                                              ; preds = %103
  %107 = call i32 @SetLastError(i32 0)
  %108 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32* @CreateFileMapping(i32 %108, i32* null, i32 %109, i32 %110, i32 %111, i8* %112)
  store i32* %113, i32** %7, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %144, label %116

116:                                              ; preds = %106
  %117 = call i32 (...) @GetLastError()
  %118 = load i32, i32* @ERROR_NO_SYSTEM_RESOURCES, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load i64, i64* @huge_pages, align 8
  %122 = load i64, i64* @HUGE_PAGES_TRY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @SEC_LARGE_PAGES, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @DEBUG1, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @elog(i32 %130, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %134, i32* %15, align 4
  br label %101

135:                                              ; preds = %124, %120, %116
  %136 = load i32, i32* @FATAL, align 4
  %137 = call i32 (...) @GetLastError()
  %138 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %139, i8* %140)
  %142 = call i32 @ereport(i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %106
  %145 = call i32 (...) @GetLastError()
  %146 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @CloseHandle(i32* %149)
  store i32* null, i32** %7, align 8
  %151 = call i32 @Sleep(i32 1000)
  br label %153

152:                                              ; preds = %144
  br label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %103

156:                                              ; preds = %152, %103
  %157 = load i32*, i32** %7, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @FATAL, align 4
  %161 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %162 = call i32 @errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  %163 = call i32 @ereport(i32 %160, i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @free(i8* %165)
  %167 = call i32 (...) @GetCurrentProcess()
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 (...) @GetCurrentProcess()
  %170 = load i32, i32* @TRUE, align 4
  %171 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %172 = call i32 @DuplicateHandle(i32 %167, i32* %168, i32 %169, i32** %8, i32 0, i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %164
  %175 = load i32, i32* @FATAL, align 4
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %179 = call i32 @ereport(i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %174, %164
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @CloseHandle(i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @LOG, align 4
  %186 = call i32 (...) @GetLastError()
  %187 = call i32 @elog(i32 %185, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* @FILE_MAP_WRITE, align 4
  %191 = load i32, i32* @FILE_MAP_READ, align 4
  %192 = or i32 %190, %191
  %193 = call i8* @MapViewOfFileEx(i32* %189, i32 %192, i32 0, i32 0, i32 0, i32* null)
  store i8* %193, i8** %5, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %188
  %197 = load i32, i32* @FATAL, align 4
  %198 = call i32 (...) @GetLastError()
  %199 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  %200 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %201 = call i32 @ereport(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %188
  %203 = load i8*, i8** %5, align 8
  %204 = bitcast i8* %203 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %204, %struct.TYPE_4__** %6, align 8
  %205 = call i32 (...) @getpid()
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @PGShmemMagic, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %3, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = call i32 @MAXALIGN(i32 24)
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  store i64 0, i64* %218, align 8
  %219 = load i8*, i8** %5, align 8
  %220 = bitcast i8* %219 to i32*
  store i32* %220, i32** @UsedShmemSegAddr, align 8
  %221 = load i32, i32* %3, align 4
  store i32 %221, i32* @UsedShmemSegSize, align 4
  %222 = load i32*, i32** %8, align 8
  store i32* %222, i32** @UsedShmemSegID, align 8
  %223 = load i32, i32* @pgwin32_SharedMemoryDelete, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = call i32 @PointerGetDatum(i32* %224)
  %226 = call i32 @on_shmem_exit(i32 %223, i32 %225)
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %228 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %227, %struct.TYPE_4__** %228, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %229
}

declare dso_local i32* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i8* @GetSharedMemName(...) #1

declare dso_local i32 @GetLargePageMinimum(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @EnableLockPagesPrivilege(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CreateFileMapping(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DuplicateHandle(i32, i32*, i32, i32**, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i8* @MapViewOfFileEx(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
