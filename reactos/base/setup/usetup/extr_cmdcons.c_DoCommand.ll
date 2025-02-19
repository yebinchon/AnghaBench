; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_DoCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_DoCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i8*)*, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DoCommand: ('%s')\0A\00", align 1
@Commands = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Unknown command. Enter HELP to get a list of commands.\00", align 1
@CMD_SPECIAL = common dso_local global i32 0, align 4
@cl = common dso_local global i32 0, align 4
@cstart = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @DoCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoCommand(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %23, %2
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @IsDelimiter(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @tolower(i32 %41) #4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  store i8 %43, i8* %44, align 1
  br label %31

46:                                               ; preds = %31
  %47 = load i8*, i8** %8, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %53, %46
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  br label %48

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Commands, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %10, align 8
  br label %58

58:                                               ; preds = %79, %56
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @CONSOLE_ConOutPuts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %82

65:                                               ; preds = %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @stricmp(i8* %14, i32* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32 (i32, i8*)*, i32 (i32, i8*)** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 %74(i32 %75, i8* %76)
  br label %82

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 1
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %10, align 8
  br label %58

82:                                               ; preds = %71, %63
  br label %83

83:                                               ; preds = %82, %26
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT1(i8*, i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @IsDelimiter(i8 signext) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #3

declare dso_local i32 @CONSOLE_ConOutPuts(i8*) #2

declare dso_local i64 @stricmp(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
