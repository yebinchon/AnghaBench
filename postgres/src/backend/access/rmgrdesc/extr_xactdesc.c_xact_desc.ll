; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_xact_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_xact_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@XLOG_XACT_OPMASK = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT_PREPARED = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT_PREPARED = common dso_local global i64 0, align 8
@XLOG_XACT_PREPARE = common dso_local global i64 0, align 8
@XLOG_XACT_ASSIGNMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"xtop %u: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xact_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @XLogRecGetData(i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @XLogRecGetInfo(i32* %13)
  %15 = load i64, i64* @XLOG_XACT_OPMASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @XLOG_XACT_COMMIT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20, %2
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @XLogRecGetInfo(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @XLogRecGetOrigin(i32* %31)
  %33 = call i32 @xact_desc_commit(i32 %27, i64 %29, i32* %30, i32 %32)
  br label %80

34:                                               ; preds = %20
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @XLOG_XACT_ABORT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %8, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @XLogRecGetInfo(i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @xact_desc_abort(i32 %45, i64 %47, i32* %48)
  br label %79

50:                                               ; preds = %38
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @XLOG_XACT_PREPARE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %9, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @XLogRecGetInfo(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @xact_desc_prepare(i32 %57, i64 %59, i32* %60)
  br label %78

62:                                               ; preds = %50
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @XLOG_XACT_ASSIGNMENT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %10, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @appendStringInfo(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = call i32 @xact_desc_assignment(i32 %74, %struct.TYPE_3__* %75)
  br label %77

77:                                               ; preds = %66, %62
  br label %78

78:                                               ; preds = %77, %54
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %24
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @xact_desc_commit(i32, i64, i32*, i32) #1

declare dso_local i32 @XLogRecGetOrigin(i32*) #1

declare dso_local i32 @xact_desc_abort(i32, i64, i32*) #1

declare dso_local i32 @xact_desc_prepare(i32, i64, i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @xact_desc_assignment(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
