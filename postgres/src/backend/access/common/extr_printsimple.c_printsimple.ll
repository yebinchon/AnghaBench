; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printsimple.c_printsimple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printsimple.c_printsimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported type OID: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printsimple(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [12 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [23 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @slot_getallattrs(%struct.TYPE_8__* %18)
  %20 = call i32 @pq_beginmessage(i32* %6, i8 signext 68)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pq_sendint16(i32* %6, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %91, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__* %32, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @pq_sendint32(i32* %6, i32 -1)
  br label %91

45:                                               ; preds = %31
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %84 [
    i32 128, label %56
    i32 130, label %64
    i32 129, label %74
  ]

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @DatumGetTextPP(i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i8* @VARDATA_ANY(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @VARSIZE_ANY_EXHDR(i32* %61)
  %63 = call i32 @pq_sendcountedtext(i32* %6, i8* %60, i32 %62, i32 0)
  br label %90

64:                                               ; preds = %45
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DatumGetInt32(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %69 = call i32 @pg_ltoa(i32 %67, i8* %68)
  %70 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @pq_sendcountedtext(i32* %6, i8* %70, i32 %72, i32 0)
  br label %90

74:                                               ; preds = %45
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @DatumGetInt64(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = getelementptr inbounds [23 x i8], [23 x i8]* %14, i64 0, i64 0
  %79 = call i32 @pg_lltoa(i32 %77, i8* %78)
  %80 = getelementptr inbounds [23 x i8], [23 x i8]* %14, i64 0, i64 0
  %81 = getelementptr inbounds [23 x i8], [23 x i8]* %14, i64 0, i64 0
  %82 = call i32 @strlen(i8* %81)
  %83 = call i32 @pq_sendcountedtext(i32* %6, i8* %80, i32 %82, i32 0)
  br label %90

84:                                               ; preds = %45
  %85 = load i32, i32* @ERROR, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @elog(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %74, %64, %56
  br label %91

91:                                               ; preds = %90, %43
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %25

94:                                               ; preds = %25
  %95 = call i32 @pq_endmessage(i32* %6)
  ret i32 1
}

declare dso_local i32 @slot_getallattrs(%struct.TYPE_8__*) #1

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32* @DatumGetTextPP(i32) #1

declare dso_local i32 @pq_sendcountedtext(i32*, i8*, i32, i32) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @pg_ltoa(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DatumGetInt64(i32) #1

declare dso_local i32 @pg_lltoa(i32, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
