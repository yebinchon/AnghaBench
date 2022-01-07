; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_AlterObjectNamespace_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_AlterObjectNamespace_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8* }

@InvalidOid = common dso_local global i8* null, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AlterObjectNamespace_oid(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** @InvalidOid, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = call i32 @getObjectClass(%struct.TYPE_3__* %10)
  switch i32 %19, label %51 [
    i32 161, label %20
    i32 129, label %34
    i32 144, label %39
    i32 160, label %39
    i32 158, label %39
    i32 147, label %39
    i32 148, label %39
    i32 146, label %39
    i32 138, label %39
    i32 131, label %39
    i32 132, label %39
    i32 130, label %39
    i32 133, label %39
    i32 162, label %50
    i32 159, label %50
    i32 155, label %50
    i32 150, label %50
    i32 149, label %50
    i32 165, label %50
    i32 164, label %50
    i32 163, label %50
    i32 141, label %50
    i32 134, label %50
    i32 139, label %50
    i32 140, label %50
    i32 157, label %50
    i32 136, label %50
    i32 152, label %50
    i32 151, label %50
    i32 128, label %50
    i32 156, label %50
    i32 153, label %50
    i32 154, label %50
    i32 145, label %50
    i32 143, label %50
    i32 142, label %50
    i32 137, label %50
    i32 135, label %50
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @AccessExclusiveLock, align 4
  %23 = call i32 @relation_open(i8* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @RelationGetNamespace(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @AlterTableNamespaceInternal(i32 %26, i8* %27, i8* %28, i32* %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @NoLock, align 4
  %33 = call i32 @relation_close(i32 %31, i32 %32)
  br label %51

34:                                               ; preds = %4
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @AlterTypeNamespace_oid(i8* %35, i8* %36, i32* %37)
  store i8* %38, i8** %9, align 8
  br label %51

39:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @RowExclusiveLock, align 4
  %42 = call i32 @table_open(i8* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @AlterObjectNamespace_internal(i32 %43, i8* %44, i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @RowExclusiveLock, align 4
  %49 = call i32 @table_close(i32 %47, i32 %48)
  br label %51

50:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %51

51:                                               ; preds = %4, %50, %39, %34, %20
  %52 = load i8*, i8** %9, align 8
  ret i8* %52
}

declare dso_local i32 @getObjectClass(%struct.TYPE_3__*) #1

declare dso_local i32 @relation_open(i8*, i32) #1

declare dso_local i8* @RelationGetNamespace(i32) #1

declare dso_local i32 @AlterTableNamespaceInternal(i32, i8*, i8*, i32*) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i8* @AlterTypeNamespace_oid(i8*, i8*, i32*) #1

declare dso_local i32 @table_open(i8*, i32) #1

declare dso_local i8* @AlterObjectNamespace_internal(i32, i8*, i8*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
