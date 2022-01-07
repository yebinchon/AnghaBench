; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-rfmtdate.c_date_test_fmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-rfmtdate.c_date_test_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@date_test_fmt.i = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"r: %d \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"date: %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @date_test_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @date_test_fmt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %10 = call i32 @rfmtdate(i32 %7, i8* %8, i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @check_return(i32 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @date_test_fmt.i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @date_test_fmt.i, align 4
  %21 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %22 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %21)
  br label %23

23:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @rfmtdate(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @check_return(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
