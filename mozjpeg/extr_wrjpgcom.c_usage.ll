; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_usage.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"wrjpgcom inserts a textual comment in a JPEG file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"You can add to or replace any existing comment(s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Usage: %s [switches] \00", align 1
@progname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"  -replace         Delete any existing comments\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"  -comment \22text\22  Insert comment with given text\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"  -cfile name      Read comment from named file\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Notice that you must put quotes around the comment text\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"when you use -comment.\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"If you do not give either -comment or -cfile on the command line,\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"then the comment text is read from standard input.\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"It can be multiple lines, up to %u characters total.\0A\00", align 1
@MAX_COM_LENGTH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [57 x i8] c"You must specify an input JPEG file name when supplying\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"comment text from standard input.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8*, i8** @progname, align 8
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i32, i32* @stderr, align 4
  %27 = load i64, i64* @MAX_COM_LENGTH, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
