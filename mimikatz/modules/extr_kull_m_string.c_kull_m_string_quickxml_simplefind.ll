; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_quickxml_simplefind.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_quickxml_simplefind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_string_quickxml_simplefind(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @wcslen(i32* %16)
  %18 = trunc i64 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 12
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @LPTR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @LocalAlloc(i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %125

35:                                               ; preds = %3
  %36 = load i32, i32* @LPTR, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @LocalAlloc(i32 %36, i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %122

41:                                               ; preds = %35
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 60, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 60, i32* %45, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 47, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = sub i64 %51, 2
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 62, i32* %53, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 4
  %58 = sub i64 %57, 2
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 62, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @RtlCopyMemory(i32* %61, i32* %62, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @RtlCopyMemory(i32* %66, i32* %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @wcsstr(i32* %70, i32* %71)
  store i32* %72, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %119

74:                                               ; preds = %41
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = sub i64 %77, 1
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32* @wcsstr(i32* %81, i32* %82)
  store i32* %83, i32** %14, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %118

85:                                               ; preds = %74
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ule i32* %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %7, align 4
  br i1 %88, label %90, label %117

90:                                               ; preds = %85
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @LPTR, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i64 @LocalAlloc(i32 %101, i32 %105)
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32**, i32*** %6, align 8
  store i32* %107, i32** %108, align 8
  %109 = icmp ne i32* %107, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %90
  %111 = load i32**, i32*** %6, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @RtlCopyMemory(i32* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %90
  br label %117

117:                                              ; preds = %116, %85
  br label %118

118:                                              ; preds = %117, %74
  br label %119

119:                                              ; preds = %118, %41
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @LocalFree(i32* %120)
  br label %122

122:                                              ; preds = %119, %35
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @LocalFree(i32* %123)
  br label %125

125:                                              ; preds = %122, %3
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32* @wcsstr(i32*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
