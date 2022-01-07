; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_constant_element_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_constant_element_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { %struct.ctab_constant*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"constant %p, name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unhandled case \22%c\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Constant not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctab_constant* (%struct.ctab_constant*, i8*)* @get_constant_element_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctab_constant* @get_constant_element_by_name(%struct.ctab_constant* %0, i8* %1) #0 {
  %3 = alloca %struct.ctab_constant*, align 8
  %4 = alloca %struct.ctab_constant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ctab_constant*, align 8
  store %struct.ctab_constant* %0, %struct.ctab_constant** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @debugstr_a(i8* %10)
  %12 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ctab_constant* %9, i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  store %struct.ctab_constant* null, %struct.ctab_constant** %3, align 8
  br label %71

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @atoi(i8* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 93)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %6, align 8
  %26 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %27 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %20
  %33 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %34 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %33, i32 0, i32 0
  %35 = load %struct.ctab_constant*, %struct.ctab_constant** %34, align 8
  %36 = icmp ne %struct.ctab_constant* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %39 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %38, i32 0, i32 0
  %40 = load %struct.ctab_constant*, %struct.ctab_constant** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %40, i64 %41
  br label %45

43:                                               ; preds = %32
  %44 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi %struct.ctab_constant* [ %42, %37 ], [ %44, %43 ]
  store %struct.ctab_constant* %46, %struct.ctab_constant** %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %63 [
    i32 46, label %51
    i32 91, label %55
    i32 0, label %59
  ]

51:                                               ; preds = %45
  %52 = load %struct.ctab_constant*, %struct.ctab_constant** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call %struct.ctab_constant* @get_constant_by_name(i32* null, %struct.ctab_constant* %52, i8* %53)
  store %struct.ctab_constant* %54, %struct.ctab_constant** %3, align 8
  br label %71

55:                                               ; preds = %45
  %56 = load %struct.ctab_constant*, %struct.ctab_constant** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call %struct.ctab_constant* @get_constant_element_by_name(%struct.ctab_constant* %56, i8* %57)
  store %struct.ctab_constant* %58, %struct.ctab_constant** %3, align 8
  br label %71

59:                                               ; preds = %45
  %60 = load %struct.ctab_constant*, %struct.ctab_constant** %8, align 8
  %61 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.ctab_constant* %60)
  %62 = load %struct.ctab_constant*, %struct.ctab_constant** %8, align 8
  store %struct.ctab_constant* %62, %struct.ctab_constant** %3, align 8
  br label %71

63:                                               ; preds = %45
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8 signext %66)
  br label %68

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %20
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ctab_constant* null, %struct.ctab_constant** %3, align 8
  br label %71

71:                                               ; preds = %69, %59, %55, %51, %19
  %72 = load %struct.ctab_constant*, %struct.ctab_constant** %3, align 8
  ret %struct.ctab_constant* %72
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.ctab_constant* @get_constant_by_name(i32*, %struct.ctab_constant*, i8*) #1

declare dso_local i32 @FIXME(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
