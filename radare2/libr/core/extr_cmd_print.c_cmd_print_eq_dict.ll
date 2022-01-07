; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_eq_dict.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_eq_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"min:              %d  0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"max:              %d  0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unique (count):   %d  0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"range (max-min):  %d  0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"size (of block):  %d  0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @cmd_print_eq_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_print_eq_dict(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = bitcast [256 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 1024, i1 false)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %14

28:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @r_cons_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @r_cons_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @r_cons_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @r_cons_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @r_cons_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %68)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_cons_printf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
