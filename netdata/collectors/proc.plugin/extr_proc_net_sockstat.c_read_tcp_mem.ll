; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_sockstat.c_read_tcp_mem.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_sockstat.c_read_tcp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_tcp_mem.filename = internal global i8* null, align 8
@read_tcp_mem.tcp_mem_low_threshold = internal global i32* null, align 8
@read_tcp_mem.tcp_mem_pressure_threshold = internal global i32* null, align 8
@read_tcp_mem.tcp_mem_high_threshold = internal global i32* null, align 8
@localhost = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tcp_mem_low\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tcp_mem_pressure\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tcp_mem_high\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s/proc/sys/net/ipv4/tcp_mem\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_tcp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tcp_mem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [201 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32*, i32** @read_tcp_mem.tcp_mem_low_threshold, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %0
  %17 = load i32, i32* @localhost, align 4
  %18 = call i32* @rrdvar_custom_host_variable_create(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** @read_tcp_mem.tcp_mem_low_threshold, align 8
  %19 = load i32, i32* @localhost, align 4
  %20 = call i32* @rrdvar_custom_host_variable_create(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** @read_tcp_mem.tcp_mem_pressure_threshold, align 8
  %21 = load i32, i32* @localhost, align 4
  %22 = call i32* @rrdvar_custom_host_variable_create(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** @read_tcp_mem.tcp_mem_high_threshold, align 8
  br label %23

23:                                               ; preds = %16, %0
  %24 = load i8*, i8** @read_tcp_mem.filename, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* @FILENAME_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %2, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %3, align 8
  %36 = load i32, i32* @FILENAME_MAX, align 4
  %37 = load i32, i32* @netdata_configured_host_prefix, align 4
  %38 = call i32 @snprintfz(i8* %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = call i8* @strdupz(i8* %35)
  store i8* %39, i8** @read_tcp_mem.filename, align 8
  %40 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %40)
  br label %41

41:                                               ; preds = %30, %23
  %42 = load i8*, i8** @read_tcp_mem.filename, align 8
  %43 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 0
  %44 = call i64 @read_file(i8* %42, i8* %43, i32 200)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  br label %88

47:                                               ; preds = %41
  %48 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 200
  store i8 0, i8* %48, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %49 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 0
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strtoull(i8* %50, i8** %6, i32 10)
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strtoull(i8* %53, i8** %6, i32 10)
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strtoull(i8* %56, i8** %6, i32 10)
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* @localhost, align 4
  %59 = load i32*, i32** @read_tcp_mem.tcp_mem_low_threshold, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @_SC_PAGESIZE, align 4
  %62 = call i64 @sysconf(i32 %61)
  %63 = mul i64 %60, %62
  %64 = uitofp i64 %63 to double
  %65 = fdiv double %64, 1.024000e+03
  %66 = fptoui double %65 to i64
  %67 = call i32 @rrdvar_custom_host_variable_set(i32 %58, i32* %59, i64 %66)
  %68 = load i32, i32* @localhost, align 4
  %69 = load i32*, i32** @read_tcp_mem.tcp_mem_pressure_threshold, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @_SC_PAGESIZE, align 4
  %72 = call i64 @sysconf(i32 %71)
  %73 = mul i64 %70, %72
  %74 = uitofp i64 %73 to double
  %75 = fdiv double %74, 1.024000e+03
  %76 = fptoui double %75 to i64
  %77 = call i32 @rrdvar_custom_host_variable_set(i32 %68, i32* %69, i64 %76)
  %78 = load i32, i32* @localhost, align 4
  %79 = load i32*, i32** @read_tcp_mem.tcp_mem_high_threshold, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* @_SC_PAGESIZE, align 4
  %82 = call i64 @sysconf(i32 %81)
  %83 = mul i64 %80, %82
  %84 = uitofp i64 %83 to double
  %85 = fdiv double %84, 1.024000e+03
  %86 = fptoui double %85 to i64
  %87 = call i32 @rrdvar_custom_host_variable_set(i32 %78, i32* %79, i64 %86)
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %47, %46
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @rrdvar_custom_host_variable_create(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @read_file(i8*, i8*, i32) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @rrdvar_custom_host_variable_set(i32, i32*, i64) #1

declare dso_local i64 @sysconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
