; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_closerel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_closerel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_reldesc = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"close of %s when %s was expected\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"close of %s before any relation was opened\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no open relation to close\00", align 1
@DEBUG4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"close relation %s\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closerel(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load i32*, i32** @boot_reldesc, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i32*, i32** @boot_reldesc, align 8
  %10 = call i8* @RelationGetRelationName(i32* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcmp(i8* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = load i32*, i32** @boot_reldesc, align 8
  %18 = call i8* @RelationGetRelationName(i32* %17)
  %19 = call i32 (i32, i8*, ...) @elog(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  br label %20

20:                                               ; preds = %14, %8
  br label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32, i8*, ...) @elog(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %20
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32*, i32** @boot_reldesc, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 (i32, i8*, ...) @elog(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %40

32:                                               ; preds = %26
  %33 = load i32, i32* @DEBUG4, align 4
  %34 = load i32*, i32** @boot_reldesc, align 8
  %35 = call i8* @RelationGetRelationName(i32* %34)
  %36 = call i32 (i32, i8*, ...) @elog(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** @boot_reldesc, align 8
  %38 = load i32, i32* @NoLock, align 4
  %39 = call i32 @table_close(i32* %37, i32 %38)
  store i32* null, i32** @boot_reldesc, align 8
  br label %40

40:                                               ; preds = %32, %29
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @RelationGetRelationName(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @table_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
