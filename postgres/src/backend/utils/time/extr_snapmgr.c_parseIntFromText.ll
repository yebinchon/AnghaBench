; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_parseIntFromText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_parseIntFromText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid snapshot data in file \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8*)* @parseIntFromText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseIntFromText(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @strncmp(i8* %14, i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 10)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
