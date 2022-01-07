; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-crypt.c_ead_hash_message.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-crypt.c_ead_hash_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ead_msg_encrypted = type { i32 }

@W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ead_msg_encrypted*, i32*, i32)* @ead_hash_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ead_hash_message(%struct.ead_msg_encrypted* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ead_msg_encrypted*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ead_msg_encrypted* %0, %struct.ead_msg_encrypted** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %4, align 8
  %9 = bitcast %struct.ead_msg_encrypted* %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @sha_init(i32* %10)
  %12 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %4, align 8
  %13 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  br label %16

16:                                               ; preds = %19, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @W, align 4
  %23 = call i32 @sha_transform(i32* %20, i8* %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 64
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 64
  store i8* %27, i8** %7, align 8
  br label %16

28:                                               ; preds = %16
  ret void
}

declare dso_local i32 @sha_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sha_transform(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
