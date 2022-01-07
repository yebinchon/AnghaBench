; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_ascii2keydirection.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_ascii2keydirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_DIRECTION_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@KEY_DIRECTION_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@KEY_DIRECTION_INVERSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unknown key direction '%s' -- must be '0' or '1'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ascii2keydirection(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @KEY_DIRECTION_BIDIRECTIONAL, align 4
  store i32 %9, i32* %3, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @KEY_DIRECTION_NORMAL, align 4
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @KEY_DIRECTION_INVERSE, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @msg(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20, %14, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
