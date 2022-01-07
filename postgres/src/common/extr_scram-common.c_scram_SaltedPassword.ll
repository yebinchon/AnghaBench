; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_scram-common.c_scram_SaltedPassword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_scram-common.c_scram_SaltedPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scram_SaltedPassword(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = call i32 @pg_hton32(i32 1)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @scram_HMAC_init(i32* %18, i32* %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @scram_HMAC_update(i32* %18, i8* %33, i32 %34)
  %36 = bitcast i32* %12 to i8*
  %37 = call i32 @scram_HMAC_update(i32* %18, i8* %36, i32 4)
  %38 = call i32 @scram_HMAC_final(i32* %28, i32* %18)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %41 = call i32 @memcpy(i32* %39, i32* %28, i32 %40)
  store i32 2, i32* %13, align 4
  br label %42

42:                                               ; preds = %76, %5
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @scram_HMAC_init(i32* %18, i32* %48, i32 %49)
  %51 = bitcast i32* %28 to i8*
  %52 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %53 = call i32 @scram_HMAC_update(i32* %18, i8* %51, i32 %52)
  %54 = call i32 @scram_HMAC_final(i32* %25, i32* %18)
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %70, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %25, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %75 = call i32 @memcpy(i32* %28, i32* %25, i32 %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_hton32(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @scram_HMAC_init(i32*, i32*, i32) #1

declare dso_local i32 @scram_HMAC_update(i32*, i8*, i32) #1

declare dso_local i32 @scram_HMAC_final(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
