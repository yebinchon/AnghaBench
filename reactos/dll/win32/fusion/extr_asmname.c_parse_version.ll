; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_version.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @parse_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_version(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @wcschr(i8* %20, i8 signext 46)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @wcstol(i8* %27, i32* null, i32 10)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %41, %26
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %44, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i32 @wcstol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
