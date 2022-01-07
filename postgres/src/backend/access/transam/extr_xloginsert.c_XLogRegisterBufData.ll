; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogRegisterBufData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogRegisterBufData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_6__* }

@begininsert_called = common dso_local global i32 0, align 4
@registered_buffers = common dso_local global %struct.TYPE_5__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"no block with id %d registered with WAL insertion\00", align 1
@num_rdatas = common dso_local global i64 0, align 8
@max_rdatas = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"too much WAL data\00", align 1
@rdatas = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogRegisterBufData(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @begininsert_called, align 4
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @registered_buffers, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %12
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i32, i8*, ...) @elog(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i64, i64* @num_rdatas, align 8
  %24 = load i64, i64* @max_rdatas, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 (i32, i8*, ...) @elog(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rdatas, align 8
  %31 = load i64, i64* @num_rdatas, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @num_rdatas, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
