; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_check_bptype.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_check_bptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BREAK_ERR_MSG_BLANK = common dso_local global i32 0, align 4
@MRB_DEBUG_BPTYPE_NONE = common dso_local global i32 0, align 4
@MRB_DEBUG_BPTYPE_METHOD = common dso_local global i32 0, align 4
@BREAK_ERR_MSG_INVALIDSTR = common dso_local global i8* null, align 8
@LINENO_MAX_DIGIT = common dso_local global i64 0, align 8
@BREAK_ERR_MSG_RANGEOVER = common dso_local global i32 0, align 4
@MRB_DEBUG_BPTYPE_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_bptype(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @ISBLANK(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @ISCNTRL(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @BREAK_ERR_MSG_BLANK, align 4
  %17 = call i32 @puts(i32 %16)
  %18 = load i32, i32* @MRB_DEBUG_BPTYPE_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @ISDIGIT(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @MRB_DEBUG_BPTYPE_METHOD, align 4
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @ISBLANK(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ISCNTRL(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @ISDIGIT(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** @BREAK_ERR_MSG_INVALIDSTR, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @printf(i8* %46, i8* %47)
  %49 = load i32, i32* @MRB_DEBUG_BPTYPE_NONE, align 4
  store i32 %49, i32* %2, align 4
  br label %69

50:                                               ; preds = %40
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %27

53:                                               ; preds = %37
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 48
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = load i64, i64* @LINENO_MAX_DIGIT, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @BREAK_ERR_MSG_RANGEOVER, align 4
  %65 = call i32 @puts(i32 %64)
  %66 = load i32, i32* @MRB_DEBUG_BPTYPE_NONE, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @MRB_DEBUG_BPTYPE_LINE, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %63, %45, %24, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i64 @ISCNTRL(i8 signext) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
