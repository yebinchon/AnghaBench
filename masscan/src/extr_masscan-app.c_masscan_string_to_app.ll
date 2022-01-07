; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_masscan-app.c_masscan_string_to_app.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_masscan-app.c_masscan_string_to_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@masscan_string_to_app.list = internal constant [31 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 137 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 149 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 153 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 154 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 146 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 139 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 140 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 144 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 148 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 132 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 150 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 151 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 145 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 152 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 133 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 142 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 147 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 141 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 131 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 155 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 134 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 143 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"ssh1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ssh2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dns-ver\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"snmp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nbtstat\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"zeroaccess\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"vuln\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"heartbleed\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"ticketbleed\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"vnc\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"memcached\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"scripting\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"versioning\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"coap\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"rdp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @masscan_string_to_app(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds [31 x %struct.anon], [31 x %struct.anon]* @masscan_string_to_app.list, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 16
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds [31 x %struct.anon], [31 x %struct.anon]* @masscan_string_to_app.list, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 16
  %17 = call i64 @strcmp(i8* %12, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [31 x %struct.anon], [31 x %struct.anon]* @masscan_string_to_app.list, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
