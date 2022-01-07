; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_hhc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_parse_hhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@INSERT_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@INSERT_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*)* @parse_hhc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_hhc(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32, i32* @INSERT_NEXT, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = call i32 @strbuf_init(%struct.TYPE_8__* %10)
  %18 = call i32 @strbuf_init(%struct.TYPE_8__* %11)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @stream_init(i32* %9, i32* %19)
  br label %21

21:                                               ; preds = %48, %4
  %22 = call i64 @next_node(i32* %9, %struct.TYPE_8__* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = call i32 @get_node_name(%struct.TYPE_8__* %10, %struct.TYPE_8__* %11)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @_strnicmp(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @parse_ul(i32* %34, i32* %9, i32* %35)
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* @INSERT_CHILD, align 4
  %40 = call i32* @insert_item(i32* %37, i32* %38, i32 %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i32*, i32** %13, align 8
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %43, %33
  %46 = load i32, i32* @INSERT_CHILD, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %24
  %49 = call i32 @strbuf_zero(%struct.TYPE_8__* %10)
  br label %21

50:                                               ; preds = %21
  %51 = call i32 @strbuf_free(%struct.TYPE_8__* %10)
  %52 = call i32 @strbuf_free(%struct.TYPE_8__* %11)
  %53 = load i32*, i32** %12, align 8
  ret i32* %53
}

declare dso_local i32 @strbuf_init(%struct.TYPE_8__*) #1

declare dso_local i32 @stream_init(i32*, i32*) #1

declare dso_local i64 @next_node(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @get_node_name(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @_strnicmp(i32, i8*, i32) #1

declare dso_local i32* @parse_ul(i32*, i32*, i32*) #1

declare dso_local i32* @insert_item(i32*, i32*, i32) #1

declare dso_local i32 @strbuf_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @strbuf_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
