; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseLockingClause.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseLockingClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c" FOR UPDATE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" OF %s%d\00", align 1
@REL_ALIAS_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" FOR SHARE\00", align 1
@BMS_MULTIPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @deparseLockingClause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseLockingClause(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %6, align 8
  store i32 -1, i32* %7, align 4
  br label %22

22:                                               ; preds = %111, %36, %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bms_next_member(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @bms_is_member(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %22

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CMD_UPDATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CMD_DELETE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %53, %45
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @appendStringInfoString(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = call i64 @IS_JOIN_REL(%struct.TYPE_12__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @REL_ALIAS_PREFIX, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @appendStringInfo(i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %111

73:                                               ; preds = %53, %37
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call %struct.TYPE_14__* @get_plan_rowmark(i32 %76, i32 %77)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %8, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  br i1 %80, label %81, label %110

81:                                               ; preds = %73
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %92 [
    i32 128, label %85
    i32 132, label %86
    i32 130, label %86
    i32 131, label %89
    i32 129, label %89
  ]

85:                                               ; preds = %81
  br label %92

86:                                               ; preds = %81, %81
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @appendStringInfoString(i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %92

89:                                               ; preds = %81, %81
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @appendStringInfoString(i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %81, %89, %86, %85
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @bms_membership(i32 %95)
  %97 = load i64, i64* @BMS_MULTIPLE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 128
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @REL_ALIAS_PREFIX, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @appendStringInfo(i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99, %92
  br label %110

110:                                              ; preds = %109, %73
  br label %111

111:                                              ; preds = %110, %72
  br label %22

112:                                              ; preds = %22
  ret void
}

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i64 @bms_is_member(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_12__*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @get_plan_rowmark(i32, i32) #1

declare dso_local i64 @bms_membership(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
