; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_check_fmt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_check_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i32 }

@R_MAGIC_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%[-0-9\\.]*s\00", align 1
@R_REGEX_EXTENDED = common dso_local global i32 0, align 4
@R_REGEX_NOSUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"regex error %d, (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.r_magic*)* @check_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fmt(i32* %0, %struct.r_magic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r_magic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.r_magic* %1, %struct.r_magic** %5, align 8
  %9 = load i32, i32* @R_MAGIC_DESC, align 4
  %10 = call i32 @strchr(i32 %9, i8 signext 37)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* @R_REGEX_EXTENDED, align 4
  %15 = load i32, i32* @R_REGEX_NOSUB, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @r_regex_comp(i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %23 = call i32 @r_regex_error(i32 %21, i32* %6, i8* %22, i32 511)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %27 = call i32 @file_magerror(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %26)
  store i32 -1, i32* %3, align 4
  br label %36

28:                                               ; preds = %13
  %29 = load i32, i32* @R_MAGIC_DESC, align 4
  %30 = call i32 @r_regex_exec(i32* %6, i32 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = call i32 @r_regex_fini(i32* %6)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %20, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @r_regex_comp(i32*, i8*, i32) #1

declare dso_local i32 @r_regex_error(i32, i32*, i8*, i32) #1

declare dso_local i32 @file_magerror(i32*, i8*, i32, i8*) #1

declare dso_local i32 @r_regex_exec(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @r_regex_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
