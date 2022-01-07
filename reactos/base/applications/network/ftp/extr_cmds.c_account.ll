; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_account.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Account:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@ap = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strncpy(i8* %14, i8* %16, i32 49)
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 49
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %22, %9
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %4, align 8
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %31 = call i64 @strlen(i8* %30)
  %32 = sub nsw i64 49, %31
  %33 = call i32 @strncat(i8* %27, i8* %29, i64 %32)
  br label %19

34:                                               ; preds = %19
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  store i8* %35, i8** %6, align 8
  br label %38

36:                                               ; preds = %2
  %37 = call i8* (i8*, ...) bitcast (i8* (...)* @getpass to i8* (i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getpass(...) #1

declare dso_local i32 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
