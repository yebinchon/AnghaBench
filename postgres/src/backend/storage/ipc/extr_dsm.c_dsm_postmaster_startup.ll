; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_postmaster_startup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_postmaster_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@dynamic_shared_memory_type = common dso_local global i64 0, align 8
@DSM_IMPL_MMAP = common dso_local global i64 0, align 8
@PG_DYNSHMEM_FIXED_SLOTS = common dso_local global i64 0, align 8
@PG_DYNSHMEM_SLOTS_PER_BACKEND = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"dynamic shared memory system will support %u segments\00", align 1
@dsm_control_mapped_size = common dso_local global i64 0, align 8
@dsm_control_handle = common dso_local global i64 0, align 8
@DSM_HANDLE_INVALID = common dso_local global i64 0, align 8
@DSM_OP_CREATE = common dso_local global i32 0, align 4
@dsm_control_impl_private = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@dsm_control = common dso_local global %struct.TYPE_6__* null, align 8
@dsm_postmaster_shutdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"created dynamic shared memory control segment %u (%zu bytes)\00", align 1
@PG_DYNSHMEM_CONTROL_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsm_postmaster_startup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load i32, i32* @IsUnderPostmaster, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load i64, i64* @dynamic_shared_memory_type, align 8
  %12 = load i64, i64* @DSM_IMPL_MMAP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @dsm_cleanup_for_mmap()
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i64, i64* @PG_DYNSHMEM_FIXED_SLOTS, align 8
  %18 = load i32, i32* @PG_DYNSHMEM_SLOTS_PER_BACKEND, align 4
  %19 = load i32, i32* @MaxBackends, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @DEBUG2, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (i32, i8*, i64, ...) @elog(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @dsm_control_bytes_needed(i64 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %50, %41, %16
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i64, i64* @dsm_control_mapped_size, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = call i64 (...) @random()
  store i64 %37, i64* @dsm_control_handle, align 8
  %38 = load i64, i64* @dsm_control_handle, align 8
  %39 = load i64, i64* @DSM_HANDLE_INVALID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* @DSM_OP_CREATE, align 4
  %44 = load i64, i64* @dsm_control_handle, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ERROR, align 4
  %47 = call i64 @dsm_impl_op(i32 %43, i64 %44, i32 %45, i32* @dsm_control_impl_private, i8** %3, i64* @dsm_control_mapped_size, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %28

51:                                               ; preds = %49
  %52 = load i8*, i8** %3, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** @dsm_control, align 8
  %54 = load i32, i32* @dsm_postmaster_shutdown, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i32 @PointerGetDatum(%struct.TYPE_5__* %55)
  %57 = call i32 @on_shmem_exit(i32 %54, i32 %56)
  %58 = load i32, i32* @DEBUG2, align 4
  %59 = load i64, i64* @dsm_control_handle, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, i64, ...) @elog(i32 %58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load i64, i64* @dsm_control_handle, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @PG_DYNSHMEM_CONTROL_MAGIC, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dsm_control, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dsm_control, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dsm_control, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dsm_cleanup_for_mmap(...) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

declare dso_local i32 @dsm_control_bytes_needed(i64) #1

declare dso_local i64 @random(...) #1

declare dso_local i64 @dsm_impl_op(i32, i64, i32, i32*, i8**, i64*, i32) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
