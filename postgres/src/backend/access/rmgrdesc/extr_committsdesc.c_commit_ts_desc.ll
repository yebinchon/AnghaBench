; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_committsdesc.c_commit_ts_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_committsdesc.c_commit_ts_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@COMMIT_TS_ZEROPAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@COMMIT_TS_TRUNCATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"pageno %d, oldestXid %u\00", align 1
@COMMIT_TS_SETTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"set %s/%d for: %u\00", align 1
@SizeOfCommitTsSet = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c", %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commit_ts_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @XLogRecGetData(i32* %13)
  store i8* %14, i8** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @XLogRecGetInfo(i32* %15)
  %17 = load i64, i64* @XLR_INFO_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @COMMIT_TS_ZEROPAGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @memcpy(i32* %7, i8* %24, i32 4)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %110

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @COMMIT_TS_TRUNCATE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %8, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  br label %109

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @COMMIT_TS_SETTS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %9, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @timestamptz_to_str(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @XLogRecGetDataLen(i32* %63)
  %65 = load i32, i32* @SizeOfCommitTsSet, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %48
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32* @palloc(i32 %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @XLogRecGetData(i32* %79)
  %81 = load i32, i32* @SizeOfCommitTsSet, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %78, i8* %83, i32 %87)
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %101, %72
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @pfree(i32* %105)
  br label %107

107:                                              ; preds = %104, %48
  br label %108

108:                                              ; preds = %107, %44
  br label %109

109:                                              ; preds = %108, %33
  br label %110

110:                                              ; preds = %109, %23
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @timestamptz_to_str(i32) #1

declare dso_local i32 @XLogRecGetDataLen(i32*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
