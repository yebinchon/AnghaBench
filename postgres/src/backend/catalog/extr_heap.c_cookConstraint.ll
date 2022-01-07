; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_cookConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_cookConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EXPR_KIND_CHECK_CONSTRAINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_COLUMN_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"only table \22%s\22 can be referenced in check constraint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i8*)* @cookConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cookConstraint(%struct.TYPE_6__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @EXPR_KIND_CHECK_CONSTRAINT, align 4
  %11 = call i32* @transformExpr(%struct.TYPE_6__* %8, i32* %9, i32 %10)
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @coerce_to_boolean(%struct.TYPE_6__* %12, i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @assign_expr_collations(%struct.TYPE_6__* %15, i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @list_length(i32 %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INVALID_COLUMN_REFERENCE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load i32*, i32** %7, align 8
  ret i32* %31
}

declare dso_local i32* @transformExpr(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32* @coerce_to_boolean(%struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i32 @assign_expr_collations(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
