; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_pop_command.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_pop_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FTP_CMD_SIZE_MAX = common dso_local global i32 0, align 4
@E_FTP_NUM_FTP_CMDS = common dso_local global i64 0, align 8
@ftp_cmd_table = common dso_local global %struct.TYPE_2__* null, align 8
@E_FTP_CMD_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**)* @ftp_pop_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_pop_command(i8** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = load i32, i32* @FTP_CMD_SIZE_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = call i32 @ftp_pop_param(i8** %12, i8* %11)
  %14 = call i32 @stoupper(i8* %11)
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @E_FTP_NUM_FTP_CMDS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ftp_cmd_table, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i8* %11, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %38

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* @E_FTP_CMD_NOT_SUPPORTED, align 8
  store i64 %37, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ftp_pop_param(i8**, i8*) #2

declare dso_local i32 @stoupper(i8*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
