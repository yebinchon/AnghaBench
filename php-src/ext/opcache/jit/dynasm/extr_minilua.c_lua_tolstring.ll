; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_tolstring.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_tolstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i64*)* @lua_tolstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lua_tolstring(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @index2adr(i32* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @ttisstring(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @luaV_tostring(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  store i8* null, i8** %4, align 8
  br label %44

26:                                               ; preds = %15
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @luaC_checkGC(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @index2adr(i32* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i64*, i64** %7, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.TYPE_2__* @tsvalue(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @svalue(i32 %42)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @index2adr(i32*, i32) #1

declare dso_local i32 @ttisstring(i32) #1

declare dso_local i32 @luaV_tostring(i32*, i32) #1

declare dso_local i32 @luaC_checkGC(i32*) #1

declare dso_local %struct.TYPE_2__* @tsvalue(i32) #1

declare dso_local i8* @svalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
