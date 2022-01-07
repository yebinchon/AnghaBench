; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_GetDocumentTitle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_GetDocumentTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Could not open storage to obtain the title for a document.\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not open stream: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"magic: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetDocumentTitle(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @debugstr_w(i32* %14)
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %85

24:                                               ; preds = %2
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @IStorage_AddRef(i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @STGM_READ, align 4
  %30 = call i32 @IStorage_OpenStream(i32* %27, i32* %28, i32* null, i32 %29, i32 0, i32** %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @IStorage_Release(i32* %31)
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @stream_init(i32* %12, i32* %40)
  %42 = call i32 @strbuf_init(%struct.TYPE_11__* %6)
  %43 = call i32 @strbuf_init(%struct.TYPE_11__* %8)
  %44 = call i32 @strbuf_init(%struct.TYPE_11__* %7)
  br label %45

45:                                               ; preds = %76, %39
  %46 = call i64 @next_node(i32* %12, %struct.TYPE_11__* %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = call i32 @get_node_name(%struct.TYPE_11__* %6, %struct.TYPE_11__* %7)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @_strnicmp(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %48
  %58 = call i64 @next_content(i32* %12, %struct.TYPE_11__* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = call i32* @strdupnAtoW(i32* %67, i32 %70)
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32* @debugstr_w(i32* %72)
  %74 = call i32 @FIXME(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %73)
  br label %78

75:                                               ; preds = %60, %57
  br label %76

76:                                               ; preds = %75, %48
  %77 = call i32 @strbuf_zero(%struct.TYPE_11__* %6)
  br label %45

78:                                               ; preds = %64, %45
  %79 = call i32 @strbuf_free(%struct.TYPE_11__* %6)
  %80 = call i32 @strbuf_free(%struct.TYPE_11__* %8)
  %81 = call i32 @strbuf_free(%struct.TYPE_11__* %7)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @IStream_Release(i32* %82)
  %84 = load i32*, i32** %9, align 8
  store i32* %84, i32** %3, align 8
  br label %85

85:                                               ; preds = %78, %22
  %86 = load i32*, i32** %3, align 8
  ret i32* %86
}

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32* @debugstr_w(i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @IStorage_AddRef(i32*) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stream_init(i32*, i32*) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_11__*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @_strnicmp(i32*, i8*, i32) #1

declare dso_local i64 @next_content(i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @strdupnAtoW(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32*) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_11__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_11__*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
