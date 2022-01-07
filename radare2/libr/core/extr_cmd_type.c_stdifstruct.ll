; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_stdifstruct.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_stdifstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDB_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"typedef.%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @stdifstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdifstruct(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @TDB_, align 4
  %11 = call i32 @r_return_val_if_fail(i32 %10, i32 0)
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* @TDB_, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @sdb_const_get(i32 %23, i8* %24, i32* null)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @r_str_startswith(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %35

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %16
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @sdb_fmt(i8*, i8*) #1

declare dso_local i8* @sdb_const_get(i32, i8*, i32*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
