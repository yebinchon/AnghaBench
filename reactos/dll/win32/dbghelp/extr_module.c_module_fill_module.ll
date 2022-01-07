; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_fill_module.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_fill_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_WineLoaderW = common dso_local global i32 0, align 4
@S_DotSoW = common dso_local global i8* null, align 8
@S_ElfW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @module_fill_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @module_fill_module(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = call i8* (...) @get_wine_loader_name()
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlenW(i8* %15)
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = call i8* @get_filename(i8* %13, i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = call i64 @min(i32 %24, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = mul i64 %30, 1
  %32 = call i32 @memcpy(i8* %28, i8* %29, i64 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i64, i64* %10, align 8
  %37 = icmp ugt i64 %36, 4
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @match_ext(i8* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  br label %98

49:                                               ; preds = %38, %3
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strlenW(i8* %51)
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @strlenW(i8* %58)
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strcmpiW(i8* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @S_WineLoaderW, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @lstrcpynW(i8* %66, i32 %67, i64 %68)
  br label %97

70:                                               ; preds = %54, %49
  %71 = load i64, i64* %10, align 8
  %72 = icmp ugt i64 %71, 3
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, 3
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** @S_DotSoW, align 8
  %79 = call i32 @strcmpiW(i8* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %73
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %83, 3
  %85 = call i64 @match_ext(i8* %82, i64 %84)
  store i64 %85, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = sub i64 %89, %90
  %92 = sub i64 %91, 3
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i32, i32* @S_ElfW, align 4
  %95 = call i32 @strcpyW(i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %81, %73, %70
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97, %43
  br label %99

99:                                               ; preds = %105, %98
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @tolowerW(i8 signext %101)
  %103 = load i8*, i8** %5, align 8
  store i8 %102, i8* %103, align 1
  %104 = icmp ne i8 %102, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  br label %99

108:                                              ; preds = %99
  ret void
}

declare dso_local i8* @get_wine_loader_name(...) #1

declare dso_local i8* @get_filename(i8*, i8*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @match_ext(i8*, i64) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @lstrcpynW(i8*, i32, i64) #1

declare dso_local i32 @strcpyW(i8*, i32) #1

declare dso_local signext i8 @tolowerW(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
