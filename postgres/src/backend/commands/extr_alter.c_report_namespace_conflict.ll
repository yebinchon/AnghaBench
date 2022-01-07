; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_report_namespace_conflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_report_namespace_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"conversion \22%s\22 already exists in schema \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"statistics object \22%s\22 already exists in schema \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"text search parser \22%s\22 already exists in schema \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"text search dictionary \22%s\22 already exists in schema \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"text search template \22%s\22 already exists in schema \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"text search configuration \22%s\22 already exists in schema \22%s\22\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"unsupported object class %u\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @report_namespace_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_namespace_conflict(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @OidIsValid(i32 %8)
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %42 [
    i32 133, label %12
    i32 132, label %17
    i32 129, label %22
    i32 130, label %27
    i32 128, label %32
    i32 131, label %37
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @OidIsValid(i32 %13)
  %15 = call i32 @Assert(i32 %14)
  %16 = call i8* @gettext_noop(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @OidIsValid(i32 %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = call i8* @gettext_noop(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  br label %46

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = call i32 @Assert(i32 %24)
  %26 = call i8* @gettext_noop(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @OidIsValid(i32 %28)
  %30 = call i32 @Assert(i32 %29)
  %31 = call i8* @gettext_noop(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %7, align 8
  br label %46

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @OidIsValid(i32 %33)
  %35 = call i32 @Assert(i32 %34)
  %36 = call i8* @gettext_noop(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  br label %46

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @OidIsValid(i32 %38)
  %40 = call i32 @Assert(i32 %39)
  %41 = call i8* @gettext_noop(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  store i8* %41, i8** %7, align 8
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %32, %27, %22, %17, %12
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @get_namespace_name(i32 %52)
  %54 = call i32 @errmsg(i8* %50, i8* %51, i32 %53)
  %55 = call i32 @ereport(i32 %47, i32 %54)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
