; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_exec.c_PLy_abort_open_subtransactions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_exec.c_PLy_abort_open_subtransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@explicit_subtransactions = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"forcibly aborting a subtransaction that has not been exited\00", align 1
@CurrentResourceOwner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @PLy_abort_open_subtransactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_abort_open_subtransactions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i64, i64* @explicit_subtransactions, align 8
  %10 = call i32 @list_length(i64 %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load i64, i64* @explicit_subtransactions, align 8
  %15 = load i64, i64* @NIL, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* @WARNING, align 4
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %19, i32 %20)
  %22 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %23 = load i64, i64* @explicit_subtransactions, align 8
  %24 = call i64 @linitial(i64 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %3, align 8
  %26 = load i64, i64* @explicit_subtransactions, align 8
  %27 = call i64 @list_delete_first(i64 %26)
  store i64 %27, i64* @explicit_subtransactions, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MemoryContextSwitchTo(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @CurrentResourceOwner, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = call i32 @pfree(%struct.TYPE_3__* %35)
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
