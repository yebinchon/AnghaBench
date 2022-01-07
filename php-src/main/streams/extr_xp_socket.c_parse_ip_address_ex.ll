; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_parse_ip_address_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_parse_ip_address_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Failed to parse address \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32*, i32, i32**)* @parse_ip_address_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_ip_address_ex(i8* %0, i64 %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i8* null, i8** %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = sub i64 %18, 1
  %20 = call i8* @memchr(i8* %17, i8 signext 58, i64 %19)
  store i8* %20, i8** %12, align 8
  br label %22

21:                                               ; preds = %5
  store i8* null, i8** %12, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @atoi(i8* %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @estrndup(i8* %30, i32 %36)
  store i8* %37, i8** %13, align 8
  br label %46

38:                                               ; preds = %22
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @strpprintf(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32**, i32*** %11, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %41, %38
  store i8* null, i8** %6, align 8
  br label %48

46:                                               ; preds = %25
  %47 = load i8*, i8** %13, align 8
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i8*, i8** %6, align 8
  ret i8* %49
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32* @strpprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
