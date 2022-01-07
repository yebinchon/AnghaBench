; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_attach_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_attach_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i32, i32*, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32*, i32*, i32* }

@DSA_SEGMENT_HEADER_MAGIC = common dso_local global i32 0, align 4
@DSA_MAX_SEGMENTS = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not attach to dynamic shared area\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i8*, i32*, i32)* @attach_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @attach_internal(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DSA_SEGMENT_HEADER_MAGIC, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %32, %33
  %35 = xor i32 %34, 0
  %36 = icmp eq i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = call %struct.TYPE_12__* @palloc(i32 40)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = load i32, i32* @DSA_MAX_SEGMENTS, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 40, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(%struct.TYPE_10__* %48, i32 0, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 0
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %9, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @MAXALIGN(i32 32)
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @MAXALIGN(i32 32)
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  %87 = call i32 @MAXALIGN(i32 4)
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %86, i64 %88
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = call i32 @DSA_AREA_LOCK(%struct.TYPE_12__* %93)
  %95 = load i32, i32* @LW_EXCLUSIVE, align 4
  %96 = call i32 @LWLockAcquire(i32 %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %3
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %3
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = call i32 @DSA_AREA_LOCK(%struct.TYPE_12__* %119)
  %121 = call i32 @LWLockRelease(i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  ret %struct.TYPE_12__* %122
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_12__* @palloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DSA_AREA_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
