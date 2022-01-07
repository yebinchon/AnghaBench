; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_is_tar.c_is_tar.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_is_tar.c_is_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@GNUTMAGIC = common dso_local global i32 0, align 4
@TMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @is_tar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_tar(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %union.record*
  store %union.record* %13, %union.record** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %union.record*, %union.record** %6, align 8
  %19 = bitcast %union.record* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @from_oct(i32 8, i32* %21)
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %23 = load %union.record*, %union.record** %6, align 8
  %24 = bitcast %union.record* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  store i32 16, i32* %7, align 4
  br label %26

26:                                               ; preds = %30, %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 255, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %26

38:                                               ; preds = %26
  store i32 8, i32* %7, align 4
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %union.record*, %union.record** %6, align 8
  %45 = bitcast %union.record* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 255, %51
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 256
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %83

64:                                               ; preds = %55
  %65 = load %union.record*, %union.record** %6, align 8
  %66 = bitcast %union.record* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GNUTMAGIC, align 4
  %70 = call i64 @strcmp(i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 3, i32* %3, align 4
  br label %83

73:                                               ; preds = %64
  %74 = load %union.record*, %union.record** %6, align 8
  %75 = bitcast %union.record* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TMAGIC, align 4
  %79 = call i64 @strcmp(i32 %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 2, i32* %3, align 4
  br label %83

82:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %72, %63, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @from_oct(i32, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
