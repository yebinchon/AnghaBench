; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogRegisterData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogRegisterData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_4__* }

@begininsert_called = common dso_local global i32 0, align 4
@num_rdatas = common dso_local global i64 0, align 8
@max_rdatas = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too much WAL data\00", align 1
@rdatas = common dso_local global %struct.TYPE_4__* null, align 8
@mainrdata_last = common dso_local global %struct.TYPE_4__* null, align 8
@mainrdata_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogRegisterData(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @begininsert_called, align 4
  %7 = call i32 @Assert(i32 %6)
  %8 = load i64, i64* @num_rdatas, align 8
  %9 = load i64, i64* @max_rdatas, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR, align 4
  %13 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdatas, align 8
  %16 = load i64, i64* @num_rdatas, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @num_rdatas, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainrdata_last, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @mainrdata_last, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @mainrdata_len, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* @mainrdata_len, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
