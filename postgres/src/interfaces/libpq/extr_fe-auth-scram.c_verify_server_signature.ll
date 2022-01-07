; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_verify_server_signature.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_verify_server_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i32 }

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @verify_server_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_server_signature(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @scram_ServerKey(i32 %18, i32* %15)
  %20 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %21 = call i32 @scram_HMAC_init(i32* %7, i32* %15, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @scram_HMAC_update(i32* %7, i8* %24, i32 %28)
  %30 = call i32 @scram_HMAC_update(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @scram_HMAC_update(i32* %7, i8* %33, i32 %37)
  %39 = call i32 @scram_HMAC_update(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @scram_HMAC_update(i32* %7, i8* %42, i32 %46)
  %48 = call i32 @scram_HMAC_final(i32* %12, i32* %7)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %53 = call i64 @memcmp(i32* %12, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

56:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scram_ServerKey(i32, i32*) #2

declare dso_local i32 @scram_HMAC_init(i32*, i32*, i32) #2

declare dso_local i32 @scram_HMAC_update(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @scram_HMAC_final(i32*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
