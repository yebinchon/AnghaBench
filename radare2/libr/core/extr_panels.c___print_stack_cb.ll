; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_stack_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_stack_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"stack.delta\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asm.bits\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%c%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__print_stack_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @r_config_get_i(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @r_config_get_i(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 43, i32 45
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @R_ABS(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @PANEL_CMD_STACK, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 32
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %41)
  store i8* %42, i8** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @r_str_split(i8* %47, i8 signext 32)
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %68, %2
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i8* @r_str_word_get0(i8* %58, i32 %59)
  store i8* %60, i8** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i8* @r_str_append(i8* %65, i8* %66)
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %49

71:                                               ; preds = %49
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %78, i32 %80, i32 %81)
  %83 = call i8* @r_core_cmd_str(%struct.TYPE_9__* %77, i8* %82)
  store i8* %83, i8** %15, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @__update_panel_contents(%struct.TYPE_9__* %84, %struct.TYPE_8__* %85, i8* %86)
  ret void
}

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @R_ABS(i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, ...) #1

declare dso_local i32 @r_str_split(i8*, i8 signext) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i8* @r_core_cmd_str(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @__update_panel_contents(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
