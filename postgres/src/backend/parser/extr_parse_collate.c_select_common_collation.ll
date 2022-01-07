; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_select_common_collation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_select_common_collation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32*, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@COLLATE_NONE = common dso_local global i64 0, align 8
@COLLATE_CONFLICT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_COLLATION_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"collation mismatch between implicit collations \22%s\22 and \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"You can choose the collation by applying the COLLATE clause to one or both expressions.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_common_collation(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32* %9, i32** %10, align 8
  %11 = load i32, i32* @InvalidOid, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i64, i64* @COLLATE_NONE, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 -1, i32* %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @assign_collations_walker(i32* %16, %struct.TYPE_3__* %8)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @COLLATE_CONFLICT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @InvalidOid, align 4
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_COLLATION_MISMATCH, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_collation_name(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_collation_name(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = call i32 @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @parser_errposition(i32* %40, i32 %42)
  %44 = call i32 @ereport(i32 %28, i32 %43)
  br label %45

45:                                               ; preds = %27, %3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assign_collations_walker(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @get_collation_name(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
