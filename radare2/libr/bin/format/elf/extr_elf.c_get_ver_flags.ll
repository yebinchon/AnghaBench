; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_ver_flags.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_ver_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_ver_flags.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@VER_FLG_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"BASE \00", align 1
@VER_FLG_WEAK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WEAK \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"| <unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_ver_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_ver_flags(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), align 16
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %39

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VER_FLG_BASE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @strcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @VER_FLG_WEAK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @VER_FLG_BASE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VER_FLG_BASE, align 4
  %31 = load i32, i32* @VER_FLG_WEAK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_ver_flags.buff, i64 0, i64 0), i8** %2, align 8
  br label %39

39:                                               ; preds = %38, %6
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
