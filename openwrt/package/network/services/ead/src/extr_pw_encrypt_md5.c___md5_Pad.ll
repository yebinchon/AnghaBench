; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_pw_encrypt_md5.c___md5_Pad.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_pw_encrypt_md5.c___md5_Pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MD5Context*)* @__md5_Pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md5_Pad(%struct.MD5Context* %0) #0 {
  %2 = alloca %struct.MD5Context*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.MD5Context* %0, %struct.MD5Context** %2, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i32 0, i32 64)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 -128, i8* %9, align 16
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %11 = load %struct.MD5Context*, %struct.MD5Context** %2, align 8
  %12 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @__md5_Encode(i8* %10, i32* %13, i32 8)
  %15 = load %struct.MD5Context*, %struct.MD5Context** %2, align 8
  %16 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 3
  %21 = and i32 %20, 63
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %22, 56
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 56, %25
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = sub i32 120, %28
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  store i32 %31, i32* %5, align 4
  %32 = load %struct.MD5Context*, %struct.MD5Context** %2, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @__md5_Update(%struct.MD5Context* %32, i8* %33, i32 %34)
  %36 = load %struct.MD5Context*, %struct.MD5Context** %2, align 8
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %38 = call i32 @__md5_Update(%struct.MD5Context* %36, i8* %37, i32 8)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @__md5_Encode(i8*, i32*, i32) #1

declare dso_local i32 @__md5_Update(%struct.MD5Context*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
