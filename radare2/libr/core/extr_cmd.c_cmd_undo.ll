; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_undo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32, i32 }

@help_msg_u = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Usage: uc [cmd] [revert-cmd]\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: uc [cmd],[revert-cmd]\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c" uc. - list all reverts in current\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" uc* - list all core undos\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" uc  - list all core undos\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" uc- - undo last action\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"s-%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wc%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_undo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_undo(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %114 [
    i32 63, label %17
    i32 99, label %21
    i32 115, label %76
    i32 119, label %81
    i32 110, label %86
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @help_msg_u, align 4
  %20 = call i32 @r_core_cmd_help(i8* %18, i32 %19)
  store i32 1, i32* %3, align 4
  br label %116

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %72 [
    i32 32, label %26
    i32 63, label %51
    i32 46, label %57
    i32 42, label %66
    i32 45, label %69
  ]

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 44)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32* @r_core_undo_new(i32 %39, i8* %40, i8* %41)
  store i32* %42, i32** %9, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @r_core_undo_push(%struct.TYPE_10__* %43, i32* %44)
  br label %48

46:                                               ; preds = %26
  %47 = call i32 @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  br label %75

51:                                               ; preds = %21
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %75

57:                                               ; preds = %21
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call i32 @r_core_undo_print(%struct.TYPE_10__* %64, i32 1, %struct.TYPE_9__* %10)
  br label %75

66:                                               ; preds = %21
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = call i32 @r_core_undo_print(%struct.TYPE_10__* %67, i32 1, %struct.TYPE_9__* null)
  br label %75

69:                                               ; preds = %21
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = call i32 @r_core_undo_pop(%struct.TYPE_10__* %70)
  br label %75

72:                                               ; preds = %21
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = call i32 @r_core_undo_print(%struct.TYPE_10__* %73, i32 0, %struct.TYPE_9__* null)
  br label %75

75:                                               ; preds = %72, %69, %66, %57, %51, %48
  store i32 1, i32* %3, align 4
  br label %116

76:                                               ; preds = %2
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @r_core_cmdf(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  store i32 1, i32* %3, align 4
  br label %116

81:                                               ; preds = %2
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i32 @r_core_cmdf(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  store i32 1, i32* %3, align 4
  br label %116

86:                                               ; preds = %2
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 97
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @cmd_uname(%struct.TYPE_10__* %93, i8* %94)
  br label %113

96:                                               ; preds = %86
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 105
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 113
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @cmd_uniq(%struct.TYPE_10__* %109, i8* %110)
  br label %112

112:                                              ; preds = %108, %102, %96
  br label %113

113:                                              ; preds = %112, %92
  store i32 1, i32* %3, align 4
  br label %116

114:                                              ; preds = %2
  %115 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %113, %81, %76, %75, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @r_core_cmd_help(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @r_core_undo_new(i32, i8*, i8*) #1

declare dso_local i32 @r_core_undo_push(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_undo_print(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @r_core_undo_pop(%struct.TYPE_10__*) #1

declare dso_local i32 @r_core_cmdf(i8*, i8*, i8*) #1

declare dso_local i32 @cmd_uname(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cmd_uniq(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
