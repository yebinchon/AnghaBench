; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationCopyStorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationCopyStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@RELPERSISTENCE_UNLOGGED = common dso_local global i8 0, align 1
@INIT_FORKNUM = common dso_local global i64 0, align 8
@RELPERSISTENCE_PERMANENT = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid page in block %u of relation %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationCopyStorage(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i8, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @RELPERSISTENCE_UNLOGGED, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @INIT_FORKNUM, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %4
  %27 = phi i1 [ false, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = call i64 (...) @XLogIsNeeded()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @RELPERSISTENCE_PERMANENT, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ true, %31 ], [ %39, %37 ]
  br label %42

42:                                               ; preds = %40, %26
  %43 = phi i1 [ false, %26 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @smgrnblocks(%struct.TYPE_11__* %45, i64 %46)
  store i64 %47, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %102, %42
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @smgrread(%struct.TYPE_11__* %54, i64 %55, i64 %56, i64 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @PageIsVerified(i64 %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @relpathbackend(i32 %72, i32 %76, i64 %77)
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %78)
  %80 = call i32 @ereport(i32 %65, i32 %79)
  br label %81

81:                                               ; preds = %64, %52
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @log_newpage(i32* %87, i64 %88, i64 %89, i64 %90, i32 0)
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @PageSetChecksumInplace(i64 %93, i64 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @smgrextend(%struct.TYPE_11__* %96, i64 %97, i64 %98, i64 %100, i32 1)
  br label %102

102:                                              ; preds = %92
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %48

105:                                              ; preds = %48
  %106 = load i8, i8* %8, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @RELPERSISTENCE_PERMANENT, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111, %105
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @smgrimmedsync(%struct.TYPE_11__* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %111
  ret void
}

declare dso_local i64 @XLogIsNeeded(...) #1

declare dso_local i64 @smgrnblocks(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @smgrread(%struct.TYPE_11__*, i64, i64, i64) #1

declare dso_local i32 @PageIsVerified(i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i32) #1

declare dso_local i32 @relpathbackend(i32, i32, i64) #1

declare dso_local i32 @log_newpage(i32*, i64, i64, i64, i32) #1

declare dso_local i32 @PageSetChecksumInplace(i64, i64) #1

declare dso_local i32 @smgrextend(%struct.TYPE_11__*, i64, i64, i64, i32) #1

declare dso_local i32 @smgrimmedsync(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
