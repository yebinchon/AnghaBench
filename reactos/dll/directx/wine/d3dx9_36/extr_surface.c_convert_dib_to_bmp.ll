; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_convert_dib_to_bmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_convert_dib_to_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Converting DIB file to BMP\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @convert_dib_to_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_dib_to_bmp(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %153

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 24
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 64
  br i1 %41, label %42, label %87

42:                                               ; preds = %39, %35, %31, %27
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %12, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 8
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %51, %42
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 32, %63
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = add i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 24
  br i1 %74, label %75, label %86

75:                                               ; preds = %61
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BI_BITFIELDS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 12
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %75, %61
  br label %116

87:                                               ; preds = %39
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i8**, i8*** %4, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %13, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 8
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %91
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 32, %106
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = add i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %8, align 4
  br label %115

113:                                              ; preds = %87
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %153

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %86
  %117 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, 32
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %11, align 4
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load i32, i32* %11, align 4
  %125 = call i32* @HeapAlloc(i32 %123, i32 0, i32 %124)
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 32
  %128 = load i8**, i8*** %4, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CopyMemory(i32* %127, i8* %129, i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = bitcast i32* %133 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %134, %struct.TYPE_5__** %9, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 19778, i32* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = load i8**, i8*** %4, align 8
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %5, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %116, %113, %25
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CopyMemory(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
