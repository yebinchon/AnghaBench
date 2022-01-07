; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_MarkLocalBufferDirty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_MarkLocalBufferDirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LocalRefCount = common dso_local global i64* null, align 8
@BM_DIRTY = common dso_local global i32 0, align 4
@pgBufferUsage = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkLocalBufferDirty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @BufferIsLocal(i32 %6)
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load i64*, i64** @LocalRefCount, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_4__* @GetLocalBufferDescriptor(i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @pg_atomic_read_u32(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BM_DIRTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pgBufferUsage, i32 0, i32 0), align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pgBufferUsage, i32 0, i32 0), align 4
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @BM_DIRTY, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pg_atomic_unlocked_write_u32(i32* %37, i32 %38)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsLocal(i32) #1

declare dso_local %struct.TYPE_4__* @GetLocalBufferDescriptor(i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @pg_atomic_unlocked_write_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
