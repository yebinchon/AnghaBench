; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_realm.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FF_VOLUMES = common dso_local global i32 0, align 4
@volstr = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@is_current_drive = common dso_local global i32 0, align 4
@myfatfs_fs_fns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @myfatfs_realm(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @FF_VOLUMES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load i32*, i32** @volstr, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strlen(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i32*, i32** @volstr, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @strncmp(i8* %29, i32 %34, i64 %35)
  %37 = icmp eq i64 0, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %21
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32*, i32** @volstr, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i8* %41, i32 %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 58, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = load i8**, i8*** %6, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* @is_current_drive, align 4
  br label %57

57:                                               ; preds = %55, %38
  store i32* @myfatfs_fs_fns, i32** %4, align 8
  br label %76

58:                                               ; preds = %21
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %17

62:                                               ; preds = %17
  br label %71

63:                                               ; preds = %3
  %64 = load i32, i32* @is_current_drive, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @strdup(i8* %67)
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  store i32* @myfatfs_fs_fns, i32** %4, align 8
  br label %76

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* @is_current_drive, align 4
  br label %75

75:                                               ; preds = %74, %71
  store i32* null, i32** %4, align 8
  br label %76

76:                                               ; preds = %75, %66, %57
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
