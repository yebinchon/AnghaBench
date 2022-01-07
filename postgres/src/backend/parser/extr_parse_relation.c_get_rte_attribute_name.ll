; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_get_rte_attribute_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_get_rte_attribute_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@InvalidAttrNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RTE_RELATION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"invalid attnum %d for rangetable entry %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_rte_attribute_name(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @InvalidAttrNumber, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %80

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @list_length(i32 %24)
  %26 = icmp sle i64 %19, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @list_nth(i32 %32, i64 %34)
  %36 = call i8* @strVal(i32 %35)
  store i8* %36, i8** %3, align 8
  br label %80

37:                                               ; preds = %18, %15, %10
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RTE_RELATION, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i8* @get_attname(i32 %46, i64 %47, i32 0)
  store i8* %48, i8** %3, align 8
  br label %80

49:                                               ; preds = %37
  %50 = load i64, i64* %5, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @list_length(i32 %58)
  %60 = icmp sle i64 %53, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %5, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @list_nth(i32 %66, i64 %68)
  %70 = call i8* @strVal(i32 %69)
  store i8* %70, i8** %3, align 8
  br label %80

71:                                               ; preds = %52, %49
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %78)
  store i8* null, i8** %3, align 8
  br label %80

80:                                               ; preds = %71, %61, %43, %27, %9
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

declare dso_local i64 @list_length(i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @list_nth(i32, i64) #1

declare dso_local i8* @get_attname(i32, i64, i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
