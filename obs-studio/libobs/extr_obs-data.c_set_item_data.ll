; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_item_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_item_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.obs_data* }
%struct.obs_data_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data*, %struct.obs_data_item**, i8*, i8*, i64, i32, i32, i32)* @set_item_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_item_data(%struct.obs_data* %0, %struct.obs_data_item** %1, i8* %2, i8* %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.obs_data*, align 8
  %10 = alloca %struct.obs_data_item**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.obs_data* %0, %struct.obs_data** %9, align 8
  store %struct.obs_data_item** %1, %struct.obs_data_item*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  %20 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %21 = icmp ne %struct.obs_data_item** %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %8
  %23 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %24 = icmp ne %struct.obs_data_item** %23, null
  br i1 %24, label %25, label %100

25:                                               ; preds = %22
  %26 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %27 = load %struct.obs_data_item*, %struct.obs_data_item** %26, align 8
  %28 = icmp ne %struct.obs_data_item* %27, null
  br i1 %28, label %100, label %29

29:                                               ; preds = %25, %8
  %30 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %31 = icmp ne %struct.obs_data* %30, null
  br i1 %31, label %32, label %100

32:                                               ; preds = %29
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call %struct.TYPE_7__* @obs_data_item_create(i8* %33, i8* %34, i64 %35, i32 %36, i32 %37, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %17, align 8
  %40 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %41 = call %struct.TYPE_7__* @obs_data_first(%struct.obs_data* %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %18, align 8
  %42 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %43 = call %struct.TYPE_7__* @obs_data_first(%struct.obs_data* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %19, align 8
  %44 = call i32 @obs_data_item_next(%struct.TYPE_7__** %19)
  br label %45

45:                                               ; preds = %61, %32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %55 = call i32 @get_item_name(%struct.TYPE_7__* %54)
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @strcmp(i32 %55, i8* %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @obs_data_item_next(%struct.TYPE_7__** %18)
  %63 = call i32 @obs_data_item_next(%struct.TYPE_7__** %19)
  br label %45

64:                                               ; preds = %59, %51
  %65 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store %struct.obs_data* %65, %struct.obs_data** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %72 = call i32 @get_item_name(%struct.TYPE_7__* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @strcmp(i32 %72, i8* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %82, align 8
  br label %90

83:                                               ; preds = %70, %64
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %85 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %86 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %85, i32 0, i32 0
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %89, align 8
  br label %90

90:                                               ; preds = %83, %76
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %92 = icmp ne %struct.TYPE_7__* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %95 = load %struct.obs_data*, %struct.obs_data** %9, align 8
  %96 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %95, i32 0, i32 0
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = call i32 @obs_data_item_release(%struct.TYPE_7__** %18)
  %99 = call i32 @obs_data_item_release(%struct.TYPE_7__** %19)
  br label %126

100:                                              ; preds = %29, %25, %22
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @obs_data_item_set_default_data(%struct.obs_data_item** %104, i8* %105, i64 %106, i32 %107)
  br label %125

109:                                              ; preds = %100
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @obs_data_item_set_autoselect_data(%struct.obs_data_item** %113, i8* %114, i64 %115, i32 %116)
  br label %124

118:                                              ; preds = %109
  %119 = load %struct.obs_data_item**, %struct.obs_data_item*** %10, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @obs_data_item_setdata(%struct.obs_data_item** %119, i8* %120, i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %112
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125, %97
  ret void
}

declare dso_local %struct.TYPE_7__* @obs_data_item_create(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @obs_data_first(%struct.obs_data*) #1

declare dso_local i32 @obs_data_item_next(%struct.TYPE_7__**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @get_item_name(%struct.TYPE_7__*) #1

declare dso_local i32 @obs_data_item_release(%struct.TYPE_7__**) #1

declare dso_local i32 @obs_data_item_set_default_data(%struct.obs_data_item**, i8*, i64, i32) #1

declare dso_local i32 @obs_data_item_set_autoselect_data(%struct.obs_data_item**, i8*, i64, i32) #1

declare dso_local i32 @obs_data_item_setdata(%struct.obs_data_item**, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
