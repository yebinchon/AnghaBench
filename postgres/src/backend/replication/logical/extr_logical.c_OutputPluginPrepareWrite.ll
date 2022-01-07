; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_OutputPluginPrepareWrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_OutputPluginPrepareWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LogicalDecodingContext = type { i32, i32, i32, i32 (%struct.LogicalDecodingContext*, i32, i32, i32)*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"writes are only accepted in commit, begin and change callbacks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputPluginPrepareWrite(%struct.LogicalDecodingContext* %0, i32 %1) #0 {
  %3 = alloca %struct.LogicalDecodingContext*, align 8
  %4 = alloca i32, align 4
  store %struct.LogicalDecodingContext* %0, %struct.LogicalDecodingContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %6 = getelementptr inbounds %struct.LogicalDecodingContext, %struct.LogicalDecodingContext* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %14 = getelementptr inbounds %struct.LogicalDecodingContext, %struct.LogicalDecodingContext* %13, i32 0, i32 3
  %15 = load i32 (%struct.LogicalDecodingContext*, i32, i32, i32)*, i32 (%struct.LogicalDecodingContext*, i32, i32, i32)** %14, align 8
  %16 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %17 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %18 = getelementptr inbounds %struct.LogicalDecodingContext, %struct.LogicalDecodingContext* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %21 = getelementptr inbounds %struct.LogicalDecodingContext, %struct.LogicalDecodingContext* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %15(%struct.LogicalDecodingContext* %16, i32 %19, i32 %22, i32 %23)
  %25 = load %struct.LogicalDecodingContext*, %struct.LogicalDecodingContext** %3, align 8
  %26 = getelementptr inbounds %struct.LogicalDecodingContext, %struct.LogicalDecodingContext* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
