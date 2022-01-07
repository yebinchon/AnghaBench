; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_smgrdesc.c_smgr_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_smgrdesc.c_smgr_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_SMGR_CREATE = common dso_local global i64 0, align 8
@XLOG_SMGR_TRUNCATE = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s to %u blocks flags %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smgr_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @XLogRecGetData(i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @XLogRecGetInfo(i32* %13)
  %15 = load i64, i64* @XLR_INFO_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @XLOG_SMGR_CREATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @relpathperm(i32 %26, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @appendStringInfoString(i32 %31, i8* %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @pfree(i8* %34)
  br label %60

36:                                               ; preds = %2
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @XLOG_SMGR_TRUNCATE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAIN_FORKNUM, align 4
  %47 = call i8* @relpathperm(i32 %45, i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @appendStringInfo(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %52, i32 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @pfree(i8* %57)
  br label %59

59:                                               ; preds = %40, %36
  br label %60

60:                                               ; preds = %59, %21
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i8* @relpathperm(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
