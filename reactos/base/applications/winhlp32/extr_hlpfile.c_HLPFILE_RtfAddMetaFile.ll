; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddMetaFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddMetaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Loading metafile\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"{\\pict\\wmetafile%u\\picw%u\\pich%u\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"sz=%u csz=%u offs=%u/%u,%u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RtfData*, i32*, i32*, i32)* @HLPFILE_RtfAddMetaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_RtfAddMetaFile(%struct.RtfData* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.RtfData*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.RtfData* %0, %struct.RtfData** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %17, align 8
  %21 = call i32 (i8*, ...) @WINE_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %15, align 8
  %24 = call i32 @fetch_ushort(i32** %15)
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %26 = load i32, i32* %19, align 4
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @GET_USHORT(i32* %27, i32 0)
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @GET_USHORT(i32* %29, i32 2)
  %31 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i32 %30)
  %32 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %34 = call i64 @HLPFILE_RtfAddControl(%struct.RtfData* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %98

38:                                               ; preds = %4
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32* %40, i32** %15, align 8
  %41 = call i32 @fetch_ulong(i32** %15)
  store i32 %41, i32* %10, align 4
  %42 = call i32 @fetch_ulong(i32** %15)
  store i32 %42, i32* %11, align 4
  %43 = call i32 @fetch_ulong(i32** %15)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @GET_UINT(i32* %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @GET_UINT(i32* %46, i32 4)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32* %49, i32** %15, align 8
  %50 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @HLPFILE_AddHotSpotLinks(%struct.RtfData* %50, i32* %51, i32* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (i8*, ...) @WINE_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32* @HLPFILE_DecompressGfx(i32* %72, i32 %73, i32 %74, i32 %75, i32** %17)
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %38
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %98

81:                                               ; preds = %38
  %82 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @HLPFILE_RtfAddHexBytes(%struct.RtfData* %82, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %89 = call i64 @HLPFILE_RtfAddControl(%struct.RtfData* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i1 [ false, %81 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %20, align 4
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @HeapFree(i32 %94, i32 0, i32* %95)
  %97 = load i32, i32* %20, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %79, %36
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @WINE_TRACE(i8*, ...) #1

declare dso_local i32 @fetch_ushort(i32**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @GET_USHORT(i32*, i32) #1

declare dso_local i64 @HLPFILE_RtfAddControl(%struct.RtfData*, i8*) #1

declare dso_local i32 @fetch_ulong(i32**) #1

declare dso_local i32 @GET_UINT(i32*, i32) #1

declare dso_local i32 @HLPFILE_AddHotSpotLinks(%struct.RtfData*, i32*, i32*, i32, i32) #1

declare dso_local i32* @HLPFILE_DecompressGfx(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @HLPFILE_RtfAddHexBytes(%struct.RtfData*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
