; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_insert_group.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_insert_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @obs_scene_insert_group(%struct.TYPE_20__* %0, i8* %1, %struct.TYPE_19__** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  br label %175

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %46, %23
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %29, i64 %31
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %11, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = icmp ne %struct.TYPE_20__* %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %28
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  br label %175

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %10, align 8
  br label %25

49:                                               ; preds = %25
  %50 = load i8*, i8** %7, align 8
  %51 = call %struct.TYPE_20__* @create_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %12, align 8
  %52 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %53 = icmp ne %struct.TYPE_19__** %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %55, i64 %57
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi %struct.TYPE_19__* [ %59, %54 ], [ null, %60 ]
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %13, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %68 = call %struct.TYPE_19__* @obs_scene_add_internal(%struct.TYPE_20__* %63, i32 %66, %struct.TYPE_19__* %67)
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %14, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = call i32 @obs_scene_release(%struct.TYPE_20__* %69)
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %72 = icmp ne %struct.TYPE_19__** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %61
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %5, align 8
  br label %175

78:                                               ; preds = %73
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = call i32 @full_lock(%struct.TYPE_20__* %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %82 = call i32 @full_lock(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %83, i64 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %87, align 8
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %15, align 8
  br label %89

89:                                               ; preds = %106, %78
  %90 = load i64, i64* %15, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i64, i64* %15, align 8
  %94 = sub i64 %93, 1
  store i64 %94, i64* %16, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %96 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %96, i64 %97
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = call i32 @remove_group_transform(%struct.TYPE_19__* %95, %struct.TYPE_19__* %99)
  %101 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %101, i64 %102
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = call i32 @detach_sceneitem(%struct.TYPE_19__* %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %15, align 8
  br label %89

109:                                              ; preds = %89
  store i64 0, i64* %17, align 8
  br label %110

110:                                              ; preds = %160, %109
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %163

114:                                              ; preds = %110
  %115 = load i64, i64* %17, align 8
  store i64 %115, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %117, 1
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = load i64, i64* %18, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %19, align 8
  %123 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %124 = load i64, i64* %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %123, i64 %124
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %128 = load i64, i64* %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %127, i64 %128
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %131, align 8
  %132 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %132, i64 %133
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %137 = load i64, i64* %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %136, i64 %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store %struct.TYPE_19__* %135, %struct.TYPE_19__** %140, align 8
  br label %147

141:                                              ; preds = %114
  %142 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %143 = load i64, i64* %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %142, i64 %143
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %146, align 8
  br label %147

147:                                              ; preds = %141, %120
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %149 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %150 = load i64, i64* %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %149, i64 %150
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %153, align 8
  %154 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %155 = load i64, i64* %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %154, i64 %155
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %159 = call i32 @apply_group_transform(%struct.TYPE_19__* %157, %struct.TYPE_19__* %158)
  br label %160

160:                                              ; preds = %147
  %161 = load i64, i64* %17, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %17, align 8
  br label %110

163:                                              ; preds = %110
  %164 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %164, i64 0
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %167, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %169 = call i32 @resize_group(%struct.TYPE_19__* %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %171 = call i32 @full_unlock(%struct.TYPE_20__* %170)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %173 = call i32 @full_unlock(%struct.TYPE_20__* %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %5, align 8
  br label %175

175:                                              ; preds = %163, %76, %44, %22
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  ret %struct.TYPE_19__* %176
}

declare dso_local %struct.TYPE_20__* @create_id(i8*, i8*) #1

declare dso_local %struct.TYPE_19__* @obs_scene_add_internal(%struct.TYPE_20__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @obs_scene_release(%struct.TYPE_20__*) #1

declare dso_local i32 @full_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @remove_group_transform(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_19__*) #1

declare dso_local i32 @apply_group_transform(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @resize_group(%struct.TYPE_19__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
