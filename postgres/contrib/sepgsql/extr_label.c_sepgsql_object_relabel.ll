; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_object_relabel.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_object_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SELinux: invalid security label: \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"sepgsql provider does not support labels on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_object_relabel(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = call i64 @security_check_context_raw(i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @ereport(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %7, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %62 [
    i32 131, label %23
    i32 130, label %29
    i32 128, label %35
    i32 129, label %56
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sepgsql_database_relabel(i32 %26, i8* %27)
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sepgsql_schema_relabel(i32 %32, i8* %33)
  br label %70

35:                                               ; preds = %19
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sepgsql_relation_relabel(i32 %43, i8* %44)
  br label %55

46:                                               ; preds = %35
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @sepgsql_attribute_relabel(i32 %49, i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %46, %40
  br label %70

56:                                               ; preds = %19
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @sepgsql_proc_relabel(i32 %59, i8* %60)
  br label %70

62:                                               ; preds = %19
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = call i8* @getObjectTypeDescription(%struct.TYPE_4__* %66)
  %68 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = call i32 @ereport(i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %62, %56, %55, %29, %23
  ret void
}

declare dso_local i64 @security_check_context_raw(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @sepgsql_database_relabel(i32, i8*) #1

declare dso_local i32 @sepgsql_schema_relabel(i32, i8*) #1

declare dso_local i32 @sepgsql_relation_relabel(i32, i8*) #1

declare dso_local i32 @sepgsql_attribute_relabel(i32, i32, i8*) #1

declare dso_local i32 @sepgsql_proc_relabel(i32, i8*) #1

declare dso_local i8* @getObjectTypeDescription(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
