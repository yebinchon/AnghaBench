; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_ul.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_ul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@parse_ul.sz_text_sitemap = internal constant [13 x i8] c"text/sitemap\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@INSERT_CHILD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"/ul\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @parse_ul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_ul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = call i32 @strbuf_init(%struct.TYPE_8__* %7)
  %16 = call i32 @strbuf_init(%struct.TYPE_8__* %8)
  br label %17

17:                                               ; preds = %82, %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @next_node(i32* %18, %struct.TYPE_8__* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  %22 = call i32 @get_node_name(%struct.TYPE_8__* %7, %struct.TYPE_8__* %8)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @_strnicmp(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @get_attr(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 12
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @memcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @parse_ul.sz_text_sitemap, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @parse_sitemap_object(i32* %46, i32* %47, i32* %48, i32* %12)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32* @insert_item(i32* %50, i32* %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %56, %45
  br label %59

59:                                               ; preds = %58, %40, %36, %30
  br label %82

60:                                               ; preds = %21
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_strnicmp(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32* @parse_ul(i32* %66, i32* %67, i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @INSERT_CHILD, align 4
  %73 = call i32* @insert_item(i32* %70, i32* %71, i32 %72)
  br label %81

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @_strnicmp(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %84

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %59
  %83 = call i32 @strbuf_zero(%struct.TYPE_8__* %7)
  br label %17

84:                                               ; preds = %79, %17
  %85 = call i32 @strbuf_free(%struct.TYPE_8__* %7)
  %86 = call i32 @strbuf_free(%struct.TYPE_8__* %8)
  %87 = load i32*, i32** %9, align 8
  ret i32* %87
}

declare dso_local i32 @strbuf_init(%struct.TYPE_8__*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local i8* @get_attr(i32, i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @parse_sitemap_object(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @insert_item(i32*, i32*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
