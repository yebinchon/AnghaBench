; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_protocol_from_string.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_protocol_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_versions = type { i8*, i32 }
%struct.protocol_versions.0 = type opaque

@protocol_from_string.versions = internal constant [7 x %struct.protocol_versions] [%struct.protocol_versions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 132 }, %struct.protocol_versions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 128 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 131 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 130 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 129 }, %struct.protocol_versions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 133 }, %struct.protocol_versions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 134 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"ssl3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tls1.1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tls1.2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tls1.3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dtls1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dtls1.2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @protocol_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protocol_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i64 @OSSL_NELEM(%struct.protocol_versions.0* bitcast ([7 x %struct.protocol_versions]* @protocol_from_string.versions to %struct.protocol_versions.0*))
  store i64 %6, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds [7 x %struct.protocol_versions], [7 x %struct.protocol_versions]* @protocol_from_string.versions, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.protocol_versions, %struct.protocol_versions* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 16
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [7 x %struct.protocol_versions], [7 x %struct.protocol_versions]* @protocol_from_string.versions, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.protocol_versions, %struct.protocol_versions* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %7

28:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @OSSL_NELEM(%struct.protocol_versions.0*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
