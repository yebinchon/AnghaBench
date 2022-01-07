; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_msq.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_ipc_msq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msqid_kernel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ipc_msq = type { i32, i32, i32, i32, i32 }

@do_kern_ipc_msq.mib_msgmni = internal global [3 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"kern.ipc.msgmni\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DISABLED: system.ipc_msq_queues chart\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"DISABLED: system.ipc_msq_messages chart\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"DISABLED: system.ipc_msq_size chart\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DISABLED: kern.ipc.msg module\00", align 1
@do_kern_ipc_msq.ipc_msq_data = internal global %struct.msqid_kernel* null, align 8
@do_kern_ipc_msq.old_msgmni = internal global i32 0, align 4
@do_kern_ipc_msq.mib_msqids = internal global [3 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"kern.ipc.msqids\00", align 1
@do_kern_ipc_msq.st_queues = internal global i32* null, align 8
@do_kern_ipc_msq.st_messages = internal global i32* null, align 8
@do_kern_ipc_msq.st_size = internal global i32* null, align 8
@do_kern_ipc_msq.rd_queues = internal global i32* null, align 8
@do_kern_ipc_msq.rd_messages = internal global i32* null, align 8
@do_kern_ipc_msq.rd_allocated = internal global i32* null, align 8
@do_kern_ipc_msq.rd_used = internal global i32* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ipc_msq_queues\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ipc message queues\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Number of IPC Message Queues\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"queues\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"kern.ipc.msq\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_QUEUES = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"ipc_msq_messages\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Number of Messages in IPC Message Queues\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"messages\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_MESSAGES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"ipc_msq_size\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Size of IPC Message Queues\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_SIZE = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"used\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kern_ipc_msq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_msq, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = bitcast %struct.ipc_msq* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_msq.mib_msgmni, i64 0, i64 0), i32 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %201

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @do_kern_ipc_msq.old_msgmni, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %30 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.msqid_kernel* @reallocz(%struct.msqid_kernel* %29, i32 %34)
  store %struct.msqid_kernel* %35, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %36 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @do_kern_ipc_msq.old_msgmni, align 4
  br label %38

38:                                               ; preds = %28, %20
  %39 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %40 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 24, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @GETSYSCTL_WSIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @do_kern_ipc_msq.mib_msqids, i64 0, i64 0), %struct.msqid_kernel* %39, i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %201

53:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %112, %53
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %54
  %60 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %60, i64 %62
  %64 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %75, i64 %77
  %79 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %81
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %87, i64 %89
  %91 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %93
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.msqid_kernel*, %struct.msqid_kernel** @do_kern_ipc_msq.ipc_msq_data, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %99, i64 %101
  %103 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %105
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  br label %111

111:                                              ; preds = %71, %59
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %54

115:                                              ; preds = %54
  %116 = load i32*, i32** @do_kern_ipc_msq.st_queues, align 8
  %117 = icmp ne i32* %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_QUEUES, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %126 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  store i32* %126, i32** @do_kern_ipc_msq.st_queues, align 8
  %127 = load i32*, i32** @do_kern_ipc_msq.st_queues, align 8
  %128 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %129 = call i32* @rrddim_add(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %128)
  store i32* %129, i32** @do_kern_ipc_msq.rd_queues, align 8
  br label %133

130:                                              ; preds = %115
  %131 = load i32*, i32** @do_kern_ipc_msq.st_queues, align 8
  %132 = call i32 @rrdset_next(i32* %131)
  br label %133

133:                                              ; preds = %130, %122
  %134 = load i32*, i32** @do_kern_ipc_msq.st_queues, align 8
  %135 = load i32*, i32** @do_kern_ipc_msq.rd_queues, align 8
  %136 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @rrddim_set_by_pointer(i32* %134, i32* %135, i32 %137)
  %139 = load i32*, i32** @do_kern_ipc_msq.st_queues, align 8
  %140 = call i32 @rrdset_done(i32* %139)
  %141 = load i32*, i32** @do_kern_ipc_msq.st_messages, align 8
  %142 = icmp ne i32* %141, null
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %133
  %148 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_MESSAGES, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %151 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  store i32* %151, i32** @do_kern_ipc_msq.st_messages, align 8
  %152 = load i32*, i32** @do_kern_ipc_msq.st_messages, align 8
  %153 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %154 = call i32* @rrddim_add(i32* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %153)
  store i32* %154, i32** @do_kern_ipc_msq.rd_messages, align 8
  br label %158

155:                                              ; preds = %133
  %156 = load i32*, i32** @do_kern_ipc_msq.st_messages, align 8
  %157 = call i32 @rrdset_next(i32* %156)
  br label %158

158:                                              ; preds = %155, %147
  %159 = load i32*, i32** @do_kern_ipc_msq.st_messages, align 8
  %160 = load i32*, i32** @do_kern_ipc_msq.rd_messages, align 8
  %161 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rrddim_set_by_pointer(i32* %159, i32* %160, i32 %162)
  %164 = load i32*, i32** @do_kern_ipc_msq.st_messages, align 8
  %165 = call i32 @rrdset_done(i32* %164)
  %166 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %167 = icmp ne i32* %166, null
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %158
  %173 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_SIZE, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %176 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %173, i32 %174, i32 %175)
  store i32* %176, i32** @do_kern_ipc_msq.st_size, align 8
  %177 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %178 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %179 = call i32* @rrddim_add(i32* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %178)
  store i32* %179, i32** @do_kern_ipc_msq.rd_allocated, align 8
  %180 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %181 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %182 = call i32* @rrddim_add(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %181)
  store i32* %182, i32** @do_kern_ipc_msq.rd_used, align 8
  br label %186

183:                                              ; preds = %158
  %184 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %185 = call i32 @rrdset_next(i32* %184)
  br label %186

186:                                              ; preds = %183, %172
  %187 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %188 = load i32*, i32** @do_kern_ipc_msq.rd_allocated, align 8
  %189 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @rrddim_set_by_pointer(i32* %187, i32* %188, i32 %190)
  %192 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %193 = load i32*, i32** @do_kern_ipc_msq.rd_used, align 8
  %194 = getelementptr inbounds %struct.ipc_msq, %struct.ipc_msq* %6, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @rrddim_set_by_pointer(i32* %192, i32* %193, i32 %195)
  %197 = load i32*, i32** @do_kern_ipc_msq.st_size, align 8
  %198 = call i32 @rrdset_done(i32* %197)
  br label %199

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %48, %15
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local %struct.msqid_kernel* @reallocz(%struct.msqid_kernel*, i32) #2

declare dso_local i32 @GETSYSCTL_WSIZE(i8*, i32*, %struct.msqid_kernel*, i32) #2

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
