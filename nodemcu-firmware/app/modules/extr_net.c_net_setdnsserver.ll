; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_setdnsserver.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_setdnsserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPADDR_NONE = common dso_local global i64 0, align 8
@IPADDR_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid dns server ip\00", align 1
@DNS_MAX_SERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"server index out of range [0-%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @net_setdnsserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_setdnsserver(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checklstring(i32* %9, i32 1, i64* %4)
  store i8* %10, i8** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %11, 16
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @ipaddr_addr(i8* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @IPADDR_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IPADDR_ANY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16, %13, %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @luaL_error(i32* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_optint(i32* %29, i32 2, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DNS_MAX_SERVERS, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @DNS_MAX_SERVERS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 (i32*, i8*, ...) @luaL_error(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ip4_addr_set_u32(i32* %8, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dns_setserver(i32 %42, i32* %8)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %34, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @ipaddr_addr(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @ip4_addr_set_u32(i32*, i64) #1

declare dso_local i32 @dns_setserver(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
