; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PerformPortalClose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PerformPortalClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_CURSOR_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid cursor name: must not be empty\00", align 1
@ERRCODE_UNDEFINED_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PerformPortalClose(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @PortalHashTableDeleteAll()
  br label %36

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INVALID_CURSOR_NAME, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @GetPortalByName(i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @PortalIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_UNDEFINED_CURSOR, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @PortalDrop(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %33, %26, %6
  ret void
}

declare dso_local i32 @PortalHashTableDeleteAll(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @GetPortalByName(i8*) #1

declare dso_local i32 @PortalIsValid(i32) #1

declare dso_local i32 @PortalDrop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
