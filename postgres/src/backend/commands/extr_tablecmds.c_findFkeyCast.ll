; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_findFkeyCast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_findFkeyCast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COERCION_PATH_RELABELTYPE = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@COERCION_IMPLICIT = common dso_local global i32 0, align 4
@COERCION_PATH_NONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not find cast from %u to %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64*)* @findFkeyCast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @findFkeyCast(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i64, i64* @COERCION_PATH_RELABELTYPE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @InvalidOid, align 8
  %14 = load i64*, i64** %6, align 8
  store i64 %13, i64* %14, align 8
  br label %30

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @COERCION_IMPLICIT, align 4
  %19 = load i64*, i64** %6, align 8
  %20 = call i64 @find_coercion_pathway(i64 %16, i64 %17, i32 %18, i64* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @COERCION_PATH_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %15
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local i64 @find_coercion_pathway(i64, i64, i32, i64*) #1

declare dso_local i32 @elog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
