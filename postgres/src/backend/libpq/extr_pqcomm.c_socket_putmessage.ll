; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_socket_putmessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_socket_putmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DoingCopyOut = common dso_local global i64 0, align 8
@PqCommBusy = common dso_local global i32 0, align 4
@FrontendProtocol = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i64)* @socket_putmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_putmessage(i8 signext %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @DoingCopyOut, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @PqCommBusy, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %46

15:                                               ; preds = %11
  store i32 1, i32* @PqCommBusy, align 4
  %16 = load i8, i8* %5, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call i64 @internal_putbytes(i8* %5, i64 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %44

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* @FrontendProtocol, align 4
  %25 = call i32 @PG_PROTOCOL_MAJOR(i32 %24)
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32 @pg_hton32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i64 @internal_putbytes(i8* %32, i64 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %44

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @internal_putbytes(i8* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* @PqCommBusy, align 4
  store i32 0, i32* %4, align 4
  br label %46

44:                                               ; preds = %42, %35, %21
  store i32 0, i32* @PqCommBusy, align 4
  %45 = load i32, i32* @EOF, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %43, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @internal_putbytes(i8*, i64) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pg_hton32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
