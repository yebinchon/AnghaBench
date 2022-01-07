; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_recv_msg.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Bad packet header\0A\00", align 1
@ISO_PDU_DT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @iso_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @iso_recv_msg(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i32* @tcp_recv(i32* null, i32 4)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %82

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @in_uint8(i32* %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @in_uint8s(i32* %26, i32 1)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @in_uint16_be(i32* %28, i32 %29)
  br label %45

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @in_uint8(i32* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -129
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @next_be(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %82

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 4
  %54 = call i32* @tcp_recv(i32* %51, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32* null, i32** %3, align 8
  br label %82

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 3
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %3, align 8
  br label %82

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @in_uint8s(i32* %64, i32 1)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @in_uint8(i32* %66, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISO_PDU_DT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @in_uint8s(i32* %75, i32 1)
  %77 = load i32*, i32** %6, align 8
  store i32* %77, i32** %3, align 8
  br label %82

78:                                               ; preds = %63
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @in_uint8s(i32* %79, i32 5)
  %81 = load i32*, i32** %6, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %78, %74, %61, %57, %48, %12
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32* @tcp_recv(i32*, i32) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @in_uint16_be(i32*, i32) #1

declare dso_local i32 @next_be(i32*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
