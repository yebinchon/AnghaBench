; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_cmds2.c_get_mess_env.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_cmds2.c_get_mess_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@NUL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* ()* @get_mess_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @get_mess_env() #0 {
  %1 = alloca i64*, align 8
  %2 = call i64* @mch_getenv(i64* bitcast ([7 x i8]* @.str to i64*))
  store i64* %2, i64** %1, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = icmp eq i64* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i64*, i64** %1, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NUL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5, %0
  %11 = call i64* @mch_getenv(i64* bitcast ([12 x i8]* @.str.1 to i64*))
  store i64* %11, i64** %1, align 8
  %12 = load i64*, i64** %1, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i64*, i64** %1, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NUL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14, %10
  %20 = call i64* @mch_getenv(i64* bitcast ([5 x i8]* @.str.2 to i64*))
  store i64* %20, i64** %1, align 8
  %21 = load i64*, i64** %1, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64*, i64** %1, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @VIM_ISDIGIT(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i64* null, i64** %1, align 8
  br label %29

29:                                               ; preds = %28, %23, %19
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i64*, i64** %1, align 8
  ret i64* %32
}

declare dso_local i64* @mch_getenv(i64*) #1

declare dso_local i64 @VIM_ISDIGIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
