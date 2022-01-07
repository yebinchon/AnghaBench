; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_opcf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_opcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@OperatorClassRelationId = common dso_local global i8* null, align 8
@OperatorFamilyRelationId = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@InvalidOid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*, i32)* @get_object_address_opcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_address_opcf(%struct.TYPE_3__* noalias sret %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @linitial(i32* %9)
  %11 = call i32 @strVal(i32 %10)
  %12 = call i32 @get_index_am_oid(i32 %11, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @list_copy_tail(i32* %13, i32 1)
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %34 [
    i32 129, label %16
    i32 128, label %25
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** @OperatorClassRelationId, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @get_opclass_oid(i32 %19, i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %43

25:                                               ; preds = %4
  %26 = load i8*, i8** @OperatorFamilyRelationId, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @get_opfamily_oid(i32 %28, i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %43

34:                                               ; preds = %4
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** @InvalidOid, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @InvalidOid, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %25, %16
  ret void
}

declare dso_local i32 @get_index_am_oid(i32, i32) #1

declare dso_local i32 @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32* @list_copy_tail(i32*, i32) #1

declare dso_local i8* @get_opclass_oid(i32, i32*, i32) #1

declare dso_local i8* @get_opfamily_oid(i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
