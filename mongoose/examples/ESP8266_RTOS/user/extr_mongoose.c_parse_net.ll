; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_parse_net.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_parse_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%d.%d.%d.%d/%d%n\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d.%d.%d.%d%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parse_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_net(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %7)
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %7)
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %66

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @isbyte(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @isbyte(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @isbyte(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @isbyte(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 33
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 24
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 32, %59
  %61 = shl i32 -1, %60
  br label %63

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 0, %62 ]
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %40, %37, %33, %29, %25, %21, %17
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) #1

declare dso_local i64 @isbyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
