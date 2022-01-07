; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_gen_timestamp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_gen_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gen_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_timestamp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @openvpn_time(i32* null)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @UINT64(i32 -1240428288)
  %7 = add nsw i32 %5, %6
  %8 = call i32 @UINT64(i32 10000000)
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @UINT64(i32 255)
  %12 = and i32 %10, %11
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 8
  %17 = call i32 @UINT64(i32 255)
  %18 = and i32 %16, %17
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 16
  %23 = call i32 @UINT64(i32 255)
  %24 = and i32 %22, %23
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = ashr i32 %27, 24
  %29 = call i32 @UINT64(i32 255)
  %30 = and i32 %28, %29
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 32
  %35 = call i32 @UINT64(i32 255)
  %36 = and i32 %34, %35
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 40
  %41 = call i32 @UINT64(i32 255)
  %42 = and i32 %40, %41
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 48
  %47 = call i32 @UINT64(i32 255)
  %48 = and i32 %46, %47
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = ashr i32 %51, 56
  %53 = call i32 @UINT64(i32 255)
  %54 = and i32 %52, %53
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @openvpn_time(i32*) #1

declare dso_local i32 @UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
