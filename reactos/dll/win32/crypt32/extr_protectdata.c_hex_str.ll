; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_hex_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_hex_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @hex_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hex_str(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = srem i32 %15, 20
  %18 = icmp eq i32 %17, 19
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %22 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %23, align 16
  br label %24

24:                                               ; preds = %19, %14
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %37)
  br label %10

39:                                               ; preds = %10
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %42 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  ret i8* %42
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
