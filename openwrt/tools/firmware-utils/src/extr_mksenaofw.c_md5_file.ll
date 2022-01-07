; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mksenaofw.c_md5_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mksenaofw.c_md5_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @md5_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_file(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @BUF_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 @MD5_Init(i32* %7)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %41

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %28, %22
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @feof(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = bitcast i8* %15 to i8**
  %30 = load i32, i32* @BUF_SIZE, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @fread(i8** %29, i32 1, i32 %30, i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = bitcast i8* %15 to i8**
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @MD5_Update(i32* %7, i8** %33, i64 %34)
  br label %23

36:                                               ; preds = %23
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @MD5_Final(i32* %39, i32* %7)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5_Init(i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @fread(i8**, i32, i32, i32*) #2

declare dso_local i32 @MD5_Update(i32*, i8**, i64) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @MD5_Final(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
