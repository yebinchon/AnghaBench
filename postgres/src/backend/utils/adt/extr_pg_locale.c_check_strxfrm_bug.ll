; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_check_strxfrm_bug.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_check_strxfrm_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"strxfrm(), in locale \22%s\22, writes past the specified array length\00", align 1
@LC_COLLATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Apply system library package updates.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_strxfrm_bug() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 127, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 7
  store i8 127, i8* %4, align 1
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %6 = call i32 @strxfrm(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 7)
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 7
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 127
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %0
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 1
  store i8 127, i8* %13, align 1
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strxfrm(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 127
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_SYSTEM_ERROR, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i32, i32* @LC_COLLATE, align 4
  %29 = call i32 @setlocale(i32 %28, i32* null)
  %30 = call i32 @errmsg_internal(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %25, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @strxfrm(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @setlocale(i32, i32*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
