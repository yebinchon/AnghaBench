; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_IncrBufferRefCount.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_IncrBufferRefCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@LocalRefCount = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IncrBufferRefCount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @BufferIsPinned(i32 %4)
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* @CurrentResourceOwner, align 4
  %8 = call i32 @ResourceOwnerEnlargeBuffers(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @BufferIsLocal(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32*, i32** @LocalRefCount, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sub nsw i32 0, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.TYPE_3__* @GetPrivateRefCountEntry(i32 %22, i32 1)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %12
  %33 = load i32, i32* @CurrentResourceOwner, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @ResourceOwnerRememberBuffer(i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsPinned(i32) #1

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local %struct.TYPE_3__* @GetPrivateRefCountEntry(i32, i32) #1

declare dso_local i32 @ResourceOwnerRememberBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
