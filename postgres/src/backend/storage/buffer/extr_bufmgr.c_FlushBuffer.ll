; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_23__*, i8*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }

@shared_buffer_write_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_23__* null, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@BM_PERMANENT = common dso_local global i32 0, align 4
@track_io_timing = common dso_local global i64 0, align 8
@pgBufferUsage = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*)* @FlushBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FlushBuffer(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %13 = call i32 @StartBufferIO(%struct.TYPE_24__* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %148

16:                                               ; preds = %2
  %17 = load i32, i32* @shared_buffer_write_error_callback, align 4
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = bitcast %struct.TYPE_24__* %19 to i8*
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** @error_context_stack, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %6, %struct.TYPE_23__** @error_context_stack, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @InvalidBackendId, align 4
  %32 = call %struct.TYPE_22__* @smgropen(i32 %30, i32 %31)
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %4, align 8
  br label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TRACE_POSTGRESQL_BUFFER_FLUSH_START(i32 %37, i32 %41, i32 %46, i32 %51, i32 %56)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = call i32 @LockBufHdr(%struct.TYPE_24__* %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = call i32 @BufferGetLSN(%struct.TYPE_24__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @UnlockBufHdr(%struct.TYPE_24__* %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @BM_PERMANENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %33
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @XLogFlush(i32 %74)
  br label %76

76:                                               ; preds = %73, %33
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = call i64 @BufHdrGetBlock(%struct.TYPE_24__* %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @PageSetChecksumCopy(i32 %80, i32 %84)
  store i8* %85, i8** %10, align 8
  %86 = load i64, i64* @track_io_timing, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @INSTR_TIME_SET_CURRENT(i32 %89)
  br label %91

91:                                               ; preds = %88, %76
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @smgrwrite(%struct.TYPE_22__* %92, i32 %96, i32 %100, i8* %101, i32 0)
  %103 = load i64, i64* @track_io_timing, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %91
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @INSTR_TIME_SET_CURRENT(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @INSTR_TIME_SUBTRACT(i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %111)
  %113 = call i32 @pgstat_count_buffer_write_time(i32 %112)
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @pgBufferUsage, i32 0, i32 1), align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @INSTR_TIME_ADD(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %105, %91
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @pgBufferUsage, i32 0, i32 0), align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @pgBufferUsage, i32 0, i32 0), align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %121 = call i32 @TerminateBufferIO(%struct.TYPE_24__* %120, i32 1, i32 0)
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @TRACE_POSTGRESQL_BUFFER_FLUSH_DONE(i32 %125, i32 %129, i32 %134, i32 %139, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** @error_context_stack, align 8
  br label %148

148:                                              ; preds = %117, %15
  ret void
}

declare dso_local i32 @StartBufferIO(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_22__* @smgropen(i32, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_FLUSH_START(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_24__*) #1

declare dso_local i32 @BufferGetLSN(%struct.TYPE_24__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i64 @BufHdrGetBlock(%struct.TYPE_24__*) #1

declare dso_local i8* @PageSetChecksumCopy(i32, i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @smgrwrite(%struct.TYPE_22__*, i32, i32, i8*, i32) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i32 @pgstat_count_buffer_write_time(i32) #1

declare dso_local i32 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @INSTR_TIME_ADD(i32, i32) #1

declare dso_local i32 @TerminateBufferIO(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_FLUSH_DONE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
