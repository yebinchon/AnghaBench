; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.h_do_inits.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.h_do_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@installdir = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: Cannot get name of executable\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SYSTEMDRIVE\00", align 1
@sysdrive = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"C:\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @do_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inits(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i32, i32* @installdir, align 4
  %4 = load i8**, i8*** %2, align 8
  %5 = getelementptr inbounds i8*, i8** %4, i64 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @BUFSIZE, align 4
  %8 = call i32* @my_fullpath(i32 %3, i8* %6, i32 %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @myexit(i32 1)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @installdir, align 4
  %15 = call i32 @remove_tail(i32 %14)
  %16 = load i32, i32* @installdir, align 4
  %17 = call i32 @mch_chdir(i32 %16)
  %18 = call i64* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64* %18, i64** @sysdrive, align 8
  %19 = load i64*, i64** @sysdrive, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = load i64*, i64** @sysdrive, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NUL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %13
  store i64* bitcast ([4 x i8]* @.str.2 to i64*), i64** @sysdrive, align 8
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32* @my_fullpath(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @myexit(i32) #1

declare dso_local i32 @remove_tail(i32) #1

declare dso_local i32 @mch_chdir(i32) #1

declare dso_local i64* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
