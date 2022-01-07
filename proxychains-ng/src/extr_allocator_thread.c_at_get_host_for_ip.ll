; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_at_get_host_for_ip.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_at_get_host_for_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_msghdr = type { i64, i32 }

@ATM_GETNAME = common dso_local global i64 0, align 8
@internal_ips_lock = common dso_local global i32 0, align 4
@ATD_SERVER = common dso_local global i32 0, align 4
@ATD_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @at_get_host_for_ip(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at_msghdr, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds %struct.at_msghdr, %struct.at_msghdr* %5, i32 0, i32 0
  %8 = load i64, i64* @ATM_GETNAME, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds %struct.at_msghdr, %struct.at_msghdr* %5, i32 0, i32 1
  store i32 4, i32* %9, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @internal_ips_lock, align 4
  %11 = call i32 @MUTEX_LOCK(i32 %10)
  %12 = load i32, i32* @ATD_SERVER, align 4
  %13 = call i64 @sendmessage(i32 %12, %struct.at_msghdr* %5, i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @ATD_CLIENT, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @getmessage(i32 %16, %struct.at_msghdr* %5, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.at_msghdr, %struct.at_msghdr* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.at_msghdr, %struct.at_msghdr* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %30, %15, %2
  %32 = getelementptr inbounds %struct.at_msghdr, %struct.at_msghdr* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ATM_GETNAME, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @internal_ips_lock, align 4
  %39 = call i32 @MUTEX_UNLOCK(i32 %38)
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i32 @MUTEX_LOCK(i32) #1

declare dso_local i64 @sendmessage(i32, %struct.at_msghdr*, i32*) #1

declare dso_local i64 @getmessage(i32, %struct.at_msghdr*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MUTEX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
