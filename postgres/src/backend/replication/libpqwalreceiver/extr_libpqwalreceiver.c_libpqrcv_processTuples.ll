; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_processTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_processTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid query response\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected %d fields, got %d fields.\00", align 1
@work_mem = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"libpqrcv query result context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@MaxTupleAttributeNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32*)* @libpqrcv_processTuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libpqrcv_processTuples(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PQnfields(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %4
  %31 = load i32, i32* @work_mem, align 4
  %32 = call i32 @tuplestore_begin_heap(i32 1, i32 0, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CreateTemplateTupleDesc(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %59, %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, 1
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @PQfname(i32* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TupleDescInitEntry(i32 %46, i64 %49, i32 %52, i32 %57, i32 -1, i32 0)
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @TupleDescGetAttInMetadata(i32 %65)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @PQntuples(i32* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %133

71:                                               ; preds = %62
  %72 = load i32, i32* @CurrentMemoryContext, align 4
  %73 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %74 = call i32 @AllocSetContextCreate(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %127, %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @PQntuples(i32* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %75
  %81 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %16, align 8
  %84 = alloca i8*, i64 %82, align 16
  store i64 %82, i64* %17, align 8
  %85 = call i32 (...) @ProcessWalRcvInterrupts()
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @MemoryContextSwitchTo(i32 %86)
  store i32 %87, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %111, %80
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @PQgetisnull(i32* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %84, i64 %100
  store i8* null, i8** %101, align 8
  br label %110

102:                                              ; preds = %92
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i8* @PQgetvalue(i32* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %84, i64 %108
  store i8* %106, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %98
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @BuildTupleFromCStrings(i32* %115, i8** %84)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @tuplestore_puttuple(i32 %119, i32 %120)
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @MemoryContextSwitchTo(i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @MemoryContextReset(i32 %124)
  %126 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %126)
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %75

130:                                              ; preds = %75
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @MemoryContextDelete(i32 %131)
  br label %133

133:                                              ; preds = %130, %70
  ret void
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @PQfname(i32*, i32) #1

declare dso_local i32* @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ProcessWalRcvInterrupts(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @tuplestore_puttuple(i32, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
