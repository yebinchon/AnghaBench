; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_die.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: fatal error\0A\00", align 1
@delete_on_die = common dso_local global i64 0, align 8
@delete_list = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @errno, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @perror(i8* %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i64, i64* @delete_on_die, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i8**, i8*** @delete_list, align 8
  store i8** %17, i8*** %3, align 8
  br label %18

18:                                               ; preds = %22, %16
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @unlink(i8* %24)
  %26 = load i8**, i8*** %3, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %3, align 8
  br label %18

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %13
  %30 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @unlink(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
