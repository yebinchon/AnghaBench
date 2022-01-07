; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_g_write.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_g_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_write(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @lua_type(i32* %19, i32 %20)
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call double @lua_tonumber(i32* %28, i32 %29)
  %31 = call i64 @fprintf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %30)
  %32 = icmp sgt i64 %31, 0
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %52

36:                                               ; preds = %18
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @luaL_checklstring(i32* %37, i32 %38, i64* %9)
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @fwrite(i8* %43, i32 1, i64 %44, i32* %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pushresult(i32* %57, i32 %58, i32* null)
  ret i32 %59
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, double) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
