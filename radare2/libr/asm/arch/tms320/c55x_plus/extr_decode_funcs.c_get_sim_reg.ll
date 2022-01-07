; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_sim_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_sim_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"sim0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@#0x%x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<reserved>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_sim_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 3
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %49 [
    i32 0, label %12
    i32 2, label %36
    i32 1, label %47
    i32 3, label %47
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strchr(i8* %16, i8 signext 119)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 62
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %3, align 8
  br label %51

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 63
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %51

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %15, %12
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 2
  %33 = call i8* @get_reg_name_1(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strcat_dup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 2)
  store i8* %35, i8** %7, align 8
  br label %49

36:                                               ; preds = %2
  %37 = call i64 @calloc(i32 1, i32 50)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %51

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %7, align 8
  br label %49

47:                                               ; preds = %2, %2
  %48 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %2, %47, %42, %30
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %49, %41, %27, %22
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @get_reg_name_1(i32) #1

declare dso_local i8* @strcat_dup(i8*, i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
