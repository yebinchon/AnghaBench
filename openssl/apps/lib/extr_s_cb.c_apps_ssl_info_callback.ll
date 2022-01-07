; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_apps_ssl_info_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_apps_ssl_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_ST_MASK = common dso_local global i32 0, align 4
@SSL_ST_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@SSL_ST_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SSL_accept\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@SSL_CB_LOOP = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@SSL_CB_ALERT = common dso_local global i32 0, align 4
@SSL_CB_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SSL3 alert %s:%s:%s\0A\00", align 1
@SSL_CB_EXIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"%s:failed in %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s:error in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apps_ssl_info_callback(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SSL_ST_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SSL_ST_CONNECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SSL_ST_ACCEPT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %25

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SSL_CB_LOOP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @bio_err, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @SSL_state_string_long(i32* %34)
  %36 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %35)
  br label %83

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SSL_CB_ALERT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SSL_CB_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  store i8* %48, i8** %7, align 8
  %49 = load i32, i32* @bio_err, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SSL_alert_type_string_long(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @SSL_alert_desc_string_long(i32 %53)
  %55 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %50, i32 %52, i32 %54)
  br label %82

56:                                               ; preds = %37
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SSL_CB_EXIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @bio_err, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @SSL_state_string_long(i32* %67)
  %69 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %66, i32 %68)
  br label %80

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @bio_err, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @SSL_state_string_long(i32* %76)
  %78 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81, %42
  br label %83

83:                                               ; preds = %82, %31
  ret void
}

declare dso_local i32 @BIO_printf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @SSL_state_string_long(i32*) #1

declare dso_local i32 @SSL_alert_type_string_long(i32) #1

declare dso_local i32 @SSL_alert_desc_string_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
