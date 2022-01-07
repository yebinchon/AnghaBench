; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_tphrase.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_tphrase.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"n:p:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@Configindex = common dso_local global i32 0, align 4
@Passfile = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** @Progname, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %22 [
    i32 110, label %17
    i32 112, label %20
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @atoi(i32 %18)
  store i32 %19, i32* @Configindex, align 4
  br label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @optarg, align 4
  store i32 %21, i32* @Passfile, align 4
  br label %25

22:                                               ; preds = %15
  %23 = call i32 (...) @USAGE()
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %20, %17
  br label %9

26:                                               ; preds = %9
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = call i32 (...) @USAGE()
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %26
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @doit(i8* %43)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @USAGE(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @doit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
