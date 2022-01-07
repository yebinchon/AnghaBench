; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarAdjustRelationPersistence.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarAdjustRelationPersistence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot create relations in temporary schemas of other sessions\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"cannot create temporary relation in non-temporary schema\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"only temporary relations may be created in temporary schemas\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RangeVarAdjustRelationPersistence(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %49 [
    i32 128, label %8
    i32 129, label %30
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @isTempOrTempToastNamespace(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @isAnyTempNamespace(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %17, i32 %20)
  br label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  br label %29

29:                                               ; preds = %28, %8
  br label %60

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @isTempOrTempToastNamespace(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 128, i32* %36, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @isAnyTempNamespace(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %34
  br label %60

49:                                               ; preds = %2
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @isAnyTempNamespace(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %48, %29
  ret void
}

declare dso_local i32 @isTempOrTempToastNamespace(i32) #1

declare dso_local i32 @isAnyTempNamespace(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
