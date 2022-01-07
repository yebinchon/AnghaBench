; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_json_fix_string.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_json_fix_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_fix_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %66, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %3, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %67

8:                                                ; preds = %4
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 92
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  store i8 47, i8* %16, align 1
  br label %66

18:                                               ; preds = %8
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  store i8 39, i8* %26, align 1
  br label %65

28:                                               ; preds = %18
  %29 = load i8, i8* %3, align 1
  %30 = call i64 @isspace(i8 zeroext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %3, align 1
  %34 = call i64 @iscntrl(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %2, align 8
  store i8 32, i8* %42, align 1
  br label %64

44:                                               ; preds = %36
  %45 = load i8, i8* %3, align 1
  %46 = call i32 @isprint(i8 zeroext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %50, 127
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ true, %44 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %2, align 8
  store i8 95, i8* %58, align 1
  br label %63

60:                                               ; preds = %52
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %25
  br label %66

66:                                               ; preds = %65, %15
  br label %4

67:                                               ; preds = %4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @iscntrl(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
