; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_GetTokenGroups.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_GetTokenGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TokenGroups = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i32] [i32 71, i32 101, i32 116, i32 84, i32 111, i32 107, i32 101, i32 110, i32 71, i32 114, i32 111, i32 117, i32 112, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [20 x i32] [i32 71, i32 101, i32 116, i32 84, i32 111, i32 107, i32 101, i32 110, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @GetTokenGroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTokenGroups(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @TokenGroups, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GetTokenInformation(i32 %5, i32 %6, i32* %7, i32 %8, i32* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @malloc(i32 %16)
  store i32* %17, i32** %3, align 8
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @M_SYSERR, align 4
  %23 = call i32 @MsgToEventLog(i32 %22, i8* bitcast ([15 x i32]* @.str to i8*))
  br label %37

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @TokenGroups, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @GetTokenInformation(i32 %25, i32 %26, i32* %27, i32 %28, i32* %4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @M_SYSERR, align 4
  %33 = call i32 @MsgToEventLog(i32 %32, i8* bitcast ([20 x i32]* @.str.1 to i8*))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @free(i32* %34)
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @GetTokenInformation(i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @MsgToEventLog(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
