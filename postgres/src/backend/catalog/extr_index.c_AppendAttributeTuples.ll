; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_AppendAttributeTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_AppendAttributeTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AppendAttributeTuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendAttributeTuples(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @AttributeRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CatalogOpenIndexes(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @RelationGetDescr(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_4__* @TupleDescAttr(i32 %22, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @InsertPgAttributeTuple(i32 %33, %struct.TYPE_4__* %34, i32 %35)
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @CatalogCloseIndexes(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RowExclusiveLock, align 4
  %45 = call i32 @table_close(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @CatalogOpenIndexes(i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_4__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @InsertPgAttributeTuple(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CatalogCloseIndexes(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
