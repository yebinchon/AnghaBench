; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_applyRemoteGucs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_applyRemoteGucs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@applyRemoteGucs.GUCsAffectingIO = internal constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"DateStyle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"IntervalStyle\00", align 1
@PGC_USERSET = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@GUC_ACTION_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @applyRemoteGucs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applyRemoteGucs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @lengthof(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @applyRemoteGucs.GUCsAffectingIO, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* @applyRemoteGucs.GUCsAffectingIO, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @PQparameterStatus(i32* %17, i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %47

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @GetConfigOption(i8* %24, i32 0, i32 0)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcmp(i8* %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %47

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @NewGUCNestLevel()
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @PGC_USERSET, align 4
  %44 = load i32, i32* @PGC_S_SESSION, align 4
  %45 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %46 = call i32 @set_config_option(i8* %41, i8* %42, i32 %43, i32 %44, i32 %45, i32 1, i32 0, i32 0)
  br label %47

47:                                               ; preds = %40, %34, %22
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %8

50:                                               ; preds = %8
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @lengthof(i8**) #1

declare dso_local i8* @PQparameterStatus(i32*, i8*) #1

declare dso_local i8* @GetConfigOption(i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @NewGUCNestLevel(...) #1

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
