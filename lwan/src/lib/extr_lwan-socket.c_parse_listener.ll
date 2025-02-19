; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_parse_listener.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_parse_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"systemd\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Listener configured to use systemd socket activation, but started outside systemd.\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_listener(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @streq(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @parse_listener_ipv6(i8* %20, i8** %21, i8** %22)
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @parse_listener_ipv4(i8* %25, i8** %26, i8** %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %19, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local i32 @parse_listener_ipv6(i8*, i8**, i8**) #1

declare dso_local i32 @parse_listener_ipv4(i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
