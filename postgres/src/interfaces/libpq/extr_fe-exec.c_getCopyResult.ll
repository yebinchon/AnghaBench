; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_getCopyResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_getCopyResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }

@CONNECTION_OK = common dso_local global i64 0, align 8
@PGASYNC_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i64)* @getCopyResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getCopyResult(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CONNECTION_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @pqSaveErrorResult(%struct.TYPE_8__* %12)
  %14 = load i32, i32* @PGASYNC_IDLE, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = call i32* @pqPrepareAsyncResult(%struct.TYPE_8__* %17)
  store i32* %18, i32** %3, align 8
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i32* @pqPrepareAsyncResult(%struct.TYPE_8__* %33)
  store i32* %34, i32** %3, align 8
  br label %39

35:                                               ; preds = %24, %19
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32* @PQmakeEmptyPGresult(%struct.TYPE_8__* %36, i64 %37)
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %35, %32, %11
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_8__*) #1

declare dso_local i32* @pqPrepareAsyncResult(%struct.TYPE_8__*) #1

declare dso_local i32* @PQmakeEmptyPGresult(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
