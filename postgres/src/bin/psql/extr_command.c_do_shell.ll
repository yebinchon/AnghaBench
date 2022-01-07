; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_shell.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@DEFAULT_SHELL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"exec %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\\!: failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @do_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_shell(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** @DEFAULT_SHELL, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @psprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @system(i8* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @free(i8* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @system(i8* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 127
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = call i32 @pg_log_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pg_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
