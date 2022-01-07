; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/log/extr_log_v3.c_show.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/log/extr_log_v3.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"OPENVPN_PLUGIN_UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"OPENVPN_PLUGIN_DOWN\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OPENVPN_PLUGIN_ROUTE_UP\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"OPENVPN_PLUGIN_IPCHANGE\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"OPENVPN_PLUGIN_TLS_VERIFY\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"OPENVPN_PLUGIN_CLIENT_CONNECT_V2\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"OPENVPN_PLUGIN_CLIENT_DISCONNECT\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"OPENVPN_PLUGIN_LEARN_ADDRESS\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"OPENVPN_PLUGIN_TLS_FINAL\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"OPENVPN_PLUGIN_?\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ARGV\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%d '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ENVP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %29 [
    i32 128, label %9
    i32 134, label %11
    i32 131, label %13
    i32 133, label %15
    i32 129, label %17
    i32 137, label %19
    i32 136, label %21
    i32 135, label %23
    i32 132, label %25
    i32 130, label %27
  ]

9:                                                ; preds = %3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %31

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %31

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %31

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %31

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %31

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %31

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %31

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %31

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %31

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %31

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %47, %31
  %34 = load i8**, i8*** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i8**, i8*** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %41, i8* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %33

50:                                               ; preds = %33
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %66, %50
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i8**, i8*** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %60, i8* %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %52

69:                                               ; preds = %52
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
