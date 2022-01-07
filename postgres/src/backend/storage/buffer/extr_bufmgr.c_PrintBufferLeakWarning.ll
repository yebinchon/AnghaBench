; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_PrintBufferLeakWarning.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_PrintBufferLeakWarning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@LocalRefCount = common dso_local global i32* null, align 8
@MyBackendId = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"buffer refcount leak: [%03d] (rel=%s, blockNum=%u, flags=0x%x, refcount=%u %d)\00", align 1
@BUF_FLAG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintBufferLeakWarning(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @BufferIsValid(i32 %8)
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @BufferIsLocal(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 0, %15
  %17 = sub nsw i32 %16, 1
  %18 = call %struct.TYPE_6__* @GetLocalBufferDescriptor(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  %19 = load i32*, i32** @LocalRefCount, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 0, %20
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @MyBackendId, align 4
  store i32 %26, i32* %6, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call %struct.TYPE_6__* @GetBufferDescriptor(i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @GetPrivateRefCount(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @InvalidBackendId, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %14
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @relpathbackend(i32 %38, i32 %39, i32 %43)
  store i8* %44, i8** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @pg_atomic_read_u32(i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @WARNING, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BUF_FLAG_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50, i32 %54, i32 %57, i32 %59, i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @pfree(i8* %62)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local %struct.TYPE_6__* @GetLocalBufferDescriptor(i32) #1

declare dso_local %struct.TYPE_6__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @GetPrivateRefCount(i32) #1

declare dso_local i8* @relpathbackend(i32, i32, i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
