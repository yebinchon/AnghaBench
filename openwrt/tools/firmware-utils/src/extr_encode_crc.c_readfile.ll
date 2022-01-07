; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_encode_crc.c_readfile.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_encode_crc.c_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readfile(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %56

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %56

18:                                               ; preds = %13
  store i8* null, i8** %7, align 8
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %52

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fread(i8* %28, i32 1, i32 %30, i32* %31)
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @free(i8* %37)
  store i8* null, i8** %7, align 8
  br label %52

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %36, %26
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %52, %17, %12
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
