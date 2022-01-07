; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_check_locale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_check_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to restore old locale \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_locale(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @setlocale(i32 %15, i8* null)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %50

20:                                               ; preds = %14
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @pstrdup(i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @setlocale(i32 %23, i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @pstrdup(i8* %32)
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %28, %20
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @setlocale(i32 %36, i8* %37)
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @WARNING, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @pfree(i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
