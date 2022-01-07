; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_sitemap_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_sitemap_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32 }

@INSERT_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/object\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not get %s::%s stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_24__*, i32*, %struct.TYPE_25__*, i32*)* @parse_sitemap_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @parse_sitemap_object(%struct.TYPE_24__* %0, i32* %1, %struct.TYPE_25__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_22__, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @INSERT_NEXT, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %15 = call i32 @strbuf_init(%struct.TYPE_22__* %9)
  %16 = call i32 @strbuf_init(%struct.TYPE_22__* %10)
  %17 = call %struct.TYPE_25__* @heap_alloc_zero(i32 32)
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %11, align 8
  br label %18

18:                                               ; preds = %48, %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @next_node(i32* %19, %struct.TYPE_22__* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = call i32 @get_node_name(%struct.TYPE_22__* %9, %struct.TYPE_22__* %10)
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_strnicmp(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %50

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_strnicmp(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @parse_obj_node_param(%struct.TYPE_25__* %38, %struct.TYPE_25__* %39, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = call i32 @strbuf_zero(%struct.TYPE_22__* %9)
  br label %18

50:                                               ; preds = %31, %18
  %51 = call i32 @strbuf_free(%struct.TYPE_22__* %9)
  %52 = call i32 @strbuf_free(%struct.TYPE_22__* %10)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %50
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = call i32* @GetChmStream(%struct.TYPE_21__* %61, i32 %65, %struct.TYPE_23__* %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @parse_hhc(%struct.TYPE_24__* %72, i32* %73, %struct.TYPE_25__* %74, i32* %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @IStream_Release(i32* %79)
  br label %101

81:                                               ; preds = %58
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @debugstr_w(i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @debugstr_w(i32 %90)
  %92 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %91)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %81
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %99 = call i32 @free_content_item(%struct.TYPE_25__* %98)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  br label %100

100:                                              ; preds = %97, %81
  br label %101

101:                                              ; preds = %100, %71
  br label %102

102:                                              ; preds = %101, %50
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  ret %struct.TYPE_25__* %103
}

declare dso_local i32 @strbuf_init(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @heap_alloc_zero(i32) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local i32 @parse_obj_node_param(%struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_22__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_22__*) #1

declare dso_local i32* @GetChmStream(%struct.TYPE_21__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @parse_hhc(%struct.TYPE_24__*, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @free_content_item(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
