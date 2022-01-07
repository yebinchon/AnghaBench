; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_anytimestamp_typmodin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_anytimestamp_typmodin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid type modifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @anytimestamp_typmodin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anytimestamp_typmodin(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @ArrayGetIntegerTypmods(i32* %7, i32* %6)
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @ereport(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @anytimestamp_typmod_check(i32 %18, i32 %21)
  ret i32 %22
}

declare dso_local i32* @ArrayGetIntegerTypmods(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @anytimestamp_typmod_check(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
