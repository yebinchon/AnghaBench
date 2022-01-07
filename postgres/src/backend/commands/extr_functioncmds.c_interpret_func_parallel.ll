; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_interpret_func_parallel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_interpret_func_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@PROPARALLEL_SAFE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@PROPARALLEL_UNSAFE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"restricted\00", align 1
@PROPARALLEL_RESTRICTED = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"parameter \22parallel\22 must be SAFE, RESTRICTED, or UNSAFE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_3__*)* @interpret_func_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @interpret_func_parallel(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @strVal(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i8, i8* @PROPARALLEL_SAFE, align 1
  store i8 %13, i8* %2, align 1
  br label %33

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8, i8* @PROPARALLEL_UNSAFE, align 1
  store i8 %19, i8* %2, align 1
  br label %33

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8, i8* @PROPARALLEL_RESTRICTED, align 1
  store i8 %25, i8* %2, align 1
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  %32 = load i8, i8* @PROPARALLEL_UNSAFE, align 1
  store i8 %32, i8* %2, align 1
  br label %33

33:                                               ; preds = %26, %24, %18, %12
  %34 = load i8, i8* %2, align 1
  ret i8 %34
}

declare dso_local i8* @strVal(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
