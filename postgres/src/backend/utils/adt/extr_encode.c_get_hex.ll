; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_get_hex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_get_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexlookup = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid hexadecimal digit: \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @get_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_hex(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 -1, i32* %3, align 4
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp slt i32 %9, 127
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32*, i32** @hexlookup, align 8
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8, i8* %2, align 1
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 signext %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %3, align 4
  %29 = trunc i32 %28 to i8
  ret i8 %29
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
