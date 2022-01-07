; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_KeynameKeeperFromTokenW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_KeynameKeeperFromTokenW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeynameKeeper = type { i32, i8* }
%struct.X500TokenW = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Keyname is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.KeynameKeeper*, %struct.X500TokenW*)* @CRYPT_KeynameKeeperFromTokenW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRYPT_KeynameKeeperFromTokenW(%struct.KeynameKeeper* %0, %struct.X500TokenW* %1) #0 {
  %3 = alloca %struct.KeynameKeeper*, align 8
  %4 = alloca %struct.X500TokenW*, align 8
  %5 = alloca i32, align 4
  store %struct.KeynameKeeper* %0, %struct.KeynameKeeper** %3, align 8
  store %struct.X500TokenW* %1, %struct.X500TokenW** %4, align 8
  %6 = load %struct.X500TokenW*, %struct.X500TokenW** %4, align 8
  %7 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.X500TokenW*, %struct.X500TokenW** %4, align 8
  %10 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %15 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %20 = call i32 @CRYPT_FreeKeynameKeeper(%struct.KeynameKeeper* %19)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %24 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %26 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i8* @CryptMemAlloc(i32 %30)
  %32 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %33 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %18, %2
  %35 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %36 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.X500TokenW*, %struct.X500TokenW** %4, align 8
  %39 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i8* %37, i32 %40, i32 %44)
  %46 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %47 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.KeynameKeeper*, %struct.KeynameKeeper** %3, align 8
  %53 = getelementptr inbounds %struct.KeynameKeeper, %struct.KeynameKeeper* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @debugstr_w(i8* %54)
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %55)
  ret void
}

declare dso_local i32 @CRYPT_FreeKeynameKeeper(%struct.KeynameKeeper*) #1

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
