; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_relpath.c_forkname_to_number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_relpath.c_forkname_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FORKNUM = common dso_local global i64 0, align 8
@forkNames = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid fork name\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Valid fork names are \22main\22, \22fsm\22, \22vm\22, and \22init\22.\00", align 1
@InvalidForkNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @forkname_to_number(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MAX_FORKNUM, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32*, i32** @forkNames, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %31

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %24, i32 %28)
  %30 = load i64, i64* @InvalidForkNumber, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %23, %17
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
