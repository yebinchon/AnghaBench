; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_UnpinBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_UnpinBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@BM_LOCKED = common dso_local global i32 0, align 4
@BUF_REFCOUNT_ONE = common dso_local global i64 0, align 8
@BM_PIN_COUNT_WAITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @UnpinBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UnpinBuffer(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_13__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TYPE_12__* @GetPrivateRefCountEntry(i32 %12, i32 0)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @CurrentResourceOwner, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ResourceOwnerForgetBuffer(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_13__* %40)
  %42 = call i32 @LWLockHeldByMe(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = call i32 @BufferDescriptorGetIOLock(%struct.TYPE_13__* %47)
  %49 = call i32 @LWLockHeldByMe(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = call i32 @pg_atomic_read_u32(i32* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %78, %39
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BM_LOCKED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @WaitBufHdrUnlocked(%struct.TYPE_13__* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i64, i64* @BUF_REFCOUNT_ONE, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @pg_atomic_compare_exchange_u32(i32* %73, i32* %8, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %79

78:                                               ; preds = %65
  br label %57

79:                                               ; preds = %77
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = call i32 @LockBufHdr(%struct.TYPE_13__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %92)
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @UnlockBufHdr(%struct.TYPE_13__* %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ProcSendSignal(i32 %106)
  br label %112

108:                                              ; preds = %91, %84
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @UnlockBufHdr(%struct.TYPE_13__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %95
  br label %113

113:                                              ; preds = %112, %79
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = call i32 @ForgetPrivateRefCountEntry(%struct.TYPE_12__* %114)
  br label %116

116:                                              ; preds = %113, %24
  ret void
}

declare dso_local i32 @BufferDescriptorGetBuffer(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @GetPrivateRefCountEntry(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ResourceOwnerForgetBuffer(i32, i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_13__*) #1

declare dso_local i32 @BufferDescriptorGetIOLock(%struct.TYPE_13__*) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @WaitBufHdrUnlocked(%struct.TYPE_13__*) #1

declare dso_local i64 @pg_atomic_compare_exchange_u32(i32*, i32*, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_13__*) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ProcSendSignal(i32) #1

declare dso_local i32 @ForgetPrivateRefCountEntry(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
