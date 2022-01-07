; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ntlmssp.c_append_unicode_string.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ntlmssp.c_append_unicode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@PROTO_SMB = common dso_local global i32 0, align 4
@AUTO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BannerOutput*, i32, i8*, i8*, i64)* @append_unicode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_unicode_string(%struct.BannerOutput* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.BannerOutput*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @banout_append_char(%struct.BannerOutput* %13, i32 %14, i8 signext 32)
  %16 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %17 = load i32, i32* @PROTO_SMB, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @AUTO_LEN, align 4
  %20 = call i32 @banout_append(%struct.BannerOutput* %16, i32 %17, i8* %18, i32 %19)
  %21 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @banout_append_char(%struct.BannerOutput* %21, i32 %22, i8 signext 61)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %49, %5
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = or i32 %35, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %46 = load i32, i32* @PROTO_SMB, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @banout_append_unicode(%struct.BannerOutput* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, 2
  store i32 %51, i32* %11, align 4
  br label %24

52:                                               ; preds = %24
  ret void
}

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 signext) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_append_unicode(%struct.BannerOutput*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
