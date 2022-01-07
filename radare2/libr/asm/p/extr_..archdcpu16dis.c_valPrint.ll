; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archdcpu16dis.c_valPrint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archdcpu16dis.c_valPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@regs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[%s + %#hx]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[%#hx]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%#hx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i16)* @valPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valPrint(i8* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 7
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8**, i8*** @regs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 %17, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 15
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i8**, i8*** @regs, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %4, align 4
  br label %80

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 23
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = load i8**, i8*** @regs, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 16
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i16, i16* %7, align 2
  %42 = sext i16 %41 to i32
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %80

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 29
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = load i8**, i8*** @regs, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 24
  %52 = add nsw i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %4, align 4
  br label %80

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i16, i16* %7, align 2
  %63 = sext i16 %62 to i32
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %4, align 4
  br label %80

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 31
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8
  %70 = load i16, i16* %7, align 2
  %71 = sext i16 %70 to i32
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 32
  %77 = trunc i32 %76 to i16
  %78 = sext i16 %77 to i32
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %68, %60, %47, %33, %21, %10
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
