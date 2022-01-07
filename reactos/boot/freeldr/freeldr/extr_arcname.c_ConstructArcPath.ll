; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/extr_arcname.c_ConstructArcPath.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/extr_arcname.c_ConstructArcPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"multi(0)disk(0)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fdisk(%d)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rdisk(%d)partition(%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConstructArcPath(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [50 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %21 = call i32 @strcat(i8* %19, i8* %20)
  br label %32

22:                                               ; preds = %4
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 128
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %31 = call i32 @strcat(i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %22, %15
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strcat(i8* %45, i8* %46)
  br label %54

48:                                               ; preds = %38
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcat(i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
