; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_emit_number.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_emit_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.16g\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double)* @emit_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_number(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca [64 x i8], align 16
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %7 = load double, double* %4, align 8
  %8 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %10 = call i64 @number_is_valid(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %15 = call i32 @sb_puts(i32* %13, i8* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @sb_puts(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, double) #1

declare dso_local i64 @number_is_valid(i8*) #1

declare dso_local i32 @sb_puts(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
