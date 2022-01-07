; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_li.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_parse_li.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@parse_li.sz_text_sitemap = internal constant [13 x i8] c"text/sitemap\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unhandled tag! %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to parse <li> tag!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @parse_li to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_li(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  %10 = call i32 @strbuf_init(%struct.TYPE_8__* %5)
  %11 = call i32 @strbuf_init(%struct.TYPE_8__* %6)
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @next_node(i32* %13, %struct.TYPE_8__* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = call i32 @get_node_name(%struct.TYPE_8__* %5, %struct.TYPE_8__* %6)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_strnicmp(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @get_attr(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 12
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcmp(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @parse_li.sz_text_sitemap, i64 0, i64 0), i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @parse_index_sitemap_object(i32* %41, i32* %42)
  store i32* %43, i32** %7, align 8
  br label %51

44:                                               ; preds = %35, %31, %25
  br label %49

45:                                               ; preds = %16
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %44
  %50 = call i32 @strbuf_zero(%struct.TYPE_8__* %5)
  br label %12

51:                                               ; preds = %40, %12
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = call i32 @strbuf_free(%struct.TYPE_8__* %5)
  %58 = call i32 @strbuf_free(%struct.TYPE_8__* %6)
  %59 = load i32*, i32** %7, align 8
  ret i32* %59
}

declare dso_local i32 @strbuf_init(%struct.TYPE_8__*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local i8* @get_attr(i32, i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @parse_index_sitemap_object(i32*, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
