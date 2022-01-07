; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_push_token.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_push_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32*, i32*, i32 }

@MAX_FIELD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*, i32*)* @push_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_token(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca %struct.parser*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.parser*, %struct.parser** %3, align 8
  %10 = getelementptr inbounds %struct.parser, %struct.parser* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  store i64 %15, i64* %5, align 8
  %16 = load %struct.parser*, %struct.parser** %3, align 8
  %17 = getelementptr inbounds %struct.parser, %struct.parser* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.parser*, %struct.parser** %3, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.parser*, %struct.parser** %3, align 8
  %23 = getelementptr inbounds %struct.parser, %struct.parser* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MAX_FIELD_LEN, align 8
  %29 = load %struct.parser*, %struct.parser** %3, align 8
  %30 = getelementptr inbounds %struct.parser, %struct.parser* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %28, %32
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load i64, i64* @MAX_FIELD_LEN, align 8
  %37 = load %struct.parser*, %struct.parser** %3, align 8
  %38 = getelementptr inbounds %struct.parser, %struct.parser* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %36, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %35, %2
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.parser*, %struct.parser** %3, align 8
  %45 = getelementptr inbounds %struct.parser, %struct.parser* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  br label %50

50:                                               ; preds = %64, %42
  %51 = load i64, i64* %5, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 32, %60 ]
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load i32*, i32** %7, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.parser*, %struct.parser** %3, align 8
  %75 = getelementptr inbounds %struct.parser, %struct.parser* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
