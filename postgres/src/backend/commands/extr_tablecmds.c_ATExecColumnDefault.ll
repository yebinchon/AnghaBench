; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecColumnDefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecColumnDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i32*, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@InvalidAttrNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"column \22%s\22 of relation \22%s\22 is an identity column\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Use ALTER TABLE ... ALTER COLUMN ... DROP IDENTITY instead.\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"column \22%s\22 of relation \22%s\22 is a generated column\00", align 1
@DROP_RESTRICT = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32)* @ATExecColumnDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecColumnDefault(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @RelationGetDescr(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @RelationGetRelid(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @get_attnum(i32 %16, i8* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @InvalidAttrNumber, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RelationGetRelationName(i32 %27)
  %29 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28)
  %30 = call i32 @ereport(i32 %23, i32 %29)
  br label %31

31:                                               ; preds = %22, %4
  %32 = load i64, i64* %10, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = sub nsw i64 %43, 1
  %45 = call %struct.TYPE_5__* @TupleDescAttr(i32 %42, i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @RelationGetRelationName(i32 %54)
  %56 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %62

60:                                               ; preds = %49
  %61 = call i32 @errhint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  %64 = call i32 @ereport(i32 %50, i32 %63)
  br label %65

65:                                               ; preds = %62, %41
  %66 = load i32, i32* %9, align 4
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call %struct.TYPE_5__* @TupleDescAttr(i32 %66, i64 %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @RelationGetRelationName(i32 %78)
  %80 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %77, i32 %79)
  %81 = call i32 @ereport(i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %73, %65
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @RelationGetRelid(i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* @DROP_RESTRICT, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = icmp eq i32* %87, null
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 1
  %91 = call i32 @RemoveAttrDefault(i32 %84, i64 %85, i32 %86, i32 0, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %112

94:                                               ; preds = %82
  %95 = call i64 @palloc(i32 24)
  %96 = inttoptr i64 %95 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %12, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i8 0, i8* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = call i32 @list_make1(%struct.TYPE_4__* %108)
  %110 = load i32, i32* @NIL, align 4
  %111 = call i32 @AddRelationNewConstraints(i32 %107, i32 %109, i32 %110, i32 0, i32 1, i32 0, i32* null)
  br label %112

112:                                              ; preds = %94, %82
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @RelationRelationId, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @RelationGetRelid(i32 %115)
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @ObjectAddressSubSet(i32 %113, i32 %114, i32 %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i64 @get_attnum(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local %struct.TYPE_5__* @TupleDescAttr(i32, i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @RemoveAttrDefault(i32, i64, i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @AddRelationNewConstraints(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @list_make1(%struct.TYPE_4__*) #1

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
