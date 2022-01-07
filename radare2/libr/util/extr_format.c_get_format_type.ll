; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_format.c_get_format_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_format.c_get_format_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"uint8_t\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"int8_t\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"uleb128_t\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"uint16_t\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"uint8_t[]\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @get_format_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_format_type(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  store i8* null, i8** %3, align 8
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %28 [
    i32 98, label %6
    i32 67, label %6
    i32 99, label %8
    i32 100, label %10
    i32 105, label %10
    i32 111, label %10
    i32 120, label %10
    i32 69, label %12
    i32 102, label %14
    i32 70, label %16
    i32 113, label %18
    i32 117, label %20
    i32 119, label %22
    i32 88, label %24
    i32 68, label %26
    i32 115, label %26
    i32 83, label %26
    i32 116, label %26
    i32 122, label %26
    i32 90, label %26
  ]

6:                                                ; preds = %1, %1
  %7 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  br label %28

8:                                                ; preds = %1
  %9 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %3, align 8
  br label %28

10:                                               ; preds = %1, %1, %1, %1
  %11 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  br label %28

12:                                               ; preds = %1
  %13 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  br label %28

14:                                               ; preds = %1
  %15 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %15, i8** %3, align 8
  br label %28

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %17, i8** %3, align 8
  br label %28

18:                                               ; preds = %1
  %19 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %28

20:                                               ; preds = %1
  %21 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  br label %28

22:                                               ; preds = %1
  %23 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i8* %23, i8** %3, align 8
  br label %28

24:                                               ; preds = %1
  %25 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  br label %28

26:                                               ; preds = %1, %1, %1, %1, %1, %1
  %27 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %26, %1, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
