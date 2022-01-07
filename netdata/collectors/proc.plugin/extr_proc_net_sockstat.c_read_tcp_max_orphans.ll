; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_sockstat.c_read_tcp_max_orphans.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_sockstat.c_read_tcp_max_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_tcp_max_orphans.filename = internal global i8* null, align 8
@read_tcp_max_orphans.tcp_max_orphans_var = internal global i32* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s/proc/sys/net/ipv4/tcp_max_orphans\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@localhost = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tcp_max_orphans\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @read_tcp_max_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_tcp_max_orphans() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i8*, i8** @read_tcp_max_orphans.filename, align 8
  %6 = icmp ne i8* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = load i32, i32* @FILENAME_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = load i32, i32* @netdata_configured_host_prefix, align 4
  %19 = call i32 @snprintfz(i8* %16, i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i8* @strdupz(i8* %16)
  store i8* %20, i8** @read_tcp_max_orphans.filename, align 8
  %21 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %21)
  br label %22

22:                                               ; preds = %11, %0
  store i64 0, i64* %4, align 8
  %23 = load i8*, i8** @read_tcp_max_orphans.filename, align 8
  %24 = call i64 @read_single_number_file(i8* %23, i64* %4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32*, i32** @read_tcp_max_orphans.tcp_max_orphans_var, align 8
  %28 = icmp ne i32* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @localhost, align 4
  %35 = call i32* @rrdvar_custom_host_variable_create(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** @read_tcp_max_orphans.tcp_max_orphans_var, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @localhost, align 4
  %38 = load i32*, i32** @read_tcp_max_orphans.tcp_max_orphans_var, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @rrdvar_custom_host_variable_set(i32 %37, i32* %38, i64 %39)
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %1, align 8
  br label %43

42:                                               ; preds = %22
  store i64 0, i64* %1, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i64, i64* %1, align 8
  ret i64 %44
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @read_single_number_file(i8*, i64*) #1

declare dso_local i32* @rrdvar_custom_host_variable_create(i32, i8*) #1

declare dso_local i32 @rrdvar_custom_host_variable_set(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
