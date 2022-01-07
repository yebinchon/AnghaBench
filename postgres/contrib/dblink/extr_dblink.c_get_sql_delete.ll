; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_sql_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"DELETE FROM %s WHERE \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" IS NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i32, i8**)* @get_sql_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sql_delete(%struct.TYPE_11__* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = call i32 @initStringInfo(%struct.TYPE_10__* %11)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = call i8* @generate_relation_name(%struct.TYPE_11__* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @appendStringInfo(%struct.TYPE_10__* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %64, %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call %struct.TYPE_12__* @TupleDescAttr(i32 %33, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %14, align 8
  %36 = load i32, i32* %12, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 @appendStringInfoString(%struct.TYPE_10__* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %27
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NameStr(i32 %43)
  %45 = call i8* @quote_ident_cstr(i32 %44)
  %46 = call i32 @appendStringInfoString(%struct.TYPE_10__* %11, i8* %45)
  %47 = load i8**, i8*** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load i8**, i8*** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @quote_literal_cstr(i8* %58)
  %60 = call i32 @appendStringInfo(%struct.TYPE_10__* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %63

61:                                               ; preds = %40
  %62 = call i32 @appendStringInfoString(%struct.TYPE_10__* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %23

67:                                               ; preds = %23
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  ret i8* %69
}

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i8* @generate_relation_name(%struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @quote_ident_cstr(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
