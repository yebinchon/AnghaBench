; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_csv_print_field.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_csv_print_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\0D\0A\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8)* @csv_print_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csv_print_field(i8* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %6, align 1
  %9 = call i32* @strchr(i8* %7, i8 signext %8)
  %10 = icmp ne i32* %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcspn(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21, %17, %11, %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @csv_escaped_print(i8* %30, i32* %31)
  br label %37

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @fputs(i8* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @csv_escaped_print(i8*, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
