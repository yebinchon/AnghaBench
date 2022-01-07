; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pbe_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pbe_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PBE_TYPE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"scrypt\00", align 1
@PBE_TYPE_SCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pbkdf2\00", align 1
@PBE_TYPE_PBKDF2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pkcs12\00", align 1
@PBE_TYPE_PKCS12 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown pbe algorithm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @pbe_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbe_test_init(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @PBE_TYPE_INVALID, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @PBE_TYPE_SCRYPT, align 4
  store i32 %12, i32* %6, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @PBE_TYPE_PBKDF2, align 4
  store i32 %18, i32* %6, align 4
  br label %29

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @PBE_TYPE_PKCS12, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @TEST_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %23
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29, %11
  %31 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 4)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  ret i32 1
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @TEST_error(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
