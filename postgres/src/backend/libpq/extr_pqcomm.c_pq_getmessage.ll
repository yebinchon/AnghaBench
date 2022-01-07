; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getmessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@PqCommReadingMsg = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unexpected EOF within message length word\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid message length\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"incomplete message from client\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_getmessage(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @PqCommReadingMsg, align 4
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @resetStringInfo(%struct.TYPE_5__* %9)
  %11 = bitcast i32* %6 to i8*
  %12 = call i64 @pq_getbytes(i8* %11, i32 4)
  %13 = load i64, i64* @EOF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @COMMERROR, align 4
  %17 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  %21 = load i64, i64* @EOF, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pg_ntoh32(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %23
  %36 = load i32, i32* @COMMERROR, align 4
  %37 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %36, i32 %39)
  %41 = load i64, i64* @EOF, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %31, %28
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = call i32 (...) @PG_TRY()
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @enlargeStringInfo(%struct.TYPE_5__* %50, i32 %51)
  %53 = call i32 (...) @PG_CATCH()
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @pq_discardbytes(i32 %54)
  %56 = load i64, i64* @EOF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @COMMERROR, align 4
  %60 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %48
  store i32 0, i32* @PqCommReadingMsg, align 4
  %65 = call i32 (...) @PG_RE_THROW()
  %66 = call i32 (...) @PG_END_TRY()
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @pq_getbytes(i8* %69, i32 %70)
  %72 = load i64, i64* @EOF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i32, i32* @COMMERROR, align 4
  %76 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @ereport(i32 %75, i32 %78)
  %80 = load i64, i64* @EOF, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %93

82:                                               ; preds = %64
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %82, %43
  store i32 0, i32* @PqCommReadingMsg, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %74, %35, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_5__*) #1

declare dso_local i64 @pq_getbytes(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_ntoh32(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i64 @pq_discardbytes(i32) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
