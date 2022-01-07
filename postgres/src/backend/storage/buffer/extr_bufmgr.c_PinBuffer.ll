; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_PinBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_PinBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@BM_LOCKED = common dso_local global i32 0, align 4
@BUF_REFCOUNT_ONE = common dso_local global i64 0, align 8
@BM_MAX_USAGE_COUNT = common dso_local global i64 0, align 8
@BUF_USAGECOUNT_ONE = common dso_local global i64 0, align 8
@BM_VALID = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @PinBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PinBuffer(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_9__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_8__* @GetPrivateRefCountEntry(i32 %12, i32 1)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %2
  %17 = call i32 (...) @ReservePrivateRefCountEntry()
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_8__* @NewPrivateRefCountEntry(i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @pg_atomic_read_u32(i32* %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %75, %16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @BM_LOCKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @WaitBufHdrUnlocked(%struct.TYPE_9__* %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* @BUF_REFCOUNT_ONE, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @BUF_STATE_GET_USAGECOUNT(i32 %41)
  %43 = load i64, i64* @BM_MAX_USAGE_COUNT, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @BUF_USAGECOUNT_ONE, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %63

52:                                               ; preds = %31
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @BUF_STATE_GET_USAGECOUNT(i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64, i64* @BUF_USAGECOUNT_ONE, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @pg_atomic_compare_exchange_u32(i32* %65, i32* %9, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @BM_VALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %63
  br label %23

76:                                               ; preds = %69
  br label %78

77:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87)
  %89 = load i32, i32* @CurrentResourceOwner, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ResourceOwnerRememberBuffer(i32 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @BufferDescriptorGetBuffer(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @GetPrivateRefCountEntry(i32, i32) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

declare dso_local %struct.TYPE_8__* @NewPrivateRefCountEntry(i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @WaitBufHdrUnlocked(%struct.TYPE_9__*) #1

declare dso_local i64 @BUF_STATE_GET_USAGECOUNT(i32) #1

declare dso_local i64 @pg_atomic_compare_exchange_u32(i32*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ResourceOwnerRememberBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
