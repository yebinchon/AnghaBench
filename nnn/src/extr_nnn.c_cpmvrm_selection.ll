; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_cpmvrm_selection.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_cpmvrm_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MSGWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@g_buf = common dso_local global i32 0, align 4
@cp = common dso_local global i32 0, align 4
@mv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"'c'p / 'm'v as?\00", align 1
@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FILTER = common dso_local global i32 0, align 4
@messages = common dso_local global i32* null, align 8
@OPERATION_FAILED = common dso_local global i64 0, align 8
@utils = common dso_local global i32* null, align 8
@SH_EXEC = common dso_local global i64 0, align 8
@F_CLI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @cpmvrm_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmvrm_selection(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 (...) @endselection()
  %10 = call i32 (...) @selsafe()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @MSGWAIT, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %55 [
    i32 130, label %18
    i32 128, label %22
    i32 129, label %26
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @g_buf, align 4
  %20 = load i32, i32* @cp, align 4
  %21 = call i32 @opstr(i32 %19, i32 %20)
  br label %58

22:                                               ; preds = %16
  %23 = load i32, i32* @g_buf, align 4
  %24 = load i32, i32* @mv, align 4
  %25 = call i32 @opstr(i32 %23, i32 %24)
  br label %58

26:                                               ; preds = %16
  %27 = call i32 @get_input(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 99
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 109
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @FILTER, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %83

41:                                               ; preds = %30, %26
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @cpmv_rename(i32 %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** @messages, align 8
  %48 = load i64, i64* @OPERATION_FAILED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @printwait(i32 %50, i32* %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %41
  br label %58

55:                                               ; preds = %16
  %56 = load i32, i32* @g_buf, align 4
  %57 = call i32 @rmmulstr(i32 %56)
  br label %58

58:                                               ; preds = %55, %54, %22, %18
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 129
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32*, i32** @utils, align 8
  %63 = load i64, i64* @SH_EXEC, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @g_buf, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* @F_CLI, align 4
  %69 = call i32 @spawn(i32 %65, i32 %66, i32* null, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 130
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @clearselection()
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @FILTER, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %46, %39, %12
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @endselection(...) #1

declare dso_local i32 @selsafe(...) #1

declare dso_local i32 @opstr(i32, i32) #1

declare dso_local i32 @get_input(i8*) #1

declare dso_local i32 @cpmv_rename(i32, i8*) #1

declare dso_local i32 @printwait(i32, i32*) #1

declare dso_local i32 @rmmulstr(i32) #1

declare dso_local i32 @spawn(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @clearselection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
