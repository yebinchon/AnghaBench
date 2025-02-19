; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_pg_inet_net_pton.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_pg_inet_net_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_inet_net_pton(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %39 [
    i32 129, label %11
    i32 128, label %25
  ]

11:                                               ; preds = %4
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @inet_net_pton_ipv4(i8* %15, i8* %16)
  br label %23

18:                                               ; preds = %11
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @inet_cidr_pton_ipv4(i8* %19, i8* %20, i64 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ %17, %14 ], [ %22, %18 ]
  store i32 %24, i32* %5, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @inet_net_pton_ipv6(i8* %29, i8* %30)
  br label %37

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @inet_cidr_pton_ipv6(i8* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ %31, %28 ], [ %36, %32 ]
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37, %23
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @inet_net_pton_ipv4(i8*, i8*) #1

declare dso_local i32 @inet_cidr_pton_ipv4(i8*, i8*, i64) #1

declare dso_local i32 @inet_net_pton_ipv6(i8*, i8*) #1

declare dso_local i32 @inet_cidr_pton_ipv6(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
