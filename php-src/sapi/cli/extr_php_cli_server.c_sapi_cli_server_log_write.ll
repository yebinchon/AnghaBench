; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_sapi_cli_server_log_write.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_sapi_cli_server_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_cli_server_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown time, can't be fetched\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@php_cli_server_workers_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @sapi_cli_server_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sapi_cli_server_log_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [52 x i8], align 16
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @php_cli_server_log_level, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %36

11:                                               ; preds = %2
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  %13 = call i64 @php_cli_server_get_system_time(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  %17 = call i32 @memmove(i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 31)
  br label %31

18:                                               ; preds = %11
  %19 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  br label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  %29 = call i32 @memmove(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @stderr, align 4
  %33 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %10
  ret void
}

declare dso_local i64 @php_cli_server_get_system_time(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
