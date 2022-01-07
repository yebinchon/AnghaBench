; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_update_add_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_update_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.resource_data = type { i32 }
%struct.resource_dir_entry = type { i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"%p %s %s %p %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, %struct.resource_data*, i32)* @update_add_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_add_resource(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, %struct.resource_data* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource_dir_entry*, align 8
  %15 = alloca %struct.resource_dir_entry*, align 8
  %16 = alloca %struct.resource_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.resource_data* %4, %struct.resource_data** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @debugstr_w(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @debugstr_w(i32 %20)
  %22 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %17, i32 %19, i32 %21, %struct.resource_data* %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.resource_dir_entry* @find_resource_dir_entry(i32* %26, i32 %27)
  store %struct.resource_dir_entry* %28, %struct.resource_dir_entry** %14, align 8
  %29 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %30 = icmp ne %struct.resource_dir_entry* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %6
  %32 = call i32 (...) @GetProcessHeap()
  %33 = call %struct.resource_dir_entry* @HeapAlloc(i32 %32, i32 0, i32 16)
  store %struct.resource_dir_entry* %33, %struct.resource_dir_entry** %14, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @res_strdupW(i32 %34)
  %36 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %37 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %39 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %38, i32 0, i32 0
  %40 = call i32 @list_init(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %44 = call i32 @add_resource_dir_entry(i32* %42, %struct.resource_dir_entry* %43)
  br label %45

45:                                               ; preds = %31, %6
  %46 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %47 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.resource_dir_entry* @find_resource_dir_entry(i32* %47, i32 %48)
  store %struct.resource_dir_entry* %49, %struct.resource_dir_entry** %15, align 8
  %50 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %51 = icmp ne %struct.resource_dir_entry* %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = call i32 (...) @GetProcessHeap()
  %54 = call %struct.resource_dir_entry* @HeapAlloc(i32 %53, i32 0, i32 16)
  store %struct.resource_dir_entry* %54, %struct.resource_dir_entry** %15, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i8* @res_strdupW(i32 %55)
  %57 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %58 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %60 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %59, i32 0, i32 0
  %61 = call i32 @list_init(i32* %60)
  %62 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %14, align 8
  %63 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %62, i32 0, i32 0
  %64 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %65 = call i32 @add_resource_dir_entry(i32* %63, %struct.resource_dir_entry* %64)
  br label %66

66:                                               ; preds = %52, %45
  %67 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %68 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.resource_data* @find_resource_data(i32* %68, i32 %69)
  store %struct.resource_data* %70, %struct.resource_data** %16, align 8
  %71 = load %struct.resource_data*, %struct.resource_data** %16, align 8
  %72 = icmp ne %struct.resource_data* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %7, align 4
  br label %95

78:                                               ; preds = %73
  %79 = load %struct.resource_data*, %struct.resource_data** %16, align 8
  %80 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %79, i32 0, i32 0
  %81 = call i32 @list_remove(i32* %80)
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load %struct.resource_data*, %struct.resource_data** %16, align 8
  %84 = call i32 @HeapFree(i32 %82, i32 0, %struct.resource_data* %83)
  br label %85

85:                                               ; preds = %78, %66
  %86 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %87 = icmp ne %struct.resource_data* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.resource_dir_entry*, %struct.resource_dir_entry** %15, align 8
  %90 = getelementptr inbounds %struct.resource_dir_entry, %struct.resource_dir_entry* %89, i32 0, i32 0
  %91 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %92 = call i32 @add_resource_data_entry(i32* %90, %struct.resource_data* %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %76
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32, i32, %struct.resource_data*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.resource_dir_entry* @find_resource_dir_entry(i32*, i32) #1

declare dso_local %struct.resource_dir_entry* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @res_strdupW(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @add_resource_dir_entry(i32*, %struct.resource_dir_entry*) #1

declare dso_local %struct.resource_data* @find_resource_data(i32*, i32) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.resource_data*) #1

declare dso_local i32 @add_resource_data_entry(i32*, %struct.resource_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
