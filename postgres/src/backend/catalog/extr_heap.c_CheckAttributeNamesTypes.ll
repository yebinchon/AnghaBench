; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_CheckAttributeNamesTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_CheckAttributeNamesTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MaxHeapAttributeNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TOO_MANY_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"tables can have at most %d columns\00", align 1
@RELKIND_VIEW = common dso_local global i8 0, align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@ERRCODE_DUPLICATE_COLUMN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"column name \22%s\22 conflicts with a system column name\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"column name \22%s\22 specified more than once\00", align 1
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckAttributeNamesTypes(%struct.TYPE_6__* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_TOO_MANY_COLUMNS, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @RELKIND_VIEW, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %45, i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %10, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NameStr(i32 %50)
  %52 = call i32* @SystemAttributeByName(i32 %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_DUPLICATE_COLUMN, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NameStr(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %54, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %40

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68, %33, %27
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %111, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %107, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @NameStr(i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %86, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @NameStr(i32 %90)
  %92 = call i64 @strcmp(i32 %85, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %79
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_DUPLICATE_COLUMN, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %98, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @NameStr(i32 %102)
  %104 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = call i32 @ereport(i32 %95, i32 %104)
  br label %106

106:                                              ; preds = %94, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %75

110:                                              ; preds = %75
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %70

114:                                              ; preds = %70
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %139, %114
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %120, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @NameStr(i32 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %131, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NIL, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @CheckAttributeType(i32 %125, i32 %130, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %119
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %115

142:                                              ; preds = %115
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @SystemAttributeByName(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @CheckAttributeType(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
