; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_check_ip_acl.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_check_ip_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"%08x %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_check_ip_acl(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mg_str, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 43, i32 45
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %51, %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @mg_next_comma_list_entry(i8* %23, %struct.mg_str* %10, i32* null)
  store i8* %24, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 43
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %26
  %37 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i64 @parse_net(i32* %39, i32* %8, i32* %9)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %33
  store i32 -1, i32* %3, align 4
  br label %61

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %43
  br label %22

52:                                               ; preds = %22
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @DBG(i8* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 43
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %42
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @mg_next_comma_list_entry(i8*, %struct.mg_str*, i32*) #1

declare dso_local i64 @parse_net(i32*, i32*, i32*) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
