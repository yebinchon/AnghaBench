; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_FillPortalStore.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_FillPortalStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)* }

@COMPLETION_TAG_BUFSIZE = common dso_local global i32 0, align 4
@DestTuplestore = common dso_local global i32 0, align 4
@None_Receiver = common dso_local global i32 0, align 4
@PlannedStmt = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported portal strategy: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @FillPortalStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillPortalStore(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @COMPLETION_TAG_BUFSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @PortalCreateHoldStore(%struct.TYPE_12__* %12)
  %14 = load i32, i32* @DestTuplestore, align 4
  %15 = call %struct.TYPE_13__* @CreateDestReceiver(i32 %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SetTuplestoreDestReceiverParams(%struct.TYPE_13__* %16, i32 %19, i32 %22, i32 0)
  %24 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %24, align 16
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 130, label %28
    i32 128, label %34
  ]

28:                                               ; preds = %2, %2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load i32, i32* @None_Receiver, align 4
  %33 = call i32 @PortalRunMulti(%struct.TYPE_12__* %29, i32 %30, i32 1, %struct.TYPE_13__* %31, i32 %32, i8* %11)
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load i32, i32* @PlannedStmt, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @linitial_node(i32 %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = call i32 @PortalRunUtility(%struct.TYPE_12__* %35, i32 %40, i32 %41, i32 1, %struct.TYPE_13__* %42, i8* %11)
  br label %50

44:                                               ; preds = %2
  %45 = load i32, i32* @ERROR, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %34, %28
  %51 = getelementptr inbounds i8, i8* %11, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 @pstrdup(i8* %11)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i32 %62(%struct.TYPE_13__* %63)
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PortalCreateHoldStore(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_13__* @CreateDestReceiver(i32) #2

declare dso_local i32 @SetTuplestoreDestReceiverParams(%struct.TYPE_13__*, i32, i32, i32) #2

declare dso_local i32 @PortalRunMulti(%struct.TYPE_12__*, i32, i32, %struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @PortalRunUtility(%struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @linitial_node(i32, i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @pstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
