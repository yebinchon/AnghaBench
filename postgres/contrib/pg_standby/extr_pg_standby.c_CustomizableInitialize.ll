; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_CustomizableInitialize.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_CustomizableInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WALFilePath = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@archiveLocation = common dso_local global i8* null, align 8
@nextWALFileName = common dso_local global i8* null, align 8
@restoreCommandType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@xlogFilePath = common dso_local global i32 0, align 4
@stat_buf = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: archive location \22%s\22 does not exist\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CustomizableInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CustomizableInitialize() #0 {
  %1 = load i32, i32* @WALFilePath, align 4
  %2 = load i32, i32* @MAXPGPATH, align 4
  %3 = load i8*, i8** @archiveLocation, align 8
  %4 = load i8*, i8** @nextWALFileName, align 8
  %5 = call i32 @snprintf(i32 %1, i32 %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %3, i8* %4)
  %6 = load i32, i32* @restoreCommandType, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %0, %0
  br label %8

8:                                                ; preds = %0, %7
  %9 = load i32, i32* @WALFilePath, align 4
  %10 = load i32, i32* @xlogFilePath, align 4
  %11 = call i32 @SET_RESTORE_COMMAND(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** @archiveLocation, align 8
  %14 = call i64 @stat(i8* %13, i32* @stat_buf)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @progname, align 8
  %19 = load i8*, i8** @archiveLocation, align 8
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fflush(i32 %21)
  %23 = call i32 @exit(i32 2) #3
  unreachable

24:                                               ; preds = %12
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @SET_RESTORE_COMMAND(i8*, i32, i32) #1

declare dso_local i64 @stat(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

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
