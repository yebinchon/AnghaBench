; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_op.c_hstoreArrayToPairs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_op.c_hstoreArrayToPairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32*, i64, i32 }

@TEXTOID = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"number of pairs (%d) exceeds the maximum allowed (%d)\00", align 1
@VARHDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @hstoreArrayToPairs(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @TEXTOID, align 4
  %15 = call i32 @deconstruct_array(i32* %13, i32 %14, i32 -1, i32 0, i8 signext 105, i32** %6, i32** %7, i32* %8)
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %112

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @MaxAllocSize, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 48
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MaxAllocSize, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 48
  %35 = trunc i64 %34 to i32
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = call i32 @ereport(i32 %28, i32 %36)
  br label %38

38:                                               ; preds = %27, %20
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 48, %40
  %42 = trunc i64 %41 to i32
  %43 = call %struct.TYPE_5__* @palloc(i32 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %103, %38
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @VARDATA(i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i32 %61, i32* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @VARSIZE(i32 %71)
  %73 = load i64, i64* @VARHDRSZ, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i64 %74, i64* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %55, %48
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %44

106:                                              ; preds = %44
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @hstoreUniquePairs(%struct.TYPE_5__* %107, i32 %108, i32* %10)
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %3, align 8
  br label %112

112:                                              ; preds = %106, %18
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %113
}

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @palloc(i32) #1

declare dso_local i32 @VARDATA(i32) #1

declare dso_local i64 @VARSIZE(i32) #1

declare dso_local i32 @hstoreUniquePairs(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
