; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_OnClick.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_OnClick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32*, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@XCELLS = common dso_local global i64 0, align 8
@YCELLS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*)* @OnClick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnClick(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %158, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @XCELLS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %161

19:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %154, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @YCELLS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %157

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = bitcast %struct.TYPE_9__* %8 to { i8*, i8* }*
  %35 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @PtInRect(i32* %33, i8* %36, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %153

41:                                               ; preds = %24
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %118, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i8*, i8** @TRUE, align 8
  %74 = call i32 @InvalidateRect(i32 %68, i32* %72, i8* %73)
  br label %75

75:                                               ; preds = %65, %58
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** @FALSE, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %75, %53
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %96, align 8
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** @TRUE, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %86
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = call i32 @MoveLargeCell(%struct.TYPE_10__* %112)
  br label %117

114:                                              ; preds = %86
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = call i32 @CreateLargeCell(%struct.TYPE_10__* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %152

118:                                              ; preds = %41
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @DestroyWindow(i32* %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  br label %135

132:                                              ; preds = %118
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = call i32 @CreateLargeCell(%struct.TYPE_10__* %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i8*, i8** @FALSE, align 8
  br label %146

144:                                              ; preds = %135
  %145 = load i8*, i8** @TRUE, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i8* [ %143, %142 ], [ %145, %144 ]
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i8* %147, i8** %151, align 8
  br label %152

152:                                              ; preds = %146, %117
  br label %157

153:                                              ; preds = %24
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %10, align 8
  br label %20

157:                                              ; preds = %152, %20
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %9, align 8
  br label %15

161:                                              ; preds = %15
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @PtInRect(i32*, i8*, i8*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i8*) #1

declare dso_local i32 @MoveLargeCell(%struct.TYPE_10__*) #1

declare dso_local i32 @CreateLargeCell(%struct.TYPE_10__*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
