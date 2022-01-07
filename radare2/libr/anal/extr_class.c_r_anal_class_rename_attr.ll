; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_rename_attr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_rename_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_ANAL_CLASS_ERR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i8*)* @r_anal_class_rename_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_anal_class_rename_attr(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @r_str_sanitize_sdb_key(i8* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @R_ANAL_CLASS_ERR_OTHER, align 4
  store i32 %21, i32* %6, align 4
  br label %56

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = call i8* @r_str_sanitize_sdb_key(i8* %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32, i32* @R_ANAL_CLASS_ERR_OTHER, align 4
  store i32 %30, i32* %6, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @r_str_sanitize_sdb_key(i8* %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* @R_ANAL_CLASS_ERR_OTHER, align 4
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @r_anal_class_rename_attr_raw(i32* %43, i8* %44, i32 %45, i8* %46, i8* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %42, %36, %27, %20
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i8* @r_str_sanitize_sdb_key(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_anal_class_rename_attr_raw(i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
