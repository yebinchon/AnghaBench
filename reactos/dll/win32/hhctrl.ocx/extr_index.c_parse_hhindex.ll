; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_hhindex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_hhindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/ul\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Unhandled tag! %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_18__*)* @parse_hhindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_hhindex(i32* %0, i32* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  store i32 -1, i32* %10, align 4
  %13 = call i32 @strbuf_init(%struct.TYPE_17__* %8)
  %14 = call i32 @strbuf_init(%struct.TYPE_17__* %9)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @stream_init(i32* %7, i32* %15)
  br label %17

17:                                               ; preds = %121, %3
  %18 = call i64 @next_node(i32* %7, %struct.TYPE_17__* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %17
  %21 = call i32 @get_node_name(%struct.TYPE_17__* %8, %struct.TYPE_17__* %9)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_strnicmp(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %99, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_18__* @parse_li(i32* %30, i32* %7)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %11, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = call i64 @lstrcmpW(%struct.TYPE_18__* %42, %struct.TYPE_18__* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @item_realloc(%struct.TYPE_18__* %52, i32 %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i64 %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i64 0
  %66 = call i32 @memcpy(%struct.TYPE_18__* %61, %struct.TYPE_18__* %65, i32 4)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = call i32 @heap_free(%struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = call i32 @heap_free(%struct.TYPE_18__* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %76 = call i32 @heap_free(%struct.TYPE_18__* %75)
  br label %98

77:                                               ; preds = %39, %34, %29
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %79 = icmp ne %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %80, %77
  br label %98

98:                                               ; preds = %97, %48
  br label %121

99:                                               ; preds = %20
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @_strnicmp(i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %120

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_strnicmp(i32 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %10, align 4
  br label %119

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120, %98
  %122 = call i32 @strbuf_zero(%struct.TYPE_17__* %8)
  br label %17

123:                                              ; preds = %17
  %124 = call i32 @strbuf_free(%struct.TYPE_17__* %8)
  %125 = call i32 @strbuf_free(%struct.TYPE_17__* %9)
  ret void
}

declare dso_local i32 @strbuf_init(%struct.TYPE_17__*) #1

declare dso_local i32 @stream_init(i32*, i32*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @parse_li(i32*, i32*) #1

declare dso_local i64 @lstrcmpW(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @item_realloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_18__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_17__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
