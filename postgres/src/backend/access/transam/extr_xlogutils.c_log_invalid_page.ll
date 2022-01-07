; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_log_invalid_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_log_invalid_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@reachedConsistency = common dso_local global i64 0, align 8
@WARNING = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WAL contains references to invalid pages\00", align 1
@log_min_messages = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i64 0, align 8
@client_min_messages = common dso_local global i64 0, align 8
@invalid_page_tab = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"XLOG invalid-page table\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @log_invalid_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_invalid_page(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @reachedConsistency, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i64, i64* @WARNING, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @report_invalid_page(i64 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @PANIC, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %15, %4
  %25 = load i64, i64* @log_min_messages, align 8
  %26 = load i64, i64* @DEBUG1, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @client_min_messages, align 8
  %30 = load i64, i64* @DEBUG1, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %24
  %33 = load i64, i64* @DEBUG1, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @report_invalid_page(i64 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %28
  %40 = load i32*, i32** @invalid_page_tab, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = call i32 @memset(%struct.TYPE_8__* %12, i32 0, i32 8)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 12, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 4, i32* %45, align 4
  %46 = load i32, i32* @HASH_ELEM, align 4
  %47 = load i32, i32* @HASH_BLOBS, align 4
  %48 = or i32 %46, %47
  %49 = call i32* @hash_create(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 100, %struct.TYPE_8__* %12, i32 %48)
  store i32* %49, i32** @invalid_page_tab, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** @invalid_page_tab, align 8
  %58 = bitcast %struct.TYPE_6__* %9 to i8*
  %59 = load i32, i32* @HASH_ENTER, align 4
  %60 = call i64 @hash_search(i32* %57, i8* %58, i32 %59, i32* %11)
  %61 = inttoptr i64 %60 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %69

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @report_invalid_page(i64, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
