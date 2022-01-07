; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_StartupReorderBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_StartupReorderBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pg_replslot\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartupReorderBuffer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = call i32* @AllocateDir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  br label %4

4:                                                ; preds = %29, %28, %20, %0
  %5 = load i32*, i32** %1, align 8
  %6 = call %struct.dirent* @ReadDir(i32* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.dirent* %6, %struct.dirent** %2, align 8
  %7 = icmp ne %struct.dirent* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = load %struct.dirent*, %struct.dirent** %2, align 8
  %10 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.dirent*, %struct.dirent** %2, align 8
  %16 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  br label %4

21:                                               ; preds = %14
  %22 = load %struct.dirent*, %struct.dirent** %2, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DEBUG2, align 4
  %26 = call i32 @ReplicationSlotValidateName(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %4

29:                                               ; preds = %21
  %30 = load %struct.dirent*, %struct.dirent** %2, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ReorderBufferCleanupSerializedTXNs(i32 %32)
  br label %4

34:                                               ; preds = %4
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @FreeDir(i32* %35)
  ret void
}

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ReplicationSlotValidateName(i32, i32) #1

declare dso_local i32 @ReorderBufferCleanupSerializedTXNs(i32) #1

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
