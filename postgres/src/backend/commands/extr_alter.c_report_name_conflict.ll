; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_report_name_conflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_report_name_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"event trigger \22%s\22 already exists\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"foreign-data wrapper \22%s\22 already exists\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"server \22%s\22 already exists\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"language \22%s\22 already exists\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"publication \22%s\22 already exists\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"subscription \22%s\22 already exists\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"unsupported object class %u\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @report_name_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_name_conflict(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %19 [
    i32 133, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  br label %23

9:                                                ; preds = %2
  %10 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  br label %23

11:                                               ; preds = %2
  %12 = call i8* @gettext_noop(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  br label %23

13:                                               ; preds = %2
  %14 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  br label %23

15:                                               ; preds = %2
  %16 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = call i8* @gettext_noop(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @errmsg(i8* %27, i8* %28)
  %30 = call i32 @ereport(i32 %24, i32 %29)
  ret void
}

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
