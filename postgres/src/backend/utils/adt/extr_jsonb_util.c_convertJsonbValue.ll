; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@jbvArray = common dso_local global i64 0, align 8
@jbvObject = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unknown type of jsonb container to convert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_7__*, i32)* @convertJsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertJsonbValue(i32 %0, i32* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 (...) @check_stack_depth()
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %51

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = call i64 @IsAJsonbScalar(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = call i32 @convertJsonbScalar(i32 %18, i32* %19, %struct.TYPE_7__* %20)
  br label %51

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @jbvArray, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @convertJsonbArray(i32 %29, i32* %30, %struct.TYPE_7__* %31, i32 %32)
  br label %50

34:                                               ; preds = %22
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @jbvObject, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @convertJsonbObject(i32 %41, i32* %42, %struct.TYPE_7__* %43, i32 %44)
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %12, %50, %17
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i64 @IsAJsonbScalar(%struct.TYPE_7__*) #1

declare dso_local i32 @convertJsonbScalar(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @convertJsonbArray(i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @convertJsonbObject(i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
