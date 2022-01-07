; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_constant_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_constant_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3DXConstantTableImpl = type { %struct.ctab_constant*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ctab_constant = type { %struct.TYPE_4__, %struct.ctab_constant* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"table %p, constant %p, name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Constant not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctab_constant* (%struct.ID3DXConstantTableImpl*, %struct.ctab_constant*, i8*)* @get_constant_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctab_constant* @get_constant_by_name(%struct.ID3DXConstantTableImpl* %0, %struct.ctab_constant* %1, i8* %2) #0 {
  %4 = alloca %struct.ctab_constant*, align 8
  %5 = alloca %struct.ID3DXConstantTableImpl*, align 8
  %6 = alloca %struct.ctab_constant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctab_constant*, align 8
  %12 = alloca i8*, align 8
  store %struct.ID3DXConstantTableImpl* %0, %struct.ID3DXConstantTableImpl** %5, align 8
  store %struct.ctab_constant* %1, %struct.ctab_constant** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %5, align 8
  %14 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @debugstr_a(i8* %15)
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ID3DXConstantTableImpl* %13, %struct.ctab_constant* %14, i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %3
  store %struct.ctab_constant* null, %struct.ctab_constant** %4, align 8
  br label %113

25:                                               ; preds = %20
  %26 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %27 = icmp ne %struct.ctab_constant* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %5, align 8
  %30 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %5, align 8
  %34 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %33, i32 0, i32 0
  %35 = load %struct.ctab_constant*, %struct.ctab_constant** %34, align 8
  store %struct.ctab_constant* %35, %struct.ctab_constant** %11, align 8
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %38 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %42 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %41, i32 0, i32 1
  %43 = load %struct.ctab_constant*, %struct.ctab_constant** %42, align 8
  store %struct.ctab_constant* %43, %struct.ctab_constant** %11, align 8
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcspn(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %108, %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %51
  %56 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %56, i64 %58
  %60 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlen(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %55
  %67 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %67, i64 %69
  %71 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @strncmp(i32 %73, i8* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %66
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %12, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %97 [
    i32 46, label %83
    i32 91, label %90
  ]

83:                                               ; preds = %78
  %84 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %84, i64 %86
  %88 = load i8*, i8** %12, align 8
  %89 = call %struct.ctab_constant* @get_constant_by_name(%struct.ID3DXConstantTableImpl* null, %struct.ctab_constant* %87, i8* %88)
  store %struct.ctab_constant* %89, %struct.ctab_constant** %4, align 8
  br label %113

90:                                               ; preds = %78
  %91 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %91, i64 %93
  %95 = load i8*, i8** %12, align 8
  %96 = call %struct.ctab_constant* @get_constant_element_by_name(%struct.ctab_constant* %94, i8* %95)
  store %struct.ctab_constant* %96, %struct.ctab_constant** %4, align 8
  br label %113

97:                                               ; preds = %78
  %98 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %98, i64 %100
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.ctab_constant* %101)
  %103 = load %struct.ctab_constant*, %struct.ctab_constant** %11, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %103, i64 %105
  store %struct.ctab_constant* %106, %struct.ctab_constant** %4, align 8
  br label %113

107:                                              ; preds = %66, %55
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %51

111:                                              ; preds = %51
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ctab_constant* null, %struct.ctab_constant** %4, align 8
  br label %113

113:                                              ; preds = %111, %97, %90, %83, %24
  %114 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  ret %struct.ctab_constant* %114
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.ctab_constant* @get_constant_element_by_name(%struct.ctab_constant*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
