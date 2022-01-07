; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_proxy_authenticate.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_proxy_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_AUTH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Proxy-Authenticate: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Basic \00", align 1
@D_PROXY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"PROXY AUTH BASIC: '%s'\00", align 1
@HTTP_AUTH_BASIC = common dso_local global i32 0, align 4
@HTTP_AUTH_DIGEST = common dso_local global i32 0, align 4
@HTTP_AUTH_NTLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32*)* @get_proxy_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_proxy_authenticate(i32 %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @HTTP_AUTH_NONE, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %4, %57
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @recv_line(i32 %14, i8* %15, i32 256, i32 %16, i32 1, i32* null, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i8**, i8*** %8, align 8
  store i8* null, i8** %24, align 8
  %25 = load i32, i32* @HTTP_AUTH_NONE, align 4
  store i32 %25, i32* %5, align 4
  br label %58

26:                                               ; preds = %13
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %28 = call i32 @chomp(i8* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @HTTP_AUTH_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 20)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 20
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @D_PROXY, align 4
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %50 = call i32 @msg(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 26
  %53 = call i8* @string_alloc(i8* %52, i32* null)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @HTTP_AUTH_BASIC, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %47, %42
  br label %57

57:                                               ; preds = %56, %38, %34
  br label %13

58:                                               ; preds = %32, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @recv_line(i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @chomp(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i8* @string_alloc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
