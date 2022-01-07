; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_replace_auto_config_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_replace_auto_config_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, %struct.TYPE_7__**, i8*, i8*)* @replace_auto_config_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_auto_config_value(%struct.TYPE_7__** %0, %struct.TYPE_7__** %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  br label %14

14:                                               ; preds = %61, %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @guc_name_compare(%struct.TYPE_7__* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @pfree(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @pfree(%struct.TYPE_7__* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @pfree(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = call i32 @pfree(%struct.TYPE_7__* %56)
  br label %60

58:                                               ; preds = %17
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %11, align 8
  br label %60

60:                                               ; preds = %58, %43
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %9, align 8
  br label %14

63:                                               ; preds = %14
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %107

67:                                               ; preds = %63
  %68 = call %struct.TYPE_7__* @palloc(i32 56)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @pstrdup(i8* %69)
  %71 = bitcast i8* %70 to %struct.TYPE_7__*
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @pstrdup(i8* %74)
  %76 = bitcast i8* %75 to %struct.TYPE_7__*
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = call i8* @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %82 = bitcast i8* %81 to %struct.TYPE_7__*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %67
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %98, align 8
  br label %104

99:                                               ; preds = %67
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %103, align 8
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %106, align 8
  br label %107

107:                                              ; preds = %104, %66
  ret void
}

declare dso_local i64 @guc_name_compare(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @palloc(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
