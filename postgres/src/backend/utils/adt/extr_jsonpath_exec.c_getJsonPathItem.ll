; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getJsonPathItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getJsonPathItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@jbvNull = common dso_local global i32 0, align 4
@jbvBool = common dso_local global i32 0, align 4
@jbvNumeric = common dso_local global i32 0, align 4
@jbvString = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected jsonpath item type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*)* @getJsonPathItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getJsonPathItem(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 131, label %10
    i32 132, label %14
    i32 130, label %23
    i32 129, label %32
    i32 128, label %46
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @jbvNull, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %57

14:                                               ; preds = %3
  %15 = load i32, i32* @jbvBool, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = call i32 @jspGetBool(%struct.TYPE_18__* %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* @jbvNumeric, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = call i32 @jspGetNumeric(%struct.TYPE_18__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load i32, i32* @jbvString, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = call i32 @jspGetString(%struct.TYPE_18__* %36, i32* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  br label %57

46:                                               ; preds = %3
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = call i32 @getJsonPathVariable(%struct.TYPE_19__* %47, %struct.TYPE_18__* %48, i32 %51, %struct.TYPE_17__* %52)
  br label %57

54:                                               ; preds = %3
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 @elog(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %46, %54, %32, %23, %14, %10
  ret void
}

declare dso_local i32 @jspGetBool(%struct.TYPE_18__*) #1

declare dso_local i32 @jspGetNumeric(%struct.TYPE_18__*) #1

declare dso_local i32 @jspGetString(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @getJsonPathVariable(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
