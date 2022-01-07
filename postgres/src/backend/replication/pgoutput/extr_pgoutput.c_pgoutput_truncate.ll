; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, i32, i32*, %struct.TYPE_19__*)* @pgoutput_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgoutput_truncate(%struct.TYPE_22__* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %10, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %11, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MemoryContextSwitchTo(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32* @palloc0(i32 %30)
  store i32* %31, i32** %16, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %69, %5
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @RelationGetRelid(i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @is_publishable_relation(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %69

48:                                               ; preds = %36
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call %struct.TYPE_20__* @get_rel_sync_entry(%struct.TYPE_21__* %49, i32 %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %13, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %18, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %68 = call i32 @maybe_send_schema(%struct.TYPE_22__* %65, i32 %66, %struct.TYPE_20__* %67)
  br label %69

69:                                               ; preds = %58, %57, %47
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_22__* %76, i32 1)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @logicalrep_write_truncate(i32 %80, i32 %81, i32* %82, i32 %87, i32 %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = call i32 @OutputPluginWrite(%struct.TYPE_22__* %94, i32 1)
  br label %96

96:                                               ; preds = %75, %72
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @MemoryContextSwitchTo(i32 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MemoryContextReset(i32 %101)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @palloc0(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @is_publishable_relation(i32) #1

declare dso_local %struct.TYPE_20__* @get_rel_sync_entry(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @maybe_send_schema(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @logicalrep_write_truncate(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
