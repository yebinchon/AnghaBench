; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_create_descriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_create_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32*, i32*, i32, i32 }

@CurrentResourceOwner = common dso_local global i64 0, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@dsm_segment_list = common dso_local global i32 0, align 4
@INVALID_CONTROL_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @dsm_create_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @dsm_create_descriptor() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i64, i64* @CurrentResourceOwner, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @CurrentResourceOwner, align 8
  %6 = call i32 @ResourceOwnerEnlargeDSMs(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @TopMemoryContext, align 4
  %9 = call %struct.TYPE_5__* @MemoryContextAlloc(i32 %8, i32 48)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %1, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = call i32 @dlist_push_head(i32* @dsm_segment_list, i32* %11)
  %13 = load i32, i32* @INVALID_CONTROL_SLOT, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* @CurrentResourceOwner, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @CurrentResourceOwner, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i64, i64* @CurrentResourceOwner, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = call i32 @ResourceOwnerRememberDSM(i64 %28, %struct.TYPE_5__* %29)
  br label %31

31:                                               ; preds = %27, %7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @slist_init(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %35
}

declare dso_local i32 @ResourceOwnerEnlargeDSMs(i64) #1

declare dso_local %struct.TYPE_5__* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @dlist_push_head(i32*, i32*) #1

declare dso_local i32 @ResourceOwnerRememberDSM(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @slist_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
