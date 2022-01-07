; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_index_sitemap_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_index_sitemap_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/object\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unhandled tag! %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, i32*)* @parse_index_sitemap_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @parse_index_sitemap_object(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @strbuf_init(%struct.TYPE_15__* %5)
  %9 = call i32 @strbuf_init(%struct.TYPE_15__* %6)
  %10 = call i8* @heap_alloc_zero(i32 24)
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = call i8* @heap_alloc_zero(i32 0)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 17, i32* %18, align 8
  br label %19

19:                                               ; preds = %53, %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @next_node(i32* %20, %struct.TYPE_15__* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = call i32 @get_node_name(%struct.TYPE_15__* %5, %struct.TYPE_15__* %6)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_strnicmp(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %23
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @parse_index_obj_node_param(%struct.TYPE_16__* %33, i32 %35, i32 %40)
  br label %53

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_strnicmp(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %32
  %54 = call i32 @strbuf_zero(%struct.TYPE_15__* %5)
  br label %19

55:                                               ; preds = %47, %19
  %56 = call i32 @strbuf_free(%struct.TYPE_15__* %5)
  %57 = call i32 @strbuf_free(%struct.TYPE_15__* %6)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %58
}

declare dso_local i32 @strbuf_init(%struct.TYPE_15__*) #1

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local i32 @parse_index_obj_node_param(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
