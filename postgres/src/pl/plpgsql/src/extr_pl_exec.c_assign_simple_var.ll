; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_assign_simple_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_assign_simple_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.varlena = type { i32 }

@PLPGSQL_DTYPE_VAR = common dso_local global i64 0, align 8
@PLPGSQL_DTYPE_PROMISE = common dso_local global i64 0, align 8
@PLPGSQL_PROMISE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32)* @assign_simple_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_simple_var(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLPGSQL_DTYPE_VAR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PLPGSQL_DTYPE_PROMISE, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @DatumGetPointer(i32 %43)
  %45 = call i64 @VARATT_IS_EXTERNAL_NON_EXPANDED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = call i32 @get_eval_mcontext(%struct.TYPE_9__* %48)
  %50 = call i32 @MemoryContextSwitchTo(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @DatumGetPointer(i32 %51)
  %53 = inttoptr i64 %52 to %struct.varlena*
  %54 = call i32 @detoast_external_attr(%struct.varlena* %53)
  %55 = call i32 @PointerGetDatum(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @DatumGetPointer(i32 %61)
  %63 = call i32 @pfree(i64 %62)
  br label %64

64:                                               ; preds = %60, %47
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @datumCopy(i32 %65, i32 0, i32 -1)
  store i32 %66, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %42, %35, %32, %24
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @DatumIsReadWriteExpandedObject(i32 %75, i32 %78, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DeleteExpandedObject(i32 %89)
  br label %97

91:                                               ; preds = %72
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @DatumGetPointer(i32 %94)
  %96 = call i32 @pfree(i64 %95)
  br label %97

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @PLPGSQL_PROMISE_NONE, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_NON_EXPANDED(i64) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_9__*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @pfree(i64) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i64 @DatumIsReadWriteExpandedObject(i32, i32, i32) #1

declare dso_local i32 @DeleteExpandedObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
