; ModuleID = '/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_obj_to_str.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_obj_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dso_json_obj_to_str(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %50

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %49 [
    i32 130, label %17
    i32 129, label %19
    i32 128, label %25
    i32 131, label %31
    i32 133, label %37
    i32 132, label %43
  ]

17:                                               ; preds = %11
  %18 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %51

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @dso_json_num_to_str(i32 %23)
  store i8* %24, i8** %2, align 8
  br label %51

25:                                               ; preds = %11
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @dso_json_str_to_str(i32 %29)
  store i8* %30, i8** %2, align 8
  br label %51

31:                                               ; preds = %11
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @dso_json_list_to_str(i32 %35)
  store i8* %36, i8** %2, align 8
  br label %51

37:                                               ; preds = %11
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @dso_json_dict_to_str(i32 %41)
  store i8* %42, i8** %2, align 8
  br label %51

43:                                               ; preds = %11
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @dso_json_dict_entry_to_str(i32 %47)
  store i8* %48, i8** %2, align 8
  br label %51

49:                                               ; preds = %11
  br label %50

50:                                               ; preds = %49, %6, %1
  store i8* null, i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %43, %37, %31, %25, %19, %17
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @dso_json_num_to_str(i32) #1

declare dso_local i8* @dso_json_str_to_str(i32) #1

declare dso_local i8* @dso_json_list_to_str(i32) #1

declare dso_local i8* @dso_json_dict_to_str(i32) #1

declare dso_local i8* @dso_json_dict_entry_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
