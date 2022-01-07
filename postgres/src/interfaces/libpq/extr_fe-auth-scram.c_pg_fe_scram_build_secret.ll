; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_pg_fe_scram_build_secret.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_pg_fe_scram_build_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRAM_DEFAULT_SALT_LEN = common dso_local global i32 0, align 4
@SASLPREP_OOM = common dso_local global i64 0, align 8
@SASLPREP_SUCCESS = common dso_local global i64 0, align 8
@SCRAM_DEFAULT_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_fe_scram_build_secret(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SCRAM_DEFAULT_SALT_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @pg_saslprep(i8* %14, i8** %4)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SASLPREP_OOM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SASLPREP_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* @SCRAM_DEFAULT_SALT_LEN, align 4
  %28 = call i32 @pg_strong_random(i8* %13, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load i32, i32* @SCRAM_DEFAULT_SALT_LEN, align 4
  %39 = load i32, i32* @SCRAM_DEFAULT_ITERATIONS, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i8* @scram_build_secret(i8* %13, i32 %38, i32 %39, i8* %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %36, %19
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pg_saslprep(i8*, i8**) #2

declare dso_local i32 @pg_strong_random(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @scram_build_secret(i8*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
