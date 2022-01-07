; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_generateSecKeys.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_generateSecKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_GUID_LENGTH = common dso_local global i32 0, align 4
@WS_GUID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**)* @generateSecKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSecKeys(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %19, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = call i64 (...) @os_random()
  %15 = trunc i64 %14 to i8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %17
  store i8 %15, i8* %18, align 1
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %10

22:                                               ; preds = %10
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %24 = call i8* @base64Encode(i8* %23, i32 16)
  %25 = load i8**, i8*** %3, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @WS_GUID_LENGTH, align 4
  %27 = add nsw i32 24, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %7, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %31 = load i8**, i8*** %3, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %32, i32 24)
  %34 = getelementptr inbounds i8, i8* %30, i64 24
  %35 = load i8*, i8** @WS_GUID, align 8
  %36 = load i32, i32* @WS_GUID_LENGTH, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  %38 = load i32, i32* @WS_GUID_LENGTH, align 4
  %39 = add nsw i32 24, %38
  %40 = call i8* @cryptoSha1(i8* %30, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @base64Encode(i8* %41, i32 20)
  %43 = load i8**, i8*** %4, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @os_free(i8* %44)
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

declare dso_local i64 @os_random(...) #1

declare dso_local i8* @base64Encode(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @cryptoSha1(i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
