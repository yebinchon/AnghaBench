; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_emit_trace.c_emit_branch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_emit_trace.c_emit_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"beq\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bge\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bgt\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"blt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bne\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s (%s) => (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i8*, i32, i8*)* @emit_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_branch(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store i8* null, i8** %17, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i8*, i8** %9, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %17, align 8
  br label %41

29:                                               ; preds = %7
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %17, align 8
  br label %40

40:                                               ; preds = %32, %29
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %17, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %55

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)
  store i8* %54, i8** %18, align 8
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i8*, i8** %17, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %17, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %17, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %67 = load i8*, i8** %17, align 8
  %68 = call i8* @r_egg_mkvar(i32* %65, i8* %66, i8* %67, i32 0)
  store i8* %68, i8** %15, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @r_egg_printf(i32* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %70, i8* %71, i8* %72)
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @free(i8* %74)
  ret void
}

declare dso_local i8* @r_egg_mkvar(i32*, i8*, i8*, i32) #1

declare dso_local i32 @r_egg_printf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
