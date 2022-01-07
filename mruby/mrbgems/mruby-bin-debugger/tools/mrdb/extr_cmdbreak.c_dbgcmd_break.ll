; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_dbgcmd_break.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_dbgcmd_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@DBGST_PROMPT = common dso_local global i32 0, align 4
@BREAK_SET_MSG_LINE = common dso_local global i8* null, align 8
@BREAK_SET_MSG_METHOD = common dso_local global i8* null, align 8
@BREAK_SET_MSG_CLASS_METHOD = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_INVALIDLINENO = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_INVALIDFILE = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_NUMOVER = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_NOOVER = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_INVALIDARG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"T.B.D.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgcmd_break(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = call i32 @parse_breakcommand(i32* %16, %struct.TYPE_4__* %17, i8** %8, i32* %9, i8** %10, i8** %11)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %33 [
    i32 136, label %20
    i32 135, label %26
    i32 134, label %32
  ]

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mrb_debug_set_break_line(i32* %21, i32* %22, i8* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @mrb_debug_set_break_method(i32* %27, i32* %28, i8* %29, i8* %30)
  store i32 %31, i32* %12, align 4
  br label %35

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %2, %32
  %34 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %26, %20
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 136
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** @BREAK_SET_MSG_LINE, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, ...) @printf(i8* %42, i32 %43, i8* %44, i32 %45)
  br label %65

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 135
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** @BREAK_SET_MSG_METHOD, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i8*, ...) @printf(i8* %54, i32 %55, i8* %56)
  br label %64

58:                                               ; preds = %50, %47
  %59 = load i8*, i8** @BREAK_SET_MSG_CLASS_METHOD, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (i8*, ...) @printf(i8* %59, i32 %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64, %41
  br label %90

66:                                               ; preds = %35
  %67 = load i32, i32* %12, align 4
  switch i32 %67, label %88 [
    i32 132, label %68
    i32 133, label %73
    i32 130, label %77
    i32 131, label %80
    i32 129, label %83
    i32 128, label %86
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** @BREAK_ERR_MSG_INVALIDLINENO, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (i8*, ...) @printf(i8* %69, i32 %70, i8* %71)
  br label %89

73:                                               ; preds = %66
  %74 = load i8*, i8** @BREAK_ERR_MSG_INVALIDFILE, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 (i8*, ...) @printf(i8* %74, i8* %75)
  br label %89

77:                                               ; preds = %66
  %78 = load i8*, i8** @BREAK_ERR_MSG_NUMOVER, align 8
  %79 = call i32 @puts(i8* %78)
  br label %89

80:                                               ; preds = %66
  %81 = load i8*, i8** @BREAK_ERR_MSG_NOOVER, align 8
  %82 = call i32 @puts(i8* %81)
  br label %89

83:                                               ; preds = %66
  %84 = load i8*, i8** @BREAK_ERR_MSG_INVALIDARG, align 8
  %85 = call i32 @puts(i8* %84)
  br label %89

86:                                               ; preds = %66
  %87 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %89

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %86, %83, %80, %77, %73, %68
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %33
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @parse_breakcommand(i32*, %struct.TYPE_4__*, i8**, i32*, i8**, i8**) #1

declare dso_local i32 @mrb_debug_set_break_line(i32*, i32*, i8*, i32) #1

declare dso_local i32 @mrb_debug_set_break_method(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
