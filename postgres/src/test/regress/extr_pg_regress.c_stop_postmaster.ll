; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_stop_postmaster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_stop_postmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@postmaster_running = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\22%s%spg_ctl\22 stop -D \22%s/data\22 -s\00", align 1
@bindir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@temp_instance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"\0A%s: could not stop postmaster: exit code was %d\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stop_postmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_postmaster() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @postmaster_running, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %0
  %7 = load i32, i32* @MAXPGPATH, align 4
  %8 = mul nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fflush(i32 %14)
  %16 = trunc i64 %9 to i32
  %17 = load i8*, i8** @bindir, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i8*, i8** @bindir, align 8
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = load i8*, i8** @bindir, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %28 = load i32, i32* @temp_instance, align 4
  %29 = call i32 @snprintf(i8* %11, i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %27, i32 %28)
  %30 = call i32 @system(i8* %11)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i8*, i8** @progname, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fprintf(i32 %34, i8* %35, i8* %36, i32 %37)
  %39 = call i32 @_exit(i32 2) #4
  unreachable

40:                                               ; preds = %22
  store i32 0, i32* @postmaster_running, align 4
  %41 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %41)
  br label %42

42:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
