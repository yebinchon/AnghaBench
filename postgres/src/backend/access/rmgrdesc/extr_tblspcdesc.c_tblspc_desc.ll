; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_tblspcdesc.c_tblspc_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_tblspcdesc.c_tblspc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_TBLSPC_CREATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%u \22%s\22\00", align 1
@XLOG_TBLSPC_DROP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tblspc_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @XLogRecGetData(i32* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @XLogRecGetInfo(i32* %11)
  %13 = load i64, i64* @XLR_INFO_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @XLOG_TBLSPC_CREATE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %43

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @XLOG_TBLSPC_DROP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %8, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %30
  br label %43

43:                                               ; preds = %42, %19
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
