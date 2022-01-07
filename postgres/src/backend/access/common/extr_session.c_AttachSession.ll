; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_session.c_AttachSession.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_session.c_AttachSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@TopMemoryContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not attach to per-session DSM segment\00", align 1
@SESSION_MAGIC = common dso_local global i32 0, align 4
@SESSION_KEY_DSA = common dso_local global i32 0, align 4
@CurrentSession = common dso_local global %struct.TYPE_2__* null, align 8
@SESSION_KEY_RECORD_TYPMOD_REGISTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AttachSession(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @TopMemoryContext, align 4
  %10 = call i32 @MemoryContextSwitchTo(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32* @dsm_attach(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @SESSION_MAGIC, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @dsm_segment_address(i32* %20)
  %22 = call i32* @shm_toc_attach(i32 %19, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @SESSION_KEY_DSA, align 4
  %25 = call i8* @shm_toc_lookup(i32* %23, i32 %24, i32 0)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @dsa_attach_in_place(i8* %26, i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @SESSION_KEY_RECORD_TYPMOD_REGISTRY, align 4
  %37 = call i8* @shm_toc_lookup(i32* %35, i32 %36, i32 0)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = call i32 @SharedRecordTypmodRegistryAttach(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @dsm_pin_mapping(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @dsa_pin_mapping(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MemoryContextSwitchTo(i32 %45)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @dsm_attach(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @shm_toc_attach(i32, i32) #1

declare dso_local i32 @dsm_segment_address(i32*) #1

declare dso_local i8* @shm_toc_lookup(i32*, i32, i32) #1

declare dso_local i32* @dsa_attach_in_place(i8*, i32*) #1

declare dso_local i32 @SharedRecordTypmodRegistryAttach(i32*) #1

declare dso_local i32 @dsm_pin_mapping(i32*) #1

declare dso_local i32 @dsa_pin_mapping(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
