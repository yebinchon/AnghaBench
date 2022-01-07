; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_get_georadius_store_type.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_get_georadius_store_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"store\00", align 1
@STORE_COORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"storedist\00", align 1
@STORE_DIST = common dso_local global i32 0, align 4
@STORE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_georadius_store_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @ZSTR_LEN(i32* %4)
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @ZSTR_VAL(i32* %8)
  %10 = call i32 @strcasecmp(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @STORE_COORD, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %7, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ZSTR_LEN(i32* %15)
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ZSTR_VAL(i32* %19)
  %21 = call i32 @strcasecmp(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @STORE_DIST, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %18, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @STORE_NONE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
