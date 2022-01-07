; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_aggregatecmds.c_extractModify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_aggregatecmds.c_extractModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"read_only\00", align 1
@AGGMODIFY_READ_ONLY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"shareable\00", align 1
@AGGMODIFY_SHAREABLE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read_write\00", align 1
@AGGMODIFY_READ_WRITE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"parameter \22%s\22 must be READ_ONLY, SHAREABLE, or READ_WRITE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_4__*)* @extractModify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @extractModify(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i8* @defGetString(%struct.TYPE_4__* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8, i8* @AGGMODIFY_READ_ONLY, align 1
  store i8 %11, i8* %2, align 1
  br label %33

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8, i8* @AGGMODIFY_SHAREABLE, align 1
  store i8 %17, i8* %2, align 1
  br label %33

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8, i8* @AGGMODIFY_READ_WRITE, align 1
  store i8 %23, i8* %2, align 1
  br label %33

24:                                               ; preds = %18
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %25, i32 %31)
  store i8 0, i8* %2, align 1
  br label %33

33:                                               ; preds = %24, %22, %16, %10
  %34 = load i8, i8* %2, align 1
  ret i8 %34
}

declare dso_local i8* @defGetString(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
