; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_standbydesc.c_standby_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_standbydesc.c_standby_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_STANDBY_LOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"xid %u db %u rel %u \00", align 1
@XLOG_RUNNING_XACTS = common dso_local global i64 0, align 8
@XLOG_INVALIDATIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standby_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
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
  %19 = load i64, i64* @XLOG_STANDBY_LOCK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %57, %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @appendStringInfo(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %47, i32 %55)
  br label %57

57:                                               ; preds = %30
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %24

60:                                               ; preds = %24
  br label %97

61:                                               ; preds = %2
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @XLOG_RUNNING_XACTS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @standby_desc_running_xacts(i32 %68, i32* %69)
  br label %96

71:                                               ; preds = %61
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @XLOG_INVALIDATIONS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = bitcast i8* %76 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %10, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @standby_desc_invalidations(i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %75, %71
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %60
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @standby_desc_running_xacts(i32, i32*) #1

declare dso_local i32 @standby_desc_invalidations(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
