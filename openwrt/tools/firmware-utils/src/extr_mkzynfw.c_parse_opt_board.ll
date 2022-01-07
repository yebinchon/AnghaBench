; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_board.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"parsing board option: -%c %s\00", align 1
@board = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"only one board option allowed\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid/unknown board specified: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_board(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %6, i8* %7)
  %9 = load i32*, i32** @board, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @required_arg(i8 signext %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @find_board(i8* %20)
  store i32* %21, i32** @board, align 8
  %22 = load i32*, i32** @board, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %3, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %18, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @DBG(i32, i8*, i8 signext, i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @required_arg(i8 signext, i8*) #1

declare dso_local i32* @find_board(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
