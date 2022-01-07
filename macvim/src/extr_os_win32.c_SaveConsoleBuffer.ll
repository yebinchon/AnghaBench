; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_SaveConsoleBuffer.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_SaveConsoleBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__, %struct.TYPE_15__, i8* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@g_hConOut = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*)* @SaveConsoleBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SaveConsoleBuffer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @FALSE, align 8
  store i8* %12, i8** %2, align 8
  br label %173

13:                                               ; preds = %1
  %14 = load i32, i32* @g_hConOut, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = call i32 @GetConsoleScreenBufferInfo(i32 %14, %struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** %2, align 8
  br label %173

24:                                               ; preds = %13
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %48, %37, %32, %24
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 %80, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @vim_free(i32* %89)
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i64 @alloc(i32 %94)
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %59
  %104 = load i8*, i8** @FALSE, align 8
  store i8* %104, i8** %2, align 8
  br label %173

105:                                              ; preds = %59
  br label %106

106:                                              ; preds = %105, %48
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 12000, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %123

123:                                              ; preds = %167, %106
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %124, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %123
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = add nsw i64 %135, %136
  %138 = sub nsw i64 %137, 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i64 %138, i64* %139, align 8
  %140 = load i32, i32* @g_hConOut, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = bitcast %struct.TYPE_14__* %145 to { i32, i64 }*
  %147 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ReadConsoleOutput(i32 %140, i32* %143, i32 %148, i64 %150, i64 %153, i64 %155, %struct.TYPE_11__* %6)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %130
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @vim_free(i32* %161)
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  %165 = load i8*, i8** @FALSE, align 8
  store i8* %165, i8** %2, align 8
  br label %173

166:                                              ; preds = %130
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %7, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %7, align 8
  br label %123

171:                                              ; preds = %123
  %172 = load i8*, i8** @TRUE, align 8
  store i8* %172, i8** %2, align 8
  br label %173

173:                                              ; preds = %171, %158, %103, %19, %11
  %174 = load i8*, i8** %2, align 8
  ret i8* %174
}

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @ReadConsoleOutput(i32, i32*, i32, i64, i64, i64, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
