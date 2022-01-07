; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/dcpu16/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/dcpu16/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [64 x i32] [i32 1, i32 124, i32 48, i32 0, i32 225, i32 125, i32 0, i32 16, i32 32, i32 0, i32 3, i32 120, i32 0, i32 16, i32 13, i32 192, i32 193, i32 125, i32 26, i32 0, i32 97, i32 168, i32 1, i32 124, i32 0, i32 32, i32 97, i32 33, i32 0, i32 32, i32 99, i32 132, i32 109, i32 128, i32 193, i32 125, i32 13, i32 0, i32 49, i32 144, i32 16, i32 124, i32 24, i32 0, i32 193, i32 125, i32 26, i32 0, i32 55, i32 144, i32 193, i32 97, i32 193, i32 125, i32 26, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@.str = private unnamed_addr constant [9 x i8] c" %d  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"set a, 0x30\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = bitcast [64 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([64 x i32]* @__const.main.buf to i8*), i64 256, i1 false)
  store i32 255, i32* %8, align 4
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %36, %17
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dcpu16_disasm(i8* %21, i32* %22, i32 %23, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 2
  %30 = load i32*, i32** %9, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %20, label %39

39:                                               ; preds = %36
  br label %62

40:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @dcpu16_assemble(i8* %41, i8* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %57, %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %46

60:                                               ; preds = %46
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %39
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dcpu16_disasm(i8*, i32*, i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @dcpu16_assemble(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
