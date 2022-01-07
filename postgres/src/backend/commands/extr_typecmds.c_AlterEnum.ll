; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterEnum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterEnum(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @makeTypeNameFromNameList(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @typenameTypeId(i32* null, i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @TYPEOID, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @SearchSysCache1(i32 %13, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @checkEnumOwner(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ReleaseSysCache(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RenameEnumLabel(i32 %34, i32 %37, i32 %40)
  br label %57

42:                                               ; preds = %24
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AddEnumLabel(i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %42, %33
  %58 = load i32, i32* @TypeRelationId, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @InvokeObjectPostAlterHook(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TypeRelationId, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ObjectAddressSet(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32* @makeTypeNameFromNameList(i32) #1

declare dso_local i32 @typenameTypeId(i32*, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @checkEnumOwner(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @RenameEnumLabel(i32, i32, i32) #1

declare dso_local i32 @AddEnumLabel(i32, i32, i32, i32, i32) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
