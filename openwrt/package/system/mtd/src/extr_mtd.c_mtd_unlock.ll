; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_unlock.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erase_info_user = type { i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unlocking %s ...\0A\00", align 1
@mtdsize = common dso_local global i32 0, align 4
@MEMUNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtd_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_unlock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.erase_info_user, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 58)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %10, %1
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @mtd_check_open(i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  %35 = load i32, i32* @quiet, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %3, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @mtdsize, align 4
  %44 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %3, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MEMUNLOCK, align 4
  %47 = call i32 @ioctl(i32 %45, i32 %46, %struct.erase_info_user* %3)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %15, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @mtd_check_open(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.erase_info_user*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
