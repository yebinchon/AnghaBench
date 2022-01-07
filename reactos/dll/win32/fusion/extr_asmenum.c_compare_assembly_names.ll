; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_compare_assembly_names.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_compare_assembly_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@TOKEN_LENGTH = common dso_local global i32 0, align 4
@BYTES_PER_TOKEN = common dso_local global i32 0, align 4
@ASM_NAME_NAME = common dso_local global i64 0, align 8
@ASM_NAME_MAJOR_VERSION = common dso_local global i64 0, align 8
@ASM_NAME_CULTURE = common dso_local global i64 0, align 8
@ASM_NAME_PUBLIC_KEY_TOKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @compare_assembly_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_assembly_names(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @TOKEN_LENGTH, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32, i32* @TOKEN_LENGTH, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32, i32* @BYTES_PER_TOKEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i64, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  %37 = load i32, i32* @BYTES_PER_TOKEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %15, align 8
  %40 = mul nuw i64 8, %20
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @ASM_NAME_NAME, align 8
  %45 = call i32 @IAssemblyName_GetProperty(i32 %43, i64 %44, i64* %22, i64* %16)
  %46 = mul nuw i64 8, %24
  store i64 %46, i64* %16, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @ASM_NAME_NAME, align 8
  %51 = call i32 @IAssemblyName_GetProperty(i32 %49, i64 %50, i64* %25, i64* %16)
  %52 = call i32 @wcsicmp(i64* %22, i64* %25)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %106

56:                                               ; preds = %2
  %57 = load i64, i64* @ASM_NAME_MAJOR_VERSION, align 8
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %83, %56
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* @ASM_NAME_CULTURE, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  store i64 8, i64* %16, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @IAssemblyName_GetProperty(i32 %65, i64 %66, i64* %7, i64* %16)
  store i64 8, i64* %16, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %17, align 8
  %72 = call i32 @IAssemblyName_GetProperty(i32 %70, i64 %71, i64* %8, i64* %16)
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %106

77:                                               ; preds = %62
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %106

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %17, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %58

86:                                               ; preds = %58
  %87 = mul nuw i64 8, %35
  store i64 %87, i64* %16, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @ASM_NAME_PUBLIC_KEY_TOKEN, align 8
  %92 = call i32 @IAssemblyName_GetProperty(i32 %90, i64 %91, i64* %36, i64* %16)
  %93 = mul nuw i64 8, %38
  store i64 %93, i64* %16, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @ASM_NAME_PUBLIC_KEY_TOKEN, align 8
  %98 = call i32 @IAssemblyName_GetProperty(i32 %96, i64 %97, i64* %39, i64* %16)
  %99 = call i32 @token_to_str(i64* %36, i64* %29)
  %100 = call i32 @token_to_str(i64* %39, i64* %33)
  %101 = call i32 @wcsicmp(i64* %29, i64* %33)
  store i32 %101, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %106

105:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %106

106:                                              ; preds = %105, %103, %81, %76, %54
  %107 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IAssemblyName_GetProperty(i32, i64, i64*, i64*) #2

declare dso_local i32 @wcsicmp(i64*, i64*) #2

declare dso_local i32 @token_to_str(i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
