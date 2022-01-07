; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_PortalDrop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_PortalDrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32*, i32*, i32*, i32 (%struct.TYPE_9__*)*, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_CURSOR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot drop pinned portal \22%s\22\00", align 1
@PORTAL_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot drop active portal \22%s\22\00", align 1
@PORTAL_FAILED = common dso_local global i64 0, align 8
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PortalDrop(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @PortalIsValid(%struct.TYPE_9__* %7)
  %9 = call i32 @AssertArg(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INVALID_CURSOR_STATE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @ereport(i32 %15, i32 %21)
  br label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORTAL_ACTIVE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_CURSOR_STATE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %30, i32 %36)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %40, align 8
  %42 = call i64 @PointerIsValid(i32 (%struct.TYPE_9__*)* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 %47(%struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  store i32 (%struct.TYPE_9__*)* null, i32 (%struct.TYPE_9__*)** %51, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @PortalHashTableDelete(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i32 @PortalReleaseCachedPlan(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @UnregisterSnapshotFromOwner(i32* %69, i32* %72)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %52
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PORTAL_FAILED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PORTAL_FAILED, align 8
  %96 = icmp ne i64 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %5, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @ResourceOwnerRelease(i32* %100, i32 %101, i32 %102, i32 0)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @ResourceOwnerRelease(i32* %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @ResourceOwnerRelease(i32* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ResourceOwnerDelete(i32* %118)
  br label %120

120:                                              ; preds = %91, %85, %77
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @MemoryContextSwitchTo(i64 %130)
  store i64 %131, i64* %6, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @tuplestore_end(i32* %134)
  %136 = load i64, i64* %6, align 8
  %137 = call i64 @MemoryContextSwitchTo(i64 %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %127, %120
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @MemoryContextDelete(i64 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @MemoryContextDelete(i64 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = call i32 @pfree(%struct.TYPE_9__* %155)
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PortalIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @PointerIsValid(i32 (%struct.TYPE_9__*)*) #1

declare dso_local i32 @PortalHashTableDelete(%struct.TYPE_9__*) #1

declare dso_local i32 @PortalReleaseCachedPlan(%struct.TYPE_9__*) #1

declare dso_local i32 @UnregisterSnapshotFromOwner(i32*, i32*) #1

declare dso_local i32 @ResourceOwnerRelease(i32*, i32, i32, i32) #1

declare dso_local i32 @ResourceOwnerDelete(i32*) #1

declare dso_local i64 @MemoryContextSwitchTo(i64) #1

declare dso_local i32 @tuplestore_end(i32*) #1

declare dso_local i32 @MemoryContextDelete(i64) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
