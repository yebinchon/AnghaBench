; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_process_extensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_process_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_POINTER = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@mediatype_name = common dso_local global i32 0, align 4
@subtype_name = common dso_local global i32 0, align 4
@source_filter_name = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @process_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_extensions(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [39 x i8], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @E_POINTER, align 4
  store i32 %20, i32* %6, align 4
  br label %104

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @PathFindExtensionW(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 46
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @E_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %104

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* @KEY_READ, align 4
  %34 = call i64 @RegOpenKeyExW(i32 %31, i8* %32, i32 0, i32 %33, i32* %14)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @E_FAIL, align 4
  store i32 %38, i32* %6, align 4
  br label %104

39:                                               ; preds = %30
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  store i32 39, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @mediatype_name, align 4
  %45 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %46 = ptrtoint i8* %45 to i32
  %47 = call i64 @RegQueryValueExW(i32 %43, i32 %44, i32* null, i32* null, i32 %46, i32* %16)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @CLSIDFromString(i8* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  store i32 39, i32* %16, align 4
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @subtype_name, align 4
  %64 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %65 = ptrtoint i8* %64 to i32
  %66 = call i64 @RegQueryValueExW(i32 %62, i32 %63, i32* null, i32* null, i32 %65, i32* %16)
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @CLSIDFromString(i8* %71, i32* %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32*, i32** %11, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  store i32 39, i32* %16, align 4
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @source_filter_name, align 4
  %84 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %85 = ptrtoint i8* %84 to i32
  %86 = call i64 @RegQueryValueExW(i32 %82, i32 %83, i32* null, i32* null, i32 %85, i32* %16)
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [39 x i8], [39 x i8]* %15, i64 0, i64 0
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @CLSIDFromString(i8* %91, i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %6, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @E_FAIL, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %100, %37, %28, %19
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i8* @PathFindExtensionW(i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @CLSIDFromString(i8*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
