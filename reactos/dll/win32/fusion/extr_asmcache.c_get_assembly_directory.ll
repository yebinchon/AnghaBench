; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmcache.c_get_assembly_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmcache.c_get_assembly_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_assembly_directory.dotnet = internal constant [16 x i8] c"\\Microsoft.NET\\\00", align 16
@get_assembly_directory.gac = internal constant [14 x i8] c"\\assembly\\GAC\00", align 1
@get_assembly_directory.msil = internal constant [6 x i8] c"_MSIL\00", align 1
@get_assembly_directory.x86 = internal constant [4 x i8] c"_32\00", align 1
@get_assembly_directory.amd64 = internal constant [4 x i8] c"_64\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"v4.0.30319\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unhandled architecture %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @get_assembly_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_assembly_directory(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @GetWindowsDirectoryW(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @lstrcpyW(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_assembly_directory.dotnet, i64 0, i64 0))
  %22 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_assembly_directory.dotnet, i64 0, i64 0))
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @lstrcpyW(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_assembly_directory.gac, i64 0, i64 1))
  %30 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_assembly_directory.gac, i64 0, i64 0))
  %31 = sub nsw i32 %30, 2
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %43

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @lstrcpyW(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_assembly_directory.gac, i64 0, i64 0))
  %39 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_assembly_directory.gac, i64 0, i64 0))
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %34, %17
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %61 [
    i32 128, label %45
    i32 129, label %46
    i32 130, label %51
    i32 131, label %56
  ]

45:                                               ; preds = %43
  br label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @lstrcpyW(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_assembly_directory.msil, i64 0, i64 0))
  br label %65

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @lstrcpyW(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_assembly_directory.x86, i64 0, i64 0))
  br label %65

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @lstrcpyW(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_assembly_directory.amd64, i64 0, i64 0))
  br label %65

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %56, %51, %46, %45
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @GetWindowsDirectoryW(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lstrcpyW(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
