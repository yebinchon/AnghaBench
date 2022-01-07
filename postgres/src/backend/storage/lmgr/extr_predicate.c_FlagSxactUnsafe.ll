; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_FlagSxactUnsafe.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_FlagSxactUnsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }

@SXACT_FLAG_RO_UNSAFE = common dso_local global i32 0, align 4
@RWConflictData = common dso_local global i32 0, align 4
@inLink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @FlagSxactUnsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FlagSxactUnsafe(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @SxactIsReadOnly(%struct.TYPE_7__* %5)
  %7 = call i32 @Assert(i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @SxactIsROSafe(%struct.TYPE_7__* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* @SXACT_FLAG_RO_UNSAFE, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* @RWConflictData, align 4
  %24 = load i32, i32* @inLink, align 4
  %25 = call i32 @offsetof(i32 %23, i32 %24)
  %26 = call i64 @SHMQueueNext(i32* %20, i32* %22, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %3, align 8
  br label %28

28:                                               ; preds = %31, %1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* @RWConflictData, align 4
  %37 = load i32, i32* @inLink, align 4
  %38 = call i32 @offsetof(i32 %36, i32 %37)
  %39 = call i64 @SHMQueueNext(i32* %33, i32* %35, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @SxactIsReadOnly(%struct.TYPE_7__* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp eq %struct.TYPE_7__* %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = call i32 @ReleaseRWConflict(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %3, align 8
  br label %28

59:                                               ; preds = %28
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SxactIsReadOnly(%struct.TYPE_7__*) #1

declare dso_local i32 @SxactIsROSafe(%struct.TYPE_7__*) #1

declare dso_local i64 @SHMQueueNext(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @ReleaseRWConflict(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
