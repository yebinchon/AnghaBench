; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_maybe_send_schema.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_maybe_send_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@FirstGenbkiObjectId = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_13__*)* @maybe_send_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_send_schema(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_12__* @RelationGetDescr(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %56, %14
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_12__* %24, i32 %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %23
  br label %56

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FirstGenbkiObjectId, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %56

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_14__* %45, i32 0)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @logicalrep_write_typ(i32 %49, i64 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @OutputPluginWrite(%struct.TYPE_14__* %54, i32 0)
  br label %56

56:                                               ; preds = %44, %43, %36
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_14__* %60, i32 0)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @logicalrep_write_rel(i32 %64, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = call i32 @OutputPluginWrite(%struct.TYPE_14__* %67, i32 0)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %3
  ret void
}

declare dso_local %struct.TYPE_12__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @logicalrep_write_typ(i32, i64) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @logicalrep_write_rel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
