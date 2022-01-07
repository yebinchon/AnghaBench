; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_shm.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipc_shm = type { i32, i32, i32 }

@do_kern_ipc_shm.mib_shmmni = internal global [3 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"kern.ipc.shmmni\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"DISABLED: system.ipc_shared_mem_segs chart\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"DISABLED: system.ipc_shared_mem_size chart\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DISABLED: kern.ipc.shmmodule\00", align 1
@do_kern_ipc_shm.ipc_shm_data = internal global %struct.shmid_kernel* null, align 8
@do_kern_ipc_shm.old_shmmni = internal global i32 0, align 4
@do_kern_ipc_shm.mib_shmsegs = internal global [3 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"kern.ipc.shmsegs\00", align 1
@do_kern_ipc_shm.st_segs = internal global i32* null, align 8
@do_kern_ipc_shm.st_size = internal global i32* null, align 8
@do_kern_ipc_shm.rd_segments = internal global i32* null, align 8
@do_kern_ipc_shm.rd_allocated = internal global i32* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ipc_shared_mem_segs\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ipc shared memory\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"IPC Shared Memory Segments\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"kern.ipc.shm\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SEGS = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"ipc_shared_mem_size\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"IPC Shared Memory Segments Size\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@KILO_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kern_ipc_shm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_shm, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = bitcast %struct.ipc_shm* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_shm.mib_shmmni, i64 0, i64 0), i32 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @do_kern_ipc_shm.old_shmmni, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.shmid_kernel*, %struct.shmid_kernel** @do_kern_ipc_shm.ipc_shm_data, align 8
  %29 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 16, %31
  %33 = trunc i64 %32 to i32
  %34 = call %struct.shmid_kernel* @reallocz(%struct.shmid_kernel* %28, i32 %33)
  store %struct.shmid_kernel* %34, %struct.shmid_kernel** @do_kern_ipc_shm.ipc_shm_data, align 8
  %35 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @do_kern_ipc_shm.old_shmmni, align 4
  br label %37

37:                                               ; preds = %27, %19
  %38 = load %struct.shmid_kernel*, %struct.shmid_kernel** @do_kern_ipc_shm.ipc_shm_data, align 8
  %39 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @GETSYSCTL_WSIZE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_shm.mib_shmsegs, i64 0, i64 0), %struct.shmid_kernel* %38, i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %142

51:                                               ; preds = %37
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %85, %51
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %52
  %59 = load %struct.shmid_kernel*, %struct.shmid_kernel** @do_kern_ipc_shm.ipc_shm_data, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %59, i64 %60
  %62 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 2048
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.shmid_kernel*, %struct.shmid_kernel** @do_kern_ipc_shm.ipc_shm_data, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %73, i64 %74
  %76 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %78
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %69, %58
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %52

88:                                               ; preds = %52
  %89 = load i32*, i32** @do_kern_ipc_shm.st_segs, align 8
  %90 = icmp ne i32* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SEGS, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %99 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  store i32* %99, i32** @do_kern_ipc_shm.st_segs, align 8
  %100 = load i32*, i32** @do_kern_ipc_shm.st_segs, align 8
  %101 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %102 = call i32* @rrddim_add(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %101)
  store i32* %102, i32** @do_kern_ipc_shm.rd_segments, align 8
  br label %106

103:                                              ; preds = %88
  %104 = load i32*, i32** @do_kern_ipc_shm.st_segs, align 8
  %105 = call i32 @rrdset_next(i32* %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i32*, i32** @do_kern_ipc_shm.st_segs, align 8
  %108 = load i32*, i32** @do_kern_ipc_shm.rd_segments, align 8
  %109 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rrddim_set_by_pointer(i32* %107, i32* %108, i32 %110)
  %112 = load i32*, i32** @do_kern_ipc_shm.st_segs, align 8
  %113 = call i32 @rrdset_done(i32* %112)
  %114 = load i32*, i32** @do_kern_ipc_shm.st_size, align 8
  %115 = icmp ne i32* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %106
  %121 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SIZE, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %124 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  store i32* %124, i32** @do_kern_ipc_shm.st_size, align 8
  %125 = load i32*, i32** @do_kern_ipc_shm.st_size, align 8
  %126 = load i32, i32* @KILO_FACTOR, align 4
  %127 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %128 = call i32* @rrddim_add(i32* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 %126, i32 %127)
  store i32* %128, i32** @do_kern_ipc_shm.rd_allocated, align 8
  br label %132

129:                                              ; preds = %106
  %130 = load i32*, i32** @do_kern_ipc_shm.st_size, align 8
  %131 = call i32 @rrdset_next(i32* %130)
  br label %132

132:                                              ; preds = %129, %120
  %133 = load i32*, i32** @do_kern_ipc_shm.st_size, align 8
  %134 = load i32*, i32** @do_kern_ipc_shm.rd_allocated, align 8
  %135 = getelementptr inbounds %struct.ipc_shm, %struct.ipc_shm* %6, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rrddim_set_by_pointer(i32* %133, i32* %134, i32 %136)
  %138 = load i32*, i32** @do_kern_ipc_shm.st_size, align 8
  %139 = call i32 @rrdset_done(i32* %138)
  br label %140

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %47, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local %struct.shmid_kernel* @reallocz(%struct.shmid_kernel*, i32) #2

declare dso_local i32 @GETSYSCTL_WSIZE(i8*, i32*, %struct.shmid_kernel*, i32) #2

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @rrdset_next(i32*) #2

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #2

declare dso_local i32 @rrdset_done(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
