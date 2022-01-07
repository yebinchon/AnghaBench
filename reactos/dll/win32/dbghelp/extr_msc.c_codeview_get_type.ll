; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_get_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.cv_defined_module = type { i32, %struct.symt**, i32 }

@FIRST_DEFINABLE_TYPE = common dso_local global i32 0, align 4
@MAX_BUILTIN_TYPES = common dso_local global i32 0, align 4
@cv_basic_types = common dso_local global %struct.symt** null, align 8
@cv_current_module = common dso_local global %struct.cv_defined_module* null, align 8
@cv_zmodules = common dso_local global %struct.cv_defined_module* null, align 8
@CV_MAX_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Module of index %d isn't loaded yet (%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Returning NULL symt for type-id %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (i32, i32)* @codeview_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @codeview_get_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.symt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cv_defined_module*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.symt* null, %struct.symt** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_BUILTIN_TYPES, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.symt**, %struct.symt*** @cv_basic_types, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.symt*, %struct.symt** %17, i64 %19
  %21 = load %struct.symt*, %struct.symt** %20, align 8
  store %struct.symt* %21, %struct.symt** %5, align 8
  br label %22

22:                                               ; preds = %16, %12
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = lshr i32 %24, 24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 16777215
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.cv_defined_module*, %struct.cv_defined_module** @cv_current_module, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.cv_defined_module*, %struct.cv_defined_module** @cv_zmodules, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cv_defined_module, %struct.cv_defined_module* %33, i64 %35
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi %struct.cv_defined_module* [ %31, %30 ], [ %36, %32 ]
  store %struct.cv_defined_module* %38, %struct.cv_defined_module** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CV_MAX_MODULES, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.cv_defined_module*, %struct.cv_defined_module** %8, align 8
  %44 = getelementptr inbounds %struct.cv_defined_module, %struct.cv_defined_module* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %70

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %54 = sub i32 %52, %53
  %55 = load %struct.cv_defined_module*, %struct.cv_defined_module** %8, align 8
  %56 = getelementptr inbounds %struct.cv_defined_module, %struct.cv_defined_module* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.cv_defined_module*, %struct.cv_defined_module** %8, align 8
  %61 = getelementptr inbounds %struct.cv_defined_module, %struct.cv_defined_module* %60, i32 0, i32 1
  %62 = load %struct.symt**, %struct.symt*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %65 = sub i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.symt*, %struct.symt** %62, i64 %66
  %68 = load %struct.symt*, %struct.symt** %67, align 8
  store %struct.symt* %68, %struct.symt** %5, align 8
  br label %69

69:                                               ; preds = %59, %51
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load %struct.symt*, %struct.symt** %5, align 8
  %76 = icmp ne %struct.symt* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %77, %74, %71
  %84 = load %struct.symt*, %struct.symt** %5, align 8
  ret %struct.symt* %84
}

declare dso_local i32 @FIXME(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
