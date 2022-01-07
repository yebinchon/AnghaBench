; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_wait.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@bStep = common dso_local global i32 0, align 4
@bochs_debug_break = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_3__* null, align 8
@bBreak = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ctrl+c %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"empty ctrl+c.\0A\00", align 1
@ripStop = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Next at\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"[0x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @r_debug_bochs_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_bochs_wait(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @isBochs(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %17 = load i32, i32* @bStep, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* @bStep, align 4
  br label %62

20:                                               ; preds = %16
  %21 = load i32, i32* @bochs_debug_break, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @r_cons_break_push(i32 %21, i32* %22)
  store i32 500, i32* %7, align 4
  br label %24

24:                                               ; preds = %59, %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %26 = call i32 @bochs_wait(%struct.TYPE_3__* %25)
  %27 = load i32, i32* @bBreak, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 0, i32* @bBreak, align 4
  br label %60

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  store i32 0, i32* @bBreak, align 4
  %47 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %60

48:                                               ; preds = %41
  br label %58

49:                                               ; preds = %24
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %60

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58
  br i1 true, label %24, label %60

60:                                               ; preds = %59, %56, %46, %36
  %61 = call i32 (...) @r_cons_break_pop()
  br label %62

62:                                               ; preds = %60, %19
  store i64 0, i64* @ripStop, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strstr(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @strstr(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %70, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @strstr(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %74, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sub nsw i64 %81, 1
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @strncpy(i8* %84, i8* %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %93 = call i64 @r_num_get(i32* null, i8* %92)
  store i64 %93, i64* @ripStop, align 8
  br label %94

94:                                               ; preds = %76, %72
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95, %62
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  store i8 0, i8* %100, align 1
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @isBochs(i32*) #1

declare dso_local i32 @r_cons_break_push(i32, i32*) #1

declare dso_local i32 @bochs_wait(%struct.TYPE_3__*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_cons_break_pop(...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @r_num_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
