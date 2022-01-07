; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdsetvar.c_rrdsetvar_custom_chart_variable_create.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdsetvar.c_rrdsetvar_custom_chart_variable_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@RRDVAR_OPTION_CUSTOM_CHART_VAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"RRDSETVAR: custom variable '%s' on chart '%s' of host '%s', conflicts with an internal chart variable\00", align 1
@NAN = common dso_local global i32 0, align 4
@RRDVAR_TYPE_CALCULATED = common dso_local global i32 0, align 4
@RRDVAR_OPTION_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @rrdsetvar_custom_chart_variable_create(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdupz(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @rrdvar_fix_name(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @simple_hash(i8* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @rrdset_wrlock(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %9, align 8
  br label %25

25:                                               ; preds = %66, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i8* %35, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = call i32 @rrdset_unlock(%struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RRDVAR_OPTION_CUSTOM_CHART_VAR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @freez(i8* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %3, align 8
  br label %87

54:                                               ; preds = %41
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @error(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %58, i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @freez(i8* %63)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %87

65:                                               ; preds = %34, %28
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %9, align 8
  br label %25

70:                                               ; preds = %25
  %71 = call i32* @mallocz(i32 4)
  store i32* %71, i32** %10, align 8
  %72 = load i32, i32* @NAN, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @RRDVAR_TYPE_CALCULATED, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @RRDVAR_OPTION_ALLOCATED, align 4
  %79 = load i32, i32* @RRDVAR_OPTION_CUSTOM_CHART_VAR, align 4
  %80 = or i32 %78, %79
  %81 = call %struct.TYPE_10__* @rrdsetvar_create(%struct.TYPE_11__* %74, i8* %75, i32 %76, i32* %77, i32 %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %9, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = call i32 @rrdset_unlock(%struct.TYPE_11__* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @freez(i8* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %3, align 8
  br label %87

87:                                               ; preds = %70, %54, %50
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %88
}

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @rrdvar_fix_name(i8*) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @rrdset_wrlock(%struct.TYPE_11__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @rrdset_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i32) #1

declare dso_local i32* @mallocz(i32) #1

declare dso_local %struct.TYPE_10__* @rrdsetvar_create(%struct.TYPE_11__*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
