; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_urls.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_urls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifcomponent = type { i32 }
%struct.inf_section = type { i32 }
%struct.inf_value = type { i32 }
%struct.url_info = type { i32, i32, i32, i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifcomponent*, %struct.inf_section*)* @read_urls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_urls(%struct.cifcomponent* %0, %struct.inf_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifcomponent*, align 8
  %5 = alloca %struct.inf_section*, align 8
  %6 = alloca %struct.inf_value*, align 8
  %7 = alloca %struct.url_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cifcomponent* %0, %struct.cifcomponent** %4, align 8
  store %struct.inf_section* %1, %struct.inf_section** %5, align 8
  store %struct.inf_value* null, %struct.inf_value** %6, align 8
  br label %11

11:                                               ; preds = %94, %2
  %12 = load %struct.inf_section*, %struct.inf_section** %5, align 8
  %13 = call i64 @inf_section_next_value(%struct.inf_section* %12, %struct.inf_value** %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %11
  %16 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %17 = call i8* @inf_value_get_key(%struct.inf_value* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strncasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %94

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %94

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = call i32 @strtol(i8* %35, i8** %9, i32 10)
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = icmp eq i8* %37, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %41, %33
  br label %94

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  %53 = call %struct.url_info* @heap_alloc_zero(i32 24)
  store %struct.url_info* %53, %struct.url_info** %7, align 8
  %54 = load %struct.url_info*, %struct.url_info** %7, align 8
  %55 = icmp ne %struct.url_info* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %99

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.url_info*, %struct.url_info** %7, align 8
  %60 = getelementptr inbounds %struct.url_info, %struct.url_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %62 = load %struct.url_info*, %struct.url_info** %7, align 8
  %63 = getelementptr inbounds %struct.url_info, %struct.url_info* %62, i32 0, i32 3
  %64 = call i32 @value_get_str_field(%struct.inf_value* %61, i32 1, i32** %63, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %99

67:                                               ; preds = %57
  %68 = load %struct.url_info*, %struct.url_info** %7, align 8
  %69 = getelementptr inbounds %struct.url_info, %struct.url_info* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.url_info*, %struct.url_info** %7, align 8
  %74 = getelementptr inbounds %struct.url_info, %struct.url_info* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.url_info*, %struct.url_info** %7, align 8
  %80 = call i32 @url_entry_free(%struct.url_info* %79)
  br label %94

81:                                               ; preds = %72
  %82 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %83 = load %struct.url_info*, %struct.url_info** %7, align 8
  %84 = getelementptr inbounds %struct.url_info, %struct.url_info* %83, i32 0, i32 2
  %85 = call i32 @value_get_dword_field(%struct.inf_value* %82, i32 2, i32* %84, i32 0)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %99

88:                                               ; preds = %81
  %89 = load %struct.cifcomponent*, %struct.cifcomponent** %4, align 8
  %90 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %89, i32 0, i32 0
  %91 = load %struct.url_info*, %struct.url_info** %7, align 8
  %92 = getelementptr inbounds %struct.url_info, %struct.url_info* %91, i32 0, i32 1
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  br label %94

94:                                               ; preds = %88, %78, %49, %32, %26
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @heap_free(i8* %95)
  br label %11

97:                                               ; preds = %11
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %105

99:                                               ; preds = %87, %66, %56
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @heap_free(i8* %100)
  %102 = load %struct.url_info*, %struct.url_info** %7, align 8
  %103 = call i32 @url_entry_free(%struct.url_info* %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %97, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @inf_section_next_value(%struct.inf_section*, %struct.inf_value**) #1

declare dso_local i8* @inf_value_get_key(%struct.inf_value*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.url_info* @heap_alloc_zero(i32) #1

declare dso_local i32 @value_get_str_field(%struct.inf_value*, i32, i32**, i32*) #1

declare dso_local i32 @url_entry_free(%struct.url_info*) #1

declare dso_local i32 @value_get_dword_field(%struct.inf_value*, i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
