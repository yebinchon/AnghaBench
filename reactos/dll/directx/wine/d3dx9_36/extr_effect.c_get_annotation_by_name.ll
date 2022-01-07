; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_annotation_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_annotation_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"count %u, annotations %p, name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"[.@\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Returning annotation %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unhandled case \22%c\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Annotation not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3dx_parameter* (%struct.d3dx9_base_effect*, i32, %struct.d3dx_parameter*, i8*)* @get_annotation_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3dx_parameter* @get_annotation_by_name(%struct.d3dx9_base_effect* %0, i32 %1, %struct.d3dx_parameter* %2, i8* %3) #0 {
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.d3dx_parameter*, align 8
  %13 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.d3dx_parameter* %2, %struct.d3dx_parameter** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @debugstr_a(i8* %16)
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.d3dx_parameter* %15, i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %4
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %5, align 8
  br label %95

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strcspn(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %90, %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i64 %40
  store %struct.d3dx_parameter* %41, %struct.d3dx_parameter** %12, align 8
  %42 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %43 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.d3dx_parameter* %49)
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  store %struct.d3dx_parameter* %51, %struct.d3dx_parameter** %5, align 8
  br label %95

52:                                               ; preds = %37
  %53 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %54 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %52
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %61 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @strncmp(i32 %62, i8* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %13, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %82 [
    i32 46, label %72
    i32 91, label %77
  ]

72:                                               ; preds = %67
  %73 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %74 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect* %73, %struct.d3dx_parameter* %74, i8* %75)
  store %struct.d3dx_parameter* %76, %struct.d3dx_parameter** %5, align 8
  br label %95

77:                                               ; preds = %67
  %78 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %79 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call %struct.d3dx_parameter* @get_parameter_element_by_name(%struct.d3dx9_base_effect* %78, %struct.d3dx_parameter* %79, i8* %80)
  store %struct.d3dx_parameter* %81, %struct.d3dx_parameter** %5, align 8
  br label %95

82:                                               ; preds = %67
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 signext %85)
  br label %87

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %59, %52
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %33

93:                                               ; preds = %33
  %94 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %5, align 8
  br label %95

95:                                               ; preds = %93, %77, %72, %48, %25
  %96 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  ret %struct.d3dx_parameter* %96
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*) #1

declare dso_local %struct.d3dx_parameter* @get_parameter_element_by_name(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*) #1

declare dso_local i32 @FIXME(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
