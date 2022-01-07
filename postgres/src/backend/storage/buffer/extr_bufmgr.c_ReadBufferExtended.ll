; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReadBufferExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReadBufferExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access temporary tables of other sessions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadBufferExtended(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = call i32 @RelationOpenSmgr(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @pgstat_count_buffer_read(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ReadBuffer_common(i32 %29, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i32 @pgstat_count_buffer_hit(%struct.TYPE_9__* %43)
  br label %45

45:                                               ; preds = %42, %24
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_9__*) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pgstat_count_buffer_read(%struct.TYPE_9__*) #1

declare dso_local i32 @ReadBuffer_common(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pgstat_count_buffer_hit(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
