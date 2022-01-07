; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_proclang.c_find_language_template.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_proclang.c_find_language_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PLTemplateRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_pltemplate_tmplname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@PLTemplateNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_pltemplate_tmplhandler = common dso_local global i32 0, align 4
@Anum_pg_pltemplate_tmplinline = common dso_local global i32 0, align 4
@Anum_pg_pltemplate_tmplvalidator = common dso_local global i32 0, align 4
@Anum_pg_pltemplate_tmpllibrary = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @find_language_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @find_language_template(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @PLTemplateRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @Anum_pg_pltemplate_tmplname, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_NAMEEQ, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @CStringGetDatum(i8* %17)
  %19 = call i32 @ScanKeyInit(i32* %6, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PLTemplateNameIndexId, align 4
  %22 = call i32 @systable_beginscan(i32 %20, i32 %21, i32 1, i32* null, i32 1, i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @systable_getnext(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @GETSTRUCT(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %8, align 8
  %33 = call i64 @palloc0(i32 40)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @Anum_pg_pltemplate_tmplhandler, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @RelationGetDescr(i32 %47)
  %49 = call i32 @heap_getattr(i32 %45, i32 %46, i32 %48, i32* %10)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @TextDatumGetCString(i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %28
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @Anum_pg_pltemplate_tmplinline, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @RelationGetDescr(i32 %60)
  %62 = call i32 @heap_getattr(i32 %58, i32 %59, i32 %61, i32* %10)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @TextDatumGetCString(i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @Anum_pg_pltemplate_tmplvalidator, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @RelationGetDescr(i32 %73)
  %75 = call i32 @heap_getattr(i32 %71, i32 %72, i32 %74, i32* %10)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = call i8* @TextDatumGetCString(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @Anum_pg_pltemplate_tmpllibrary, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @RelationGetDescr(i32 %86)
  %88 = call i32 @heap_getattr(i32 %84, i32 %85, i32 %87, i32* %10)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @TextDatumGetCString(i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %83
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %96
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %107

107:                                              ; preds = %106, %101
  br label %109

108:                                              ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @systable_endscan(i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @AccessShareLock, align 4
  %114 = call i32 @table_close(i32 %112, i32 %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %115
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
