; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getIdentitySequence.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getIdentitySequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"more than one owned sequence found\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no owned sequence found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getIdentitySequence(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %12 = call i32* @getOwnedSequences_internal(i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @list_length(i32* %13)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @list_length(i32* %20)
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @InvalidOid, align 4
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %23
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @linitial_oid(i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32* @getOwnedSequences_internal(i32, i32, i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @linitial_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
