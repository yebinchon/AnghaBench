; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_lzexpand.c_read_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_lzexpand.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzfileheader = type { i8*, i8, i8, i8 }

@LZ_HEADER_LEN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LZERROR_BADINHANDLE = common dso_local global i32 0, align 4
@LZ_MAGIC_LEN = common dso_local global i32 0, align 4
@LZMagic = common dso_local global i32 0, align 4
@LZERROR_UNKNOWNALG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.lzfileheader*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(i32 %0, %struct.lzfileheader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lzfileheader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.lzfileheader* %1, %struct.lzfileheader** %5, align 8
  %9 = load i32, i32* @LZ_HEADER_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i32 @_llseek(i32 %13, i32 0, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @LZERROR_BADINHANDLE, align 4
  store i32 %18, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LZ_HEADER_LEN, align 4
  %22 = call i32 @_lread(i32 %20, i32* %12, i32 %21)
  %23 = load i32, i32* @LZ_HEADER_LEN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %69

26:                                               ; preds = %19
  %27 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %28 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @LZ_MAGIC_LEN, align 4
  %31 = call i32 @memcpy(i8* %29, i32* %12, i32 %30)
  %32 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %33 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %32, i32 0, i32 1
  %34 = load i32, i32* @LZ_MAGIC_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %12, i64 %35
  %37 = call i32 @memcpy(i8* %33, i32* %36, i32 1)
  %38 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %39 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %38, i32 0, i32 2
  %40 = load i32, i32* @LZ_MAGIC_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %12, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @memcpy(i8* %39, i32* %43, i32 1)
  %45 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %46 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %45, i32 0, i32 3
  %47 = load i32, i32* @LZ_MAGIC_LEN, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %12, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = call i32 @memcpy(i8* %46, i32* %50, i32 4)
  %52 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %53 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @LZMagic, align 4
  %56 = load i32, i32* @LZ_MAGIC_LEN, align 4
  %57 = call i64 @memcmp(i8* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %69

60:                                               ; preds = %26
  %61 = load %struct.lzfileheader*, %struct.lzfileheader** %5, align 8
  %62 = getelementptr inbounds %struct.lzfileheader, %struct.lzfileheader* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 65
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @LZERROR_UNKNOWNALG, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %69

68:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %66, %59, %25, %17
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_llseek(i32, i32, i32) #2

declare dso_local i32 @_lread(i32, i32*, i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
