; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_DecompressGfx.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_DecompressGfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Unpacking (%d) from %u bytes to %u bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Bogus gfx sizes (uncompressed): %u / %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Bogus gfx sizes (LZ77): %u / %u\0A\00", align 1
@FALSE = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Unsupported packing %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32**)* @HLPFILE_DecompressGfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @HLPFILE_DecompressGfx(i32* %0, i32 %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %126 [
    i32 0, label %20
    i32 1, label %31
    i32 2, label %49
    i32 3, label %80
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WINE_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %12, align 8
  %30 = load i32**, i32*** %11, align 8
  store i32* null, i32** %30, align 8
  br label %129

31:                                               ; preds = %5
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @HeapAlloc(i32 %32, i32 0, i32 %33)
  %35 = load i32**, i32*** %11, align 8
  store i32* %34, i32** %35, align 8
  store i32* %34, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32* null, i32** %6, align 8
  br label %131

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32**, i32*** %11, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @HLPFILE_UncompressRLE(i32* %40, i32* %44, i32* %46, i32 %47)
  br label %129

49:                                               ; preds = %5
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %50, i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = call i32 (...) @GetProcessHeap()
  %57 = load i32, i32* %14, align 4
  %58 = call i32* @HeapAlloc(i32 %56, i32 0, i32 %57)
  %59 = load i32**, i32*** %11, align 8
  store i32* %58, i32** %59, align 8
  store i32* %58, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  store i32* null, i32** %6, align 8
  br label %131

63:                                               ; preds = %49
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32**, i32*** %11, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @HLPFILE_UncompressLZ77(i32* %64, i32* %68, i32* %70)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @WINE_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %63
  br label %129

80:                                               ; preds = %5
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %81, i32* %85)
  store i32 %86, i32* %14, align 4
  %87 = call i32 (...) @GetProcessHeap()
  %88 = load i32, i32* %14, align 4
  %89 = call i32* @HeapAlloc(i32 %87, i32 0, i32 %88)
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %80
  %93 = load i32*, i32** @FALSE, align 8
  store i32* %93, i32** %6, align 8
  br label %131

94:                                               ; preds = %80
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @HLPFILE_UncompressLZ77(i32* %95, i32* %99, i32* %100)
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32, i32* %9, align 4
  %104 = call i32* @HeapAlloc(i32 %102, i32 0, i32 %103)
  %105 = load i32**, i32*** %11, align 8
  store i32* %104, i32** %105, align 8
  store i32* %104, i32** %12, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %94
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @HeapFree(i32 %109, i32 0, i32* %110)
  %112 = load i32*, i32** @FALSE, align 8
  store i32* %112, i32** %6, align 8
  br label %131

113:                                              ; preds = %94
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32**, i32*** %11, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @HLPFILE_UncompressRLE(i32* %114, i32* %118, i32* %120, i32 %121)
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @HeapFree(i32 %123, i32 0, i32* %124)
  br label %129

126:                                              ; preds = %5
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  store i32* null, i32** %6, align 8
  br label %131

129:                                              ; preds = %113, %79, %39, %28
  %130 = load i32*, i32** %12, align 8
  store i32* %130, i32** %6, align 8
  br label %131

131:                                              ; preds = %129, %126, %108, %92, %62, %38
  %132 = load i32*, i32** %6, align 8
  ret i32* %132
}

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @WINE_WARN(i8*, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HLPFILE_UncompressRLE(i32*, i32*, i32*, i32) #1

declare dso_local i32 @HLPFILE_UncompressedLZ77_Size(i32*, i32*) #1

declare dso_local i32 @HLPFILE_UncompressLZ77(i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
