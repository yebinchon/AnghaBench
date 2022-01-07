; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_process_call.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_process_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ts_process_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_process_call(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_5__* @walkStatEntryTree(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i8* @palloc(i32 %23)
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %27 = load i8*, i8** %26, align 16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %36 = load i8*, i8** %35, align 16
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  store i8* %54, i8** %55, align 16
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %60 = call i32 @BuildTupleFromCStrings(i32 %58, i8** %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @HeapTupleGetDatum(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i32 @pfree(i8* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_5__* @walkStatEntryTree(i32*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @BuildTupleFromCStrings(i32, i8**) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
