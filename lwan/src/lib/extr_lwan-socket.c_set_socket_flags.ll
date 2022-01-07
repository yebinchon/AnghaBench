; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_set_socket_flags.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_set_socket_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not obtain socket flags\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not set socket flags\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_socket_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_socket_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @F_GETFD, align 4
  %6 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @F_SETFD, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FD_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %12, i32 %13, i32 %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @F_GETFL, align 4
  %24 = call i32 (i32, i32, ...) @fcntl(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @F_SETFL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %30, i32 %31, i32 %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
