; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendStartup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64, i32 }

@LOG = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@MyCancelKey = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not generate random cancel key\00", align 1
@BACKEND_TYPE_NORMAL = common dso_local global i32 0, align 4
@CAC_OK = common dso_local global i64 0, align 8
@CAC_WAITBACKUP = common dso_local global i64 0, align 8
@MyPMChildSlot = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not fork new process for connection: %m\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"forked new backend, pid=%d socket=%d\00", align 1
@BackendList = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @BackendStartup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BackendStartup(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = call i64 @malloc(i32 40)
  %8 = inttoptr i64 %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG, align 4
  %13 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @ereport(i32 %12, i32 %15)
  %17 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = call i32 @RandomCancelKey(i32* @MyCancelKey)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i32 @free(%struct.TYPE_11__* %22)
  %24 = load i32, i32* @LOG, align 4
  %25 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  %29 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %29, i32* %2, align 4
  br label %125

30:                                               ; preds = %18
  %31 = load i32, i32* @MyCancelKey, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @BACKEND_TYPE_NORMAL, align 4
  %35 = call i64 @canAcceptConnections(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CAC_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CAC_WAITBACKUP, align 8
  %48 = icmp ne i64 %46, %47
  br label %49

49:                                               ; preds = %43, %30
  %50 = phi i1 [ false, %30 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = call i64 (...) @AssignPostmasterChildSlot()
  store i64 %59, i64* @MyPMChildSlot, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = call i64 (...) @fork_process()
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @free(%struct.TYPE_11__* %72)
  %74 = call i32 (...) @InitPostmasterChild()
  %75 = call i32 @ClosePostmasterPorts(i32 0)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = call i32 @BackendInitialize(%struct.TYPE_10__* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = call i32 @BackendRun(%struct.TYPE_10__* %78)
  br label %80

80:                                               ; preds = %71, %65
  %81 = load i64, i64* %5, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i32, i32* @errno, align 4
  store i32 %84, i32* %6, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ReleasePostmasterChildSlot(i64 %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = call i32 @free(%struct.TYPE_11__* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* @errno, align 4
  %98 = load i32, i32* @LOG, align 4
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %98, i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @report_fork_failure_to_client(%struct.TYPE_10__* %101, i32 %102)
  %104 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %104, i32* %2, align 4
  br label %125

105:                                              ; preds = %80
  %106 = load i32, i32* @DEBUG2, align 4
  %107 = load i64, i64* %5, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @errmsg_internal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %112)
  %114 = call i32 @ereport(i32 %106, i32 %113)
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @BACKEND_TYPE_NORMAL, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = call i32 @dlist_push_head(i32* @BackendList, i32* %122)
  %124 = load i32, i32* @STATUS_OK, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %105, %94, %21, %11
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @RandomCancelKey(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i64 @canAcceptConnections(i32) #1

declare dso_local i64 @AssignPostmasterChildSlot(...) #1

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i32 @BackendInitialize(%struct.TYPE_10__*) #1

declare dso_local i32 @BackendRun(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleasePostmasterChildSlot(i64) #1

declare dso_local i32 @report_fork_failure_to_client(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32, i32) #1

declare dso_local i32 @dlist_push_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
