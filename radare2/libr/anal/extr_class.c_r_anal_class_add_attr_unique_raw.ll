; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_add_attr_unique_raw.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_add_attr_unique_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_ANAL_CLASS_ERR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32, i8*, i8*, i64)* @r_anal_class_add_attr_unique_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @r_anal_class_add_attr_unique_raw(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %20 = call i32 @r_anal_class_unique_attr_id_raw(i32* %16, i8* %17, i32 %18, i8* %19, i32 16)
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @r_anal_class_set_attr(i32* %21, i8* %22, i32 %23, i8* %24, i8* %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @R_ANAL_CLASS_ERR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %7, align 8
  br label %42

32:                                               ; preds = %6
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @r_str_ncpy(i8* %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i64, i64* @R_ANAL_CLASS_ERR_SUCCESS, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i64, i64* %7, align 8
  ret i64 %43
}

declare dso_local i32 @r_anal_class_unique_attr_id_raw(i32*, i8*, i32, i8*, i32) #1

declare dso_local i64 @r_anal_class_set_attr(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @r_str_ncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
