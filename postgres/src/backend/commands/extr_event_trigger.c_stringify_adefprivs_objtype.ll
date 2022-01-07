; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_stringify_adefprivs_objtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_stringify_adefprivs_objtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TABLES\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SEQUENCES\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DATABASES\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DOMAINS\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"FOREIGN DATA WRAPPERS\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"FOREIGN SERVERS\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"FUNCTIONS\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LANGUAGES\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"LARGE OBJECTS\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SCHEMAS\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"PROCEDURES\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ROUTINES\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"TABLESPACES\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"TYPES\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"unsupported object type: %d\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @stringify_adefprivs_objtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stringify_adefprivs_objtype(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %24 [
    i32 170, label %5
    i32 138, label %6
    i32 142, label %7
    i32 168, label %8
    i32 165, label %9
    i32 161, label %10
    i32 160, label %11
    i32 158, label %12
    i32 156, label %13
    i32 155, label %14
    i32 143, label %15
    i32 149, label %16
    i32 145, label %17
    i32 137, label %18
    i32 130, label %19
    i32 177, label %20
    i32 176, label %20
    i32 175, label %20
    i32 174, label %20
    i32 173, label %20
    i32 172, label %20
    i32 171, label %20
    i32 169, label %20
    i32 166, label %20
    i32 167, label %20
    i32 164, label %20
    i32 163, label %20
    i32 162, label %20
    i32 159, label %20
    i32 157, label %20
    i32 154, label %20
    i32 153, label %20
    i32 152, label %20
    i32 151, label %20
    i32 150, label %20
    i32 148, label %20
    i32 147, label %20
    i32 146, label %20
    i32 144, label %20
    i32 141, label %20
    i32 140, label %20
    i32 139, label %20
    i32 136, label %20
    i32 135, label %20
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 131, label %20
    i32 129, label %20
    i32 128, label %20
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %25

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %25

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %25

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %25

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %25

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %25

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %25

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %25

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %25

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %25

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %25

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %25

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %25

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %25

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %25

20:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
