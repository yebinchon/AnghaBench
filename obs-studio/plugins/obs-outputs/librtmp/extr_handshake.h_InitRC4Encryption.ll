; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_handshake.h_InitRC4Encryption.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_handshake.h_InitRC4Encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@RTMP_LOGDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"RC4 Out Key: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"RC4 In Key: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @InitRC4Encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitRC4Encryption(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @RC4_alloc(i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @RC4_alloc(i32* %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @HMAC_setup(i32 %23, i32* %24, i32 128)
  %26 = load i32, i32* %14, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @HMAC_crunch(i32 %26, i32* %27, i32 128)
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i32, i32*, ...) @HMAC_finish(i32 %29, i32* %18, i32 %30)
  %32 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %33 = call i32 @RTMP_Log(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %35 = call i32 @RTMP_LogHex(i32 %34, i32* %18, i32 16)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @RC4_setkey(i32 %37, i32 16, i32* %18)
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @HMAC_setup(i32 %39, i32* %40, i32 128)
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @HMAC_crunch(i32 %42, i32* %43, i32 128)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i32*, ...) @HMAC_finish(i32 %45, i32* %18, i32 %46)
  %48 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %49 = call i32 @RTMP_Log(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %51 = call i32 @RTMP_LogHex(i32 %50, i32* %18, i32 16)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @RC4_setkey(i32 %53, i32 16, i32* %18)
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RC4_alloc(i32*) #2

declare dso_local i32 @HMAC_setup(i32, i32*, i32) #2

declare dso_local i32 @HMAC_crunch(i32, i32*, i32) #2

declare dso_local i32 @HMAC_finish(i32, i32*, ...) #2

declare dso_local i32 @RTMP_Log(i32, i8*) #2

declare dso_local i32 @RTMP_LogHex(i32, i32*, i32) #2

declare dso_local i32 @RC4_setkey(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
