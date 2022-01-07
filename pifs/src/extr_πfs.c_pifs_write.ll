; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_πfs.c_pifs_write.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_\CF\80fs.c_pifs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32, %struct.fuse_file_info*)* @pifs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pifs_write(i8* %0, i8* %1, i64 %2, i32 %3, %struct.fuse_file_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_file_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fuse_file_info* %4, %struct.fuse_file_info** %11, align 8
  %15 = load %struct.fuse_file_info*, %struct.fuse_file_info** %11, align 8
  %16 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %18, 2
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @lseek(i32 %17, i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %65, %27
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  store i16 0, i16* %14, align 2
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i16, i16* %14, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* @SHRT_MAX, align 2
  %37 = sext i16 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i16, i16* %14, align 2
  %41 = call signext i8 @get_byte(i16 signext %40)
  %42 = sext i8 %41 to i32
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i16, i16* %14, align 2
  %51 = add i16 %50, 1
  store i16 %51, i16* %14, align 2
  br label %33

52:                                               ; preds = %47, %33
  %53 = load %struct.fuse_file_info*, %struct.fuse_file_info** %11, align 8
  %54 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @write(i32 %55, i16* %14, i32 2)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @errno, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %52
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %28

68:                                               ; preds = %28
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %59, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local signext i8 @get_byte(i16 signext) #1

declare dso_local i32 @write(i32, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
