; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_unix.c_mch_get_shellsize.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_unix.c_mch_get_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_cpo = common dso_local global i32 0, align 4
@CPO_TSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@FAIL = common dso_local global i32 0, align 4
@Rows = common dso_local global i64 0, align 8
@Columns = common dso_local global i64 0, align 8
@OK = common dso_local global i32 0, align 4
@TIOCGSIZE = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@read_cmd_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_get_shellsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @p_cpo, align 4
  %12 = load i32, i32* @CPO_TSIZE, align 4
  %13 = call i32* @vim_strchr(i32 %11, i32 %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10, %7, %0
  %16 = call i64 @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = call i64 @atoi(i8* %21)
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = call i64 @atoi(i8* %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i64, i64* %3, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %2, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @FAIL, align 4
  store i32 %39, i32* %1, align 4
  br label %45

40:                                               ; preds = %35
  %41 = load i64, i64* %2, align 8
  store i64 %41, i64* @Rows, align 8
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* @Columns, align 8
  %43 = call i32 (...) @limit_screen_size()
  %44 = load i32, i32* @OK, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32* @vim_strchr(i32, i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @limit_screen_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
