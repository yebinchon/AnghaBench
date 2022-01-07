; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_copy_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { %struct.d3dx_object* }
%struct.d3dx_object = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Overwriting object id %u!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Overwriting object id 0.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Data size: %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocate object memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Data: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i8**)* @d3dx9_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_copy_data(%struct.d3dx9_base_effect* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.d3dx_object*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %10 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %9, i32 0, i32 0
  %11 = load %struct.d3dx_object*, %struct.d3dx_object** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %11, i64 %13
  store %struct.d3dx_object* %14, %struct.d3dx_object** %8, align 8
  %15 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %16 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %21 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %32

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %35 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, i32* %36)
  %38 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %39 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %19
  %41 = load i8**, i8*** %7, align 8
  %42 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %43 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %42, i32 0, i32 0
  %44 = call i32 @read_dword(i8** %41, i32* %43)
  %45 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %46 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %50 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @D3D_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %97

55:                                               ; preds = %40
  %56 = call i32 (...) @GetProcessHeap()
  %57 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %58 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @HeapAlloc(i32 %56, i32 0, i32 %59)
  %61 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %62 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %64 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %69, i32* %4, align 4
  br label %97

70:                                               ; preds = %55
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %74 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @debugstr_an(i8* %72, i32 %75)
  %77 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %79 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %84 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memcpy(i32* %80, i8* %82, i32 %85)
  %87 = load %struct.d3dx_object*, %struct.d3dx_object** %8, align 8
  %88 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 3
  %91 = and i32 %90, -4
  %92 = load i8**, i8*** %7, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = sext i32 %91 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %92, align 8
  %96 = load i32, i32* @D3D_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %70, %67, %53
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
