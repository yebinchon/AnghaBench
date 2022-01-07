; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_GetEpochTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_GetEpochTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not convert epoch to timestamp: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetEpochTime(%struct.pg_tm* %0) #0 {
  %2 = alloca %struct.pg_tm*, align 8
  %3 = alloca %struct.pg_tm*, align 8
  %4 = alloca i32, align 4
  store %struct.pg_tm* %0, %struct.pg_tm** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call %struct.pg_tm* @pg_gmtime(i32* %4)
  store %struct.pg_tm* %5, %struct.pg_tm** %3, align 8
  %6 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %7 = icmp eq %struct.pg_tm* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ERROR, align 4
  %10 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %13 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %16 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %18 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %21 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %23 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %26 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %28 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %31 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %33 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %36 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %38 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %41 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %43 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1900
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %47 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  ret void
}

declare dso_local %struct.pg_tm* @pg_gmtime(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
