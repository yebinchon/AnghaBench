; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_GetFileDialog95.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_GetFileDialog95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32*, i64, i64, i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@OFN_NOCHANGEDIR = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@FODPROP_SAVEDLG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32)* @GetFileDialog95 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetFileDialog95(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OFN_NOCHANGEDIR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i8* @heap_alloc(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @GetCurrentDirectoryW(i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %43 [
    i32 129, label %31
    i32 128, label %34
  ]

31:                                               ; preds = %29
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i64 @GetFileName95(%struct.TYPE_10__* %32)
  store i64 %33, i64* %7, align 8
  br label %45

34:                                               ; preds = %29
  %35 = load i32, i32* @FODPROP_SAVEDLG, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i64 @GetFileName95(%struct.TYPE_10__* %41)
  store i64 %42, i64* %7, align 8
  br label %45

43:                                               ; preds = %29
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %34, %31
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @PathFindFileNameW(i64 %73)
  store i8* %74, i8** %9, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @lstrcpynW(i64 %77, i8* %78, i32 %81)
  br label %100

83:                                               ; preds = %62
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = bitcast %struct.TYPE_8__* %86 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %10, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @PathFindFileNameA(i32 %90)
  store i8* %91, i8** %11, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lstrcpynA(i32 %94, i8* %95, i32 %98)
  br label %100

100:                                              ; preds = %83, %67
  br label %101

101:                                              ; preds = %100, %55, %48, %45
  %102 = load i8*, i8** %5, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @SetCurrentDirectoryW(i8* %105)
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @heap_free(i8* %107)
  br label %109

109:                                              ; preds = %104, %101
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 @heap_free(i8* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @heap_free(i8* %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @heap_free(i8* %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @heap_free(i8* %133)
  br label %135

135:                                              ; preds = %114, %109
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @heap_free(i8* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @heap_free(i8* %142)
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %160, %135
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @ARRAY_SIZE(i32* %148)
  %150 = icmp ult i32 %145, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ILFree(i32 %158)
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %6, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %144

163:                                              ; preds = %144
  %164 = load i64, i64* %7, align 8
  ret i64 %164
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #1

declare dso_local i64 @GetFileName95(%struct.TYPE_10__*) #1

declare dso_local i8* @PathFindFileNameW(i64) #1

declare dso_local i32 @lstrcpynW(i64, i8*, i32) #1

declare dso_local i8* @PathFindFileNameA(i32) #1

declare dso_local i32 @lstrcpynA(i32, i8*, i32) #1

declare dso_local i32 @SetCurrentDirectoryW(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ILFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
