; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___print_prompt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___print_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@I = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@R_LINE_PROMPT_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0D%s%s\00", align 1
@Color_RESET = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__print_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__print_prompt() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %1, align 8
  %8 = call i32 @r_cons_get_size(i32* null)
  %9 = sub nsw i32 %8, 2
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 2), align 8
  %11 = call i32 @strlen(i64 %10)
  %12 = call i32 @R_MAX(i32 1, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 0), align 8
  %15 = call i32 @r_str_ansi_len(i8* %14)
  %16 = sub nsw i32 %13, %15
  %17 = sub nsw i32 %16, 2
  %18 = call i32 @R_MAX(i32 1, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @R_LINE_PROMPT_OFFSET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @r_cons_gotoxy(i32 0, i32 %29)
  %31 = call i32 (...) @r_cons_flush()
  br label %32

32:                                               ; preds = %26, %0
  %33 = call i32 @r_cons_clear_line(i32 0)
  %34 = load i8*, i8** @Color_RESET, align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 0), align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 2), align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @R_MIN(i32 %38, i32 %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fwrite(i64 %37, i32 1, i32 %40, i32 %41)
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 0), align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 0), align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 0), align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 8
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 7, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %48
  br label %59

58:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 0), align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 1), align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1, i32 2), align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 @fwrite(i64 %75, i32 1, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %65, %59
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @fflush(i32 %80)
  ret void
}

declare dso_local %struct.TYPE_8__* @r_cons_singleton(...) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @r_str_ansi_len(i8*) #1

declare dso_local i32 @r_cons_gotoxy(i32, i32) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_cons_clear_line(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fwrite(i64, i32, i32, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
