; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_addr.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_inet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INADDR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_inet_addr(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = icmp ult i8* %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 57
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 10
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = sub nsw i32 %32, 48
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @INADDR_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %28
  br label %53

40:                                               ; preds = %24, %18
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @INADDR_NONE, align 4
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %44, %39
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @htonl(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @INADDR_NONE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %59, %51, %37
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
