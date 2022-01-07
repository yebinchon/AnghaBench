; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_send_bytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i64, i32*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@SHM_MQ_DETACHED = common dso_local global i32 0, align 4
@SHM_MQ_WOULD_BLOCK = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_MQ_SEND = common dso_local global i32 0, align 4
@SHM_MQ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i8*, i32, i64*)* @shm_mq_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_mq_send_bytes(%struct.TYPE_9__* %0, i64 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %12, align 8
  store i64 0, i64* %13, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %15, align 8
  br label %27

27:                                               ; preds = %190, %5
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %191

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 6
  %34 = call i64 @pg_atomic_read_u64(i32* %33)
  store i64 %34, i64* %17, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 5
  %37 = call i64 @pg_atomic_read_u64(i32* %36)
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* %17, align 8
  %40 = icmp sge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %17, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp sle i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %14, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i64 @Min(i64 %53, i64 %56)
  store i64 %57, i64* %16, align 8
  %58 = call i32 (...) @pg_compiler_barrier()
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %31
  %64 = load i64, i64* %13, align 8
  %65 = load i64*, i64** %11, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %66, i32* %6, align 4
  br label %195

67:                                               ; preds = %31
  %68 = load i64, i64* %16, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %117, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @shm_mq_counterparty_gone(%struct.TYPE_10__* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64, i64* %13, align 8
  %87 = load i64*, i64** %11, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %88, i32* %6, align 4
  br label %195

89:                                               ; preds = %78
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = call i32* @shm_mq_get_receiver(%struct.TYPE_10__* %90)
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* %13, align 8
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* @SHM_MQ_WOULD_BLOCK, align 4
  store i32 %96, i32* %6, align 4
  br label %195

97:                                               ; preds = %89
  br label %114

98:                                               ; preds = %75
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @shm_mq_wait_internal(%struct.TYPE_10__* %99, %struct.TYPE_11__** %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %98
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %112, i32* %6, align 4
  br label %195

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %97
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %190

117:                                              ; preds = %70, %67
  %118 = load i64, i64* %16, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @Assert(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @SetLatch(i32* %128)
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load i64, i64* %13, align 8
  %134 = load i64*, i64** %11, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* @SHM_MQ_WOULD_BLOCK, align 4
  store i32 %135, i32* %6, align 4
  br label %195

136:                                              ; preds = %120
  %137 = load i32, i32* @MyLatch, align 4
  %138 = load i32, i32* @WL_LATCH_SET, align 4
  %139 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @WAIT_EVENT_MQ_SEND, align 4
  %142 = call i32 @WaitLatch(i32 %137, i32 %140, i32 0, i32 %141)
  %143 = load i32, i32* @MyLatch, align 4
  %144 = call i32 @ResetLatch(i32 %143)
  %145 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %189

146:                                              ; preds = %117
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* %15, align 8
  %149 = srem i64 %147, %148
  store i64 %149, i64* %19, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %19, align 8
  %153 = sub nsw i64 %151, %152
  %154 = call i64 @Min(i64 %150, i64 %153)
  store i64 %154, i64* %20, align 8
  %155 = call i32 (...) @pg_memory_barrier()
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %19, align 8
  %163 = add nsw i64 %161, %162
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load i8*, i8** %9, align 8
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i64, i64* %20, align 8
  %169 = call i32 @memcpy(i32* %164, i8* %167, i64 %168)
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* %13, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %181, label %176

176:                                              ; preds = %146
  %177 = load i64, i64* %20, align 8
  %178 = load i64, i64* %20, align 8
  %179 = call i64 @MAXALIGN(i64 %178)
  %180 = icmp eq i64 %177, %179
  br label %181

181:                                              ; preds = %176, %146
  %182 = phi i1 [ true, %146 ], [ %180, %176 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @Assert(i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = load i64, i64* %20, align 8
  %187 = call i64 @MAXALIGN(i64 %186)
  %188 = call i32 @shm_mq_inc_bytes_written(%struct.TYPE_10__* %185, i64 %187)
  br label %189

189:                                              ; preds = %181, %136
  br label %190

190:                                              ; preds = %189, %114
  br label %27

191:                                              ; preds = %27
  %192 = load i64, i64* %13, align 8
  %193 = load i64*, i64** %11, align 8
  store i64 %192, i64* %193, align 8
  %194 = load i32, i32* @SHM_MQ_SUCCESS, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %191, %132, %107, %93, %85, %63
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i64 @pg_atomic_read_u64(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i32 @pg_compiler_barrier(...) #1

declare dso_local i64 @shm_mq_counterparty_gone(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @shm_mq_get_receiver(%struct.TYPE_10__*) #1

declare dso_local i32 @shm_mq_wait_internal(%struct.TYPE_10__*, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @SetLatch(i32*) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_memory_barrier(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @shm_mq_inc_bytes_written(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
