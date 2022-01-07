; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_XactLockTableWaitErrorCb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_XactLockTableWaitErrorCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@XLTW_None = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"while updating tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"while deleting tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"while locking tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"while locking updated version (%u,%u) of tuple in relation \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"while inserting index tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"while checking uniqueness of tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"while rechecking updated tuple (%u,%u) in relation \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"while checking exclusion constraint on tuple (%u,%u) in relation \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @XactLockTableWaitErrorCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XactLockTableWaitErrorCb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XLTW_None, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ItemPointerIsValid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @RelationIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %44 [
    i32 128, label %28
    i32 135, label %30
    i32 131, label %32
    i32 130, label %34
    i32 133, label %36
    i32 132, label %38
    i32 134, label %40
    i32 129, label %42
  ]

28:                                               ; preds = %24
  %29 = call i8* @gettext_noop(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %4, align 8
  br label %45

30:                                               ; preds = %24
  %31 = call i8* @gettext_noop(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  br label %45

32:                                               ; preds = %24
  %33 = call i8* @gettext_noop(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  br label %45

34:                                               ; preds = %24
  %35 = call i8* @gettext_noop(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  br label %45

36:                                               ; preds = %24
  %37 = call i8* @gettext_noop(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %45

38:                                               ; preds = %24
  %39 = call i8* @gettext_noop(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  store i8* %39, i8** %4, align 8
  br label %45

40:                                               ; preds = %24
  %41 = call i8* @gettext_noop(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %45

42:                                               ; preds = %24
  %43 = call i8* @gettext_noop(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  br label %45

44:                                               ; preds = %24
  br label %60

45:                                               ; preds = %42, %40, %38, %36, %34, %32, %30, %28
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ItemPointerGetBlockNumber(i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ItemPointerGetOffsetNumber(i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @RelationGetRelationName(i32 %57)
  %59 = call i32 @errcontext(i8* %46, i32 %50, i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %44, %45, %18, %12, %1
  ret void
}

declare dso_local i64 @ItemPointerIsValid(i32) #1

declare dso_local i64 @RelationIsValid(i32) #1

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @errcontext(i8*, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
