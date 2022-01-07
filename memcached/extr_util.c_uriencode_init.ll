; ModuleID = '/home/carl/AnghaBench/memcached/extr_util.c_uriencode_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_util.c_uriencode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uriencode_str = common dso_local global i8* null, align 8
@uriencode_map = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%%%02hhX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uriencode_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @uriencode_str, align 8
  store i8* %3, i8** %2, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @isalnum(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 46
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 95
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 126
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %17, %14, %11, %7
  %24 = load i8**, i8*** @uriencode_map, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* null, i8** %27, align 8
  br label %40

28:                                               ; preds = %20
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %1, align 4
  %31 = trunc i32 %30 to i8
  %32 = call i32 @snprintf(i8* %29, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %31)
  %33 = load i8*, i8** %2, align 8
  %34 = load i8**, i8*** @uriencode_map, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %28, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %4

44:                                               ; preds = %4
  ret void
}

declare dso_local i64 @isalnum(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
