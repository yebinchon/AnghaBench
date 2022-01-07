; ModuleID = '/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_split_scrv1_password.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_split_scrv1_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pass = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"SCRV1:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"AUTH-PAM: out of memory parsing static challenge password\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"AUTH-PAM: BACKGROUND: parsed static challenge password\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"AUTH-PAM: base64 decode error while parsing static challenge password\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_pass*)* @split_scrv1_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_scrv1_password(%struct.user_pass* %0) #0 {
  %2 = alloca %struct.user_pass*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.user_pass* %0, %struct.user_pass** %2, align 8
  %8 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %3, align 4
  %9 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %10 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %103

16:                                               ; preds = %1
  %17 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %18 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %93

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 58)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %93

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %41 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @plugin_base64_decode(i8* %39, i8* %42, i32 7)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %36
  %47 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %48 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %55 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @plugin_base64_decode(i8* %53, i8* %56, i32 7)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %46
  %61 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %62 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %68 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @DEBUG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %60
  br label %93

76:                                               ; preds = %46
  br label %77

77:                                               ; preds = %76, %36
  %78 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %79 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @plugin_secure_memzero(i8* %80, i32 8)
  %82 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %83 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @plugin_secure_memzero(i8* %84, i32 8)
  %86 = load %struct.user_pass*, %struct.user_pass** %2, align 8
  %87 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strcpy(i8* %88, i8* %89)
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %77, %75, %35, %23
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = call i32 @plugin_secure_memzero(i8* %97, i32 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %15, %96, %93
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @plugin_base64_decode(i8*, i8*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @plugin_secure_memzero(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
