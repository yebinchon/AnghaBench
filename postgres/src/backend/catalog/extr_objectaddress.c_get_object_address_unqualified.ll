; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_unqualified.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_unqualified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@AccessMethodRelationId = common dso_local global i8* null, align 8
@DatabaseRelationId = common dso_local global i8* null, align 8
@ExtensionRelationId = common dso_local global i8* null, align 8
@TableSpaceRelationId = common dso_local global i8* null, align 8
@AuthIdRelationId = common dso_local global i8* null, align 8
@NamespaceRelationId = common dso_local global i8* null, align 8
@LanguageRelationId = common dso_local global i8* null, align 8
@ForeignDataWrapperRelationId = common dso_local global i8* null, align 8
@ForeignServerRelationId = common dso_local global i8* null, align 8
@EventTriggerRelationId = common dso_local global i8* null, align 8
@PublicationRelationId = common dso_local global i8* null, align 8
@SubscriptionRelationId = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@InvalidOid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*, i32)* @get_object_address_unqualified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_address_unqualified(%struct.TYPE_3__* noalias sret %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i8* @strVal(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %108 [
    i32 139, label %12
    i32 138, label %20
    i32 136, label %28
    i32 128, label %36
    i32 131, label %44
    i32 130, label %52
    i32 133, label %60
    i32 135, label %68
    i32 134, label %76
    i32 137, label %84
    i32 132, label %92
    i32 129, label %100
  ]

12:                                               ; preds = %4
  %13 = load i8*, i8** @AccessMethodRelationId, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @get_am_oid(i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %117

20:                                               ; preds = %4
  %21 = load i8*, i8** @DatabaseRelationId, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @get_database_oid(i8* %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %117

28:                                               ; preds = %4
  %29 = load i8*, i8** @ExtensionRelationId, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @get_extension_oid(i8* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %117

36:                                               ; preds = %4
  %37 = load i8*, i8** @TableSpaceRelationId, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @get_tablespace_oid(i8* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %117

44:                                               ; preds = %4
  %45 = load i8*, i8** @AuthIdRelationId, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @get_role_oid(i8* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %117

52:                                               ; preds = %4
  %53 = load i8*, i8** @NamespaceRelationId, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @get_namespace_oid(i8* %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %117

60:                                               ; preds = %4
  %61 = load i8*, i8** @LanguageRelationId, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @get_language_oid(i8* %63, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %117

68:                                               ; preds = %4
  %69 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @get_foreign_data_wrapper_oid(i8* %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %117

76:                                               ; preds = %4
  %77 = load i8*, i8** @ForeignServerRelationId, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @get_foreign_server_oid(i8* %79, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %117

84:                                               ; preds = %4
  %85 = load i8*, i8** @EventTriggerRelationId, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i8* @get_event_trigger_oid(i8* %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %117

92:                                               ; preds = %4
  %93 = load i8*, i8** @PublicationRelationId, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i8* @get_publication_oid(i8* %95, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %117

100:                                              ; preds = %4
  %101 = load i8*, i8** @SubscriptionRelationId, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i8* @get_subscription_oid(i8* %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %117

108:                                              ; preds = %4
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** @InvalidOid, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** @InvalidOid, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20, %12
  ret void
}

declare dso_local i8* @strVal(i32*) #1

declare dso_local i8* @get_am_oid(i8*, i32) #1

declare dso_local i8* @get_database_oid(i8*, i32) #1

declare dso_local i8* @get_extension_oid(i8*, i32) #1

declare dso_local i8* @get_tablespace_oid(i8*, i32) #1

declare dso_local i8* @get_role_oid(i8*, i32) #1

declare dso_local i8* @get_namespace_oid(i8*, i32) #1

declare dso_local i8* @get_language_oid(i8*, i32) #1

declare dso_local i8* @get_foreign_data_wrapper_oid(i8*, i32) #1

declare dso_local i8* @get_foreign_server_oid(i8*, i32) #1

declare dso_local i8* @get_event_trigger_oid(i8*, i32) #1

declare dso_local i8* @get_publication_oid(i8*, i32) #1

declare dso_local i8* @get_subscription_oid(i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
