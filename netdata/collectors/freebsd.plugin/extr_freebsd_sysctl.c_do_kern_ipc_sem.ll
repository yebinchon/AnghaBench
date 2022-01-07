; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_sem.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipc_sem = type { i32, i32, i32 }

@do_kern_ipc_sem.mib_semmni = internal global [3 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"kern.ipc.semmni\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DISABLED: system.ipc_semaphores chart\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"DISABLED: system.ipc_semaphore_arrays chart\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"DISABLED: kern.ipc.sem module\00", align 1
@do_kern_ipc_sem.ipc_sem_data = internal global %struct.semid_kernel* null, align 8
@do_kern_ipc_sem.old_semmni = internal global i32 0, align 4
@do_kern_ipc_sem.mib_sema = internal global [3 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"kern.ipc.sema\00", align 1
@SEM_ALLOC = common dso_local global i32 0, align 4
@do_kern_ipc_sem.st_semaphores = internal global i32* null, align 8
@do_kern_ipc_sem.st_semaphore_arrays = internal global i32* null, align 8
@do_kern_ipc_sem.rd_semaphores = internal global i32* null, align 8
@do_kern_ipc_sem.rd_semaphore_arrays = internal global i32* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ipc_semaphores\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ipc semaphores\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"IPC Semaphores\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"semaphores\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"kern.ipc.sem\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"ipc_semaphore_arrays\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"IPC Semaphore Arrays\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"arrays\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kern_ipc_sem(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_sem, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = bitcast %struct.ipc_sem* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_sem.mib_semmni, i64 0, i64 0), i32 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %143

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @do_kern_ipc_sem.old_semmni, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.semid_kernel*, %struct.semid_kernel** @do_kern_ipc_sem.ipc_sem_data, align 8
  %29 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 16, %31
  %33 = trunc i64 %32 to i32
  %34 = call %struct.semid_kernel* @reallocz(%struct.semid_kernel* %28, i32 %33)
  store %struct.semid_kernel* %34, %struct.semid_kernel** @do_kern_ipc_sem.ipc_sem_data, align 8
  %35 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @do_kern_ipc_sem.old_semmni, align 4
  br label %37

37:                                               ; preds = %27, %19
  %38 = load %struct.semid_kernel*, %struct.semid_kernel** @do_kern_ipc_sem.ipc_sem_data, align 8
  %39 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @GETSYSCTL_WSIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_sem.mib_sema, i64 0, i64 0), %struct.semid_kernel* %38, i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %143

51:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %87, %51
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %52
  %58 = load %struct.semid_kernel*, %struct.semid_kernel** @do_kern_ipc_sem.ipc_sem_data, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %58, i64 %60
  %62 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SEM_ALLOC, align 4
  %67 = and i32 %65, %66
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.semid_kernel*, %struct.semid_kernel** @do_kern_ipc_sem.ipc_sem_data, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %74, i64 %76
  %78 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %80
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %70, %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %52

90:                                               ; preds = %52
  %91 = load i32*, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %92 = icmp ne i32* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %101 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  store i32* %101, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %102 = load i32*, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %103 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %104 = call i32* @rrddim_add(i32* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %103)
  store i32* %104, i32** @do_kern_ipc_sem.rd_semaphores, align 8
  br label %108

105:                                              ; preds = %90
  %106 = load i32*, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %107 = call i32 @rrdset_next(i32* %106)
  br label %108

108:                                              ; preds = %105, %97
  %109 = load i32*, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %110 = load i32*, i32** @do_kern_ipc_sem.rd_semaphores, align 8
  %111 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rrddim_set_by_pointer(i32* %109, i32* %110, i32 %112)
  %114 = load i32*, i32** @do_kern_ipc_sem.st_semaphores, align 8
  %115 = call i32 @rrdset_done(i32* %114)
  %116 = load i32*, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %117 = icmp ne i32* %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %108
  %123 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %126 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  store i32* %126, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %127 = load i32*, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %128 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %129 = call i32* @rrddim_add(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %128)
  store i32* %129, i32** @do_kern_ipc_sem.rd_semaphore_arrays, align 8
  br label %133

130:                                              ; preds = %108
  %131 = load i32*, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %132 = call i32 @rrdset_next(i32* %131)
  br label %133

133:                                              ; preds = %130, %122
  %134 = load i32*, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %135 = load i32*, i32** @do_kern_ipc_sem.rd_semaphore_arrays, align 8
  %136 = getelementptr inbounds %struct.ipc_sem, %struct.ipc_sem* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @rrddim_set_by_pointer(i32* %134, i32* %135, i32 %137)
  %139 = load i32*, i32** @do_kern_ipc_sem.st_semaphore_arrays, align 8
  %140 = call i32 @rrdset_done(i32* %139)
  br label %141

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %47, %15
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local %struct.semid_kernel* @reallocz(%struct.semid_kernel*, i32) #2

declare dso_local i32 @GETSYSCTL_WSIZE(i8*, i32*, %struct.semid_kernel*, i32) #2

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
