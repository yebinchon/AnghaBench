; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/tests/extr_test_rsa.c_main.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/tests/extr_test_rsa.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"../obj/panda.bin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@buf = common dso_local global i64 0, align 8
@MAX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"read %d\0A\00", align 1
@SHA_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"SHA hash done\0A\00", align 1
@rsa_key = common dso_local global i32 0, align 4
@RSANUMBYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"RSA fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"RSA match!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %2, align 8
  %9 = load i64, i64* @buf, align 8
  %10 = load i32, i32* @MAX_LEN, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fread(i64 %9, i32 1, i32 %10, i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @fclose(i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @buf, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @SHA_DIGEST_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 4
  %30 = call i32 @SHA_hash(i32* %27, i32 %29, i8* %25)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = bitcast i32* %33 to i8*
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = load i32, i32* @RSANUMBYTES, align 4
  %39 = load i32, i32* @SHA_DIGEST_SIZE, align 4
  %40 = call i32 @RSA_verify(i32* @rsa_key, i8* %37, i32 %38, i8* %25, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %0
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %46

44:                                               ; preds = %0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  store i32 0, i32* %1, align 4
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i64, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHA_hash(i32*, i32, i8*) #1

declare dso_local i32 @RSA_verify(i32*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
