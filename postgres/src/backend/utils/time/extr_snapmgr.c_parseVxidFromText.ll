; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_parseVxidFromText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_parseVxidFromText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid snapshot data in file \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d/%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8*, %struct.TYPE_3__*)* @parseVxidFromText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseVxidFromText(i8* %0, i8** %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @strncmp(i8* %15, i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32* %36)
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = call i32 @ereport(i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %27
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 10)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = call i32 @ereport(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8**, i8*** %6, align 8
  store i8* %60, i8** %61, align 8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
