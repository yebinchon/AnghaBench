; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_visual_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_visual_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Visual Help\00", align 1
@help_visual = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Visual mode help\00", align 1
@help_msg_visual = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Function Keys: (See 'e key.'), defaults to\00", align 1
@help_msg_visual_fn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Visual Views:\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [342 x i8] c" \\     toggle horizonal split mode\0A tt     create a new tab (same as t+)\0A t=     give a name to the current tab\0A t-     close current tab\0A th     select previous tab (same as tj)\0A tl     select next tab (same as tk)\0A t[1-9] select nth tab\0A C   -> rotate scr.color=0,1,2,3\0A R   -> rotate color theme with ecr command which honors scr.randpal\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Visual Print Modes:\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [136 x i8] c" pP  -> change to the next/previous print mode (hex, dis, ..)\0A TAB -> rotate between all the configurations for the current print mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Visual Evals:\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c" E      toggle asm.leahints\0A &      rotate asm.bits=16,32,64\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Visual Insertion Help:\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [214 x i8] c" i   -> insert bits, bytes or text depending on view\0A a   -> assemble instruction and write the bytes in the current offset\0A A   -> visual assembler\0A +   -> increment value of byte\0A -   -> decrement value of byte\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Visual Debugger Help:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [124 x i8] c" $   -> set the program counter (PC register)\0A s   -> step in\0A S   -> step over\0A B   -> toggle breakpoint\0A :dc -> continue\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Visual Moving Around:\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [383 x i8] c" g        type flag/offset/register name to seek\0A hl       seek to the next/previous byte\0A jk       seek to the next row (core.offset += hex.cols)\0A JK       seek one page down\0A ^        seek to the beginning of the current map\0A $        seek to the end of the current map\0A c        toggle cursor mode (use hjkl to move and HJKL to select a range)\0A mK/'K    mark/go to Key (any key)\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Visual Analysis:\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [237 x i8] c" df -> define function\0A du -> undefine function\0A dc -> define as code\0A dw -> define as dword (32bit)\0A dw -> define as qword (64bit)\0A dd -> define current block or selected bytes as data\0A V  -> view graph (same as press the 'space' key)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @visual_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visual_help(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %113, %1
  %8 = call i32* @r_strbuf_new(i32* null)
  store i32* %8, i32** %5, align 8
  %9 = call i32* @r_strbuf_new(i32* null)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %118

13:                                               ; preds = %7
  %14 = call i32 (...) @r_cons_clear00()
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @help_visual, align 4
  %17 = call i32 @r_core_visual_append_help(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @r_strbuf_get(i32* %18)
  %20 = call i32 @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @r_cons_flush()
  %22 = call i32 (...) @r_cons_readchar()
  switch i32 %22, label %113 [
    i32 113, label %23
    i32 33, label %27
    i32 63, label %33
    i32 118, label %43
    i32 112, label %51
    i32 101, label %59
    i32 99, label %67
    i32 105, label %81
    i32 100, label %89
    i32 109, label %97
    i32 97, label %105
  ]

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @r_strbuf_free(i32* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %118

27:                                               ; preds = %13
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @r_core_visual_panels_root(%struct.TYPE_7__* %28, i32 %31)
  br label %113

33:                                               ; preds = %13
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @help_msg_visual, align 4
  %36 = call i32 @r_core_visual_append_help(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @help_msg_visual_fn, align 4
  %39 = call i32 @r_core_visual_append_help(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @r_strbuf_get(i32* %40)
  %42 = call i32 @r_cons_less_str(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  br label %113

43:                                               ; preds = %13
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @r_strbuf_appendf(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @r_strbuf_appendf(i32* %46, i8* getelementptr inbounds ([342 x i8], [342 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @r_strbuf_get(i32* %48)
  %50 = call i32 @r_cons_less_str(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %4, align 4
  br label %113

51:                                               ; preds = %13
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @r_strbuf_appendf(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @r_strbuf_appendf(i32* %54, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @r_strbuf_get(i32* %56)
  %58 = call i32 @r_cons_less_str(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %113

59:                                               ; preds = %13
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @r_strbuf_appendf(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @r_strbuf_appendf(i32* %62, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @r_strbuf_get(i32* %64)
  %66 = call i32 @r_cons_less_str(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  br label %113

67:                                               ; preds = %13
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @setcursor(%struct.TYPE_7__* %68, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @r_strbuf_free(i32* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %118

81:                                               ; preds = %13
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @r_strbuf_appendf(i32* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @r_strbuf_appendf(i32* %84, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.12, i64 0, i64 0))
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @r_strbuf_get(i32* %86)
  %88 = call i32 @r_cons_less_str(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %88, i32* %4, align 4
  br label %113

89:                                               ; preds = %13
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @r_strbuf_appendf(i32* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @r_strbuf_appendf(i32* %92, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @r_strbuf_get(i32* %94)
  %96 = call i32 @r_cons_less_str(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %96, i32* %4, align 4
  br label %113

97:                                               ; preds = %13
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @r_strbuf_appendf(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @r_strbuf_appendf(i32* %100, i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.16, i64 0, i64 0))
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @r_strbuf_get(i32* %102)
  %104 = call i32 @r_cons_less_str(i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %113

105:                                              ; preds = %13
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @r_strbuf_appendf(i32* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @r_strbuf_appendf(i32* %108, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.18, i64 0, i64 0))
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @r_strbuf_get(i32* %110)
  %112 = call i32 @r_cons_less_str(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %13, %105, %97, %89, %81, %59, %51, %43, %33, %27
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @r_strbuf_free(i32* %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @r_strbuf_free(i32* %116)
  br label %7

118:                                              ; preds = %67, %23, %12
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i32 @r_cons_clear00(...) #1

declare dso_local i32 @r_core_visual_append_help(i32*, i8*, i32) #1

declare dso_local i32 @r_cons_printf(i8*, i32) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_cons_readchar(...) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

declare dso_local i32 @r_core_visual_panels_root(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @r_cons_less_str(i32, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*) #1

declare dso_local i32 @setcursor(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
