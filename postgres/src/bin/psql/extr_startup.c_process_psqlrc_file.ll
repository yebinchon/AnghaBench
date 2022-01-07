; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_process_psqlrc_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_process_psqlrc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@PG_VERSION = common dso_local global i32 0, align 4
@PG_MAJORVERSION = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_psqlrc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_psqlrc_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @PG_VERSION, align 4
  %7 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @PG_MAJORVERSION, align 4
  %10 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @R_OK, align 4
  %13 = call i64 @access(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @process_file(i8* %16, i32 0)
  br label %36

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @R_OK, align 4
  %21 = call i64 @access(i8* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @process_file(i8* %24, i32 0)
  br label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @R_OK, align 4
  %29 = call i64 @access(i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @process_file(i8* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  ret void
}

declare dso_local i8* @psprintf(i8*, i8*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @process_file(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
