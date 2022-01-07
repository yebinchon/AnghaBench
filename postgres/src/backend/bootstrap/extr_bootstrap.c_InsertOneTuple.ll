; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_InsertOneTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_InsertOneTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"inserting row with %d columns\00", align 1
@numattr = common dso_local global i32 0, align 4
@attrtypes = common dso_local global i32 0, align 4
@values = common dso_local global i32 0, align 4
@Nulls = common dso_local global i32* null, align 8
@boot_reldesc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"row inserted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertOneTuple() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DEBUG4, align 4
  %5 = load i32, i32* @numattr, align 4
  %6 = call i32 (i32, i8*, ...) @elog(i32 %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @numattr, align 4
  %8 = load i32, i32* @attrtypes, align 4
  %9 = call i32 @CreateTupleDesc(i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @values, align 4
  %12 = load i32*, i32** @Nulls, align 8
  %13 = call i32 @heap_form_tuple(i32 %10, i32 %11, i32* %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pfree(i32 %14)
  %16 = load i32, i32* @boot_reldesc, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @simple_heap_insert(i32 %16, i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @heap_freetuple(i32 %19)
  %21 = load i32, i32* @DEBUG4, align 4
  %22 = call i32 (i32, i8*, ...) @elog(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %32, %0
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @numattr, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** @Nulls, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %23

35:                                               ; preds = %23
  ret void
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @CreateTupleDesc(i32, i32) #1

declare dso_local i32 @heap_form_tuple(i32, i32, i32*) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @simple_heap_insert(i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
