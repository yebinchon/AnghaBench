; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_check_locale.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_check_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"C.UTF-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_locale() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @LC_NUMERIC, align 4
  %3 = call i8* @setlocale(i32 %2, i32* null)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %10, %6, %0
  %15 = phi i1 [ true, %6 ], [ true, %0 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i8* @setlocale(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
